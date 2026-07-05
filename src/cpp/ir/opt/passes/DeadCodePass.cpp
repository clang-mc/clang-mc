//
// Created by Claude on 2026/7/5.
//

#include "DeadCodePass.h"

#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"

namespace opt {

bool eliminateDeadCode(IR &ir) {
    bool changed = false;
    auto &values = ir.getValues();

    for (size_t i = 0; i < values.size(); ++i) {
        const Effects e = analyze(values[i].get());

        // 候选：写入某可跟踪寄存器、无副作用、非屏障/边界的纯寄存器写。
        // rax 是 clang-mc 事实上的暂存寄存器，语义纠缠过深，直接排除以确保正确。
        if (e.def == nullptr || isRax(e.def) || e.sideEffect || e.barrier || e.boundary) {
            continue;
        }
        const Register *D = e.def;

        // 前向扫描本直线区域：先被读到则活跃；遇屏障/边界保守视为活跃（寄存器跨界持久）；
        // 若在被读之前被“不读旧值地”重新完全写入，则本指令是死存储。
        bool dead = false;
        for (size_t j = i + 1; j < values.size(); ++j) {
            const Effects ej = analyze(values[j].get());
            if (usesReg(ej, D)) break;          // 被读 -> 活跃
            if (ej.barrier || ej.boundary) break;  // 跨界 -> 保守活跃
            if (ej.def == D && !ej.defReadsOld) {   // 被覆写且未读旧值 -> 死
                dead = true;
                break;
            }
        }

        if (dead) {
            values[i] = std::make_unique<Nop>(INT_MIN);
            changed = true;
        }
    }

    return changed;
}

}  // namespace opt
