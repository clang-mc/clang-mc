//
// Created by Claude on 2026/7/5.
//

#include "SimplifyPass.h"

#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"

namespace opt {

namespace {

struct Copy {
    const Register *srcReg;  // 源寄存器
    ValuePtr srcVal;         // 指向源寄存器的值（用于替换操作数）
};

// 写入寄存器 W 会使 “W 是某拷贝” 及 “以 W 为源的拷贝” 全部失效。
void invalidate(HashMap<const Register *, Copy> &canon, const Register *W) {
    canon.erase(W);
    for (auto it = canon.begin(); it != canon.end();) {
        if (it->second.srcReg == W) {
            it = canon.erase(it);
        } else {
            ++it;
        }
    }
}

// 若操作数是当前已知拷贝的寄存器，替换为其源寄存器值（拷贝传播）。
bool propagate(ValuePtr &operand, const HashMap<const Register *, Copy> &canon) {
    const auto &reg = INSTANCEOF_SHARED(operand, Register);
    if (!reg) return false;
    const auto it = canon.find(reg.get());
    if (it == canon.end()) return false;
    operand = it->second.srcVal;
    return true;
}

}  // namespace

bool simplifyRegisters(IR &ir) {
    bool changed = false;
    auto &values = ir.getValues();
    auto canon = HashMap<const Register *, Copy>();

    for (size_t i = 0; i < values.size(); ++i) {
        Op *op = values[i].get();
        const Effects e = analyze(op);

        if (e.boundary || e.barrier) {
            canon.clear();
            continue;
        }

        // 1) 把源操作数（读）替换为其拷贝源
        if (auto *jcc = dynamic_cast<JmpLike *>(op)) {
            if (auto *cmp = dynamic_cast<CmpLike *>(op)) {  // Je/Jne/... 的 left/right 都是读
                changed |= propagate(cmp->getLeft(), canon);
                changed |= propagate(cmp->getRight(), canon);
            }
            (void) jcc;
        } else if (auto *cmp = dynamic_cast<CmpLike *>(op)) {  // mov/add/sub/mul/div/rem：右为源
            changed |= propagate(cmp->getRight(), canon);
        }

        // 2) 自赋值删除：mov R, R
        if (auto *mov = dynamic_cast<Mov *>(op)) {
            const auto &l = INSTANCEOF_SHARED(mov->getLeft(), Register);
            const auto &r = INSTANCEOF_SHARED(mov->getRight(), Register);
            if (l && r && l.get() == r.get()) {
                values[i] = std::make_unique<Nop>(INT_MIN);
                changed = true;
                continue;  // R 值不变，canon 无需变动
            }
        }

        // 3) 更新拷贝表
        if (e.clobbersScratch) invalidate(canon, Registers::RAX.get());

        if (auto *mov = dynamic_cast<Mov *>(op)) {
            const auto &l = INSTANCEOF_SHARED(mov->getLeft(), Register);
            if (l && isTrackable(l.get())) {
                Register *A = l.get();
                invalidate(canon, A);  // A 被重写
                const auto &r = INSTANCEOF_SHARED(mov->getRight(), Register);
                if (r && isTrackable(r.get()) && r.get() != A) {
                    canon.emplace(A, Copy{r.get(), mov->getRight()});
                }
            }
            continue;
        }

        if (e.def) invalidate(canon, e.def);
    }

    return changed;
}

}  // namespace opt
