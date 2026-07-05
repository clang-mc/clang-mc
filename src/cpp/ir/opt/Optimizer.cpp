//
// Created by Claude on 2026/7/5.
//

#include "Optimizer.h"
#include "ir/opt/core/Pipeline.h"

void Optimizer::optimize() {
    for (auto &ir : irs) {
        opt::runOptimization(ir);
    }
}
