//
// Created by Claude on 2026/7/5.
//
// mcasm(IR)级优化/混淆共用的指令效果分析。
//
// 这里给出的模型对 clang-mc VM 保守但正确：vm_regs 是全局、持久、跨函数的状态，
// 任何 call/calld/syscall/inline 都可能读写任意寄存器；内存(Ptr)操作会在 compile()
// 阶段偷偷借用 rax/s* 做中转（见 Movd.h 注释）。因此：
//   - 只对“可跟踪寄存器”(pushable 通用寄存器 rax/r0-7/t0-7/x0-15) 做常量/活跃性推理；
//   - barrier 指令清空一切已知常量、并把所有可跟踪寄存器视为被使用；
//   - clobbersScratch 表示该指令可能顺带破坏 rax（内存类指令），据此让 rax 常量失效。
//

#ifndef CLANG_MC_OPT_OPEFFECTS_H
#define CLANG_MC_OPT_OPEFFECTS_H

#include <vector>
#include "ir/OpCommon.h"
#include "ir/iops/Op.h"
#include "ir/iops/CmpLike.h"
#include "ir/iops/JmpLike.h"
#include "ir/iops/Special.h"
#include "ir/ops/Mov.h"
#include "ir/ops/Add.h"
#include "ir/ops/Sub.h"
#include "ir/ops/Mul.h"
#include "ir/ops/Div.h"
#include "ir/ops/Rem.h"
#include "ir/ops/Label.h"
#include "ir/ops/Ret.h"
#include "ir/ops/Jmp.h"
#include "ir/ops/Call.h"
#include "ir/ops/Calld.h"
#include "ir/ops/Movd.h"
#include "ir/ops/Push.h"
#include "ir/ops/Pop.h"
#include "ir/ops/Peek.h"
#include "ir/ops/Nop.h"
#include "ir/ops/Inline.h"
#include "ir/ops/Syscall.h"
#include "ir/values/Register.h"
#include "ir/values/Immediate.h"
#include "ir/values/Ptr.h"

namespace opt {

// 可安全跟踪的通用寄存器：pushable 的通用寄存器（rax/r0-7/t0-7/x0-15）。
// rsp/shp/s0-s4/sb_* 都是 pushable=false，被排除在外。
FORCEINLINE bool isTrackable(const Register *r) {
    return r != nullptr && r->getPushable();
}

// rax 是 clang-mc 事实上的暂存寄存器：内存类指令 compile() 时可能借它中转。
FORCEINLINE bool isRax(const Register *r) {
    return r == Registers::RAX.get();
}

struct Effects {
    bool boundary = false;      // 区域边界：label / jmp / ret，跨越后需重置区域内状态
    bool branch = false;        // 条件分支（Je/Jne/Jl/...）：有一条通往目标 label 的外向边，落空才继续
    bool barrier = false;       // 破坏所有可跟踪寄存器：call/calld/syscall/inline
    bool sideEffect = false;    // 除写 def 外还有副作用（内存/栈/池/系统调用等），不可被 DCE 删除
    bool clobbersScratch = false; // 可能顺带破坏 rax（内存类指令）
    const Register *def = nullptr;   // 被完全覆写的可跟踪寄存器（否则 nullptr）
    bool defReadsOld = false;        // def 指令同时读取 def 的旧值（算术类）
    std::vector<const Register *> uses; // 被读取的可跟踪寄存器
};

// 收集一个值中被读取的可跟踪寄存器，并标记是否触及内存。
FORCEINLINE void collectValueReads(const ValuePtr &v, std::vector<const Register *> &out, bool &touchesMemory) {
    if (!v) return;
    if (const auto &reg = INSTANCEOF_SHARED(v, Register)) {
        if (isTrackable(reg.get())) out.emplace_back(reg.get());
        return;
    }
    if (const auto &ptr = INSTANCEOF_SHARED(v, Ptr)) {
        touchesMemory = true;
        if (isTrackable(ptr->getBase())) out.emplace_back(ptr->getBase());
        if (isTrackable(ptr->getIndex())) out.emplace_back(ptr->getIndex());
        return;
    }
    // Immediate / Symbol / SymbolPtr：不读取任何通用寄存器（符号在 compile 期才降级到 sb）。
}

FORCEINLINE bool isMemory(const ValuePtr &v) {
    return v && INSTANCEOF_SHARED(v, Ptr) != nullptr;
}

FORCEINLINE Effects analyze(const Op *op) {
    Effects e;

    if (dynamic_cast<const Label *>(op) != nullptr) { e.boundary = true; return e; }
    if (dynamic_cast<const Ret *>(op) != nullptr) { e.boundary = true; return e; }
    if (dynamic_cast<const Jmp *>(op) != nullptr) { e.boundary = true; return e; }
    if (dynamic_cast<const Nop *>(op) != nullptr) { return e; }
    if (dynamic_cast<const Special *>(op) != nullptr) { return e; }  // Static 等：中立

    if (dynamic_cast<const Syscall *>(op) != nullptr) { e.barrier = true; e.sideEffect = true; return e; }
    if (dynamic_cast<const Inline *>(op) != nullptr) {
        // Inline：不透明原始 mcfunction，全屏障
        e.barrier = true; e.sideEffect = true; return e;
    }

    if (const auto *push = dynamic_cast<const Push *>(op)) {
        (void) push;
        e.sideEffect = true; e.clobbersScratch = true;
        if (isTrackable(push->getReg())) e.uses.emplace_back(push->getReg());
        return e;
    }
    if (const auto *pop = dynamic_cast<const Pop *>(op)) {
        e.sideEffect = true; e.clobbersScratch = true;  // pop 改动 rsp
        if (isTrackable(pop->getReg())) e.def = pop->getReg();
        return e;
    }
    if (const auto *peek = dynamic_cast<const Peek *>(op)) {
        e.clobbersScratch = true;  // 只读栈，无副作用；可能借 rax
        if (isTrackable(peek->getReg())) e.def = peek->getReg();
        return e;
    }
    if (const auto *movd = dynamic_cast<const Movd *>(op)) {
        e.sideEffect = true; e.clobbersScratch = true;  // 写 int2str/str2int 池
        const auto &target = movd->getTarget();
        if (const auto &reg = INSTANCEOF_SHARED(target, Register)) {
            if (isTrackable(reg.get())) e.def = reg.get();
        } else {
            collectValueReads(target, e.uses, e.clobbersScratch);  // 目标为内存：读 base/index
        }
        return e;
    }
    if (const auto *calld = dynamic_cast<const Calld *>(op)) {
        e.barrier = true; e.sideEffect = true;
        collectValueReads(calld->getId(), e.uses, e.clobbersScratch);
        return e;
    }
    if (dynamic_cast<const Call *>(op) != nullptr) { e.barrier = true; e.sideEffect = true; return e; }

    // 条件跳转/条件返回（Je/Jne/Jl/Jg/Jge/Jle）：读 left+right，落空可继续。
    // 标记 branch：它有一条通往目标 label 的外向边——落空路径之外的那条边上，
    // 分支前对某寄存器的写仍可能活跃（在目标块被读）。死存储消除必须据此止步，
    // 不能把“落空路径后的重写”当作杀死了分支前的写。
    if (dynamic_cast<const JmpLike *>(op) != nullptr) {
        e.branch = true;
        if (const auto *cmp = dynamic_cast<const CmpLike *>(op)) {
            bool mem = false;
            collectValueReads(cmp->getLeft(), e.uses, mem);
            collectValueReads(cmp->getRight(), e.uses, mem);
            e.clobbersScratch = mem;
        }
        return e;
    }

    // 剩下的 CmpLike：mov / add / sub / mul / div / rem
    if (const auto *cmp = dynamic_cast<const CmpLike *>(op)) {
        const bool isMov = dynamic_cast<const Mov *>(op) != nullptr;
        const auto &left = cmp->getLeft();
        const auto &right = cmp->getRight();
        bool mem = false;
        collectValueReads(right, e.uses, mem);
        if (isMemory(left)) {
            // 内存目标：内存写副作用，读 base/index（以及算术读旧值无意义，因为在内存里）
            e.sideEffect = true;
            collectValueReads(left, e.uses, mem);
        } else if (const auto &reg = INSTANCEOF_SHARED(left, Register)) {
            if (isTrackable(reg.get())) {
                e.def = reg.get();
                if (!isMov) { e.defReadsOld = true; e.uses.emplace_back(reg.get()); }
            } else if (!isMov) {
                // 不可跟踪寄存器(rsp/shp)做算术：读它，但不作为 def
                e.uses.emplace_back(reg.get());
            }
        }
        e.clobbersScratch = mem;
        return e;
    }

    // 兜底：未知指令，保守当作全屏障。
    e.barrier = true; e.sideEffect = true;
    return e;
}

// 判断某可跟踪寄存器是否被该指令读取。
FORCEINLINE bool usesReg(const Effects &e, const Register *r) {
    for (const auto *u : e.uses) if (u == r) return true;
    return false;
}

}  // namespace opt

#endif //CLANG_MC_OPT_OPEFFECTS_H
