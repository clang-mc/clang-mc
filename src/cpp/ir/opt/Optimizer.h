//
// Created by Claude on 2026/7/5.
//
// mcasm(IR)级优化阶段入口，仿 PostOptimizer。运行在校验之后、编译之前，
// 仅在启用优化（optLevel>=1）时启用。逐个 IR 运行 opt::runOptimization。
//

#ifndef CLANG_MC_OPTIMIZER_H
#define CLANG_MC_OPTIMIZER_H

#include <vector>
#include "ir/IR.h"

class Optimizer {
private:
    std::vector<IR> &irs;
public:
    explicit Optimizer(std::vector<IR> &irs) : irs(irs) {
    }

    void optimize();
};

#endif //CLANG_MC_OPTIMIZER_H
