//
// Created by Claude on 2026/7/5.
//

#include "Pipeline.h"
#include "ir/IR.h"
#include "ir/opt/passes/ConstantFoldingPass.h"
#include "ir/opt/passes/SimplifyPass.h"
#include "ir/opt/passes/DevirtualizePass.h"
#include "ir/opt/passes/InlinePass.h"
#include "ir/opt/passes/DeadCodePass.h"

namespace opt {

void runOptimization(IR &ir) {
    // 迭代到不动点；上限防止意外的 pass 相互激励导致死循环。
    for (int iter = 0; iter < 8; ++iter) {
        bool changed = false;
        changed |= constantFold(ir);
        changed |= simplifyRegisters(ir);
        changed |= devirtualizeCalls(ir);
        changed |= inlineCalls(ir);
        changed |= eliminateDeadCode(ir);
        if (!changed) {
            break;
        }
    }
}

}  // namespace opt
