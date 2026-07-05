//
// Created by Claude on 2026/7/5.
//
// mcasm(IR)级优化流水线入口。运行在校验之后、编译之前，操作 IR 的 vector<OpPtr>。
//

#ifndef CLANG_MC_OPT_PIPELINE_H
#define CLANG_MC_OPT_PIPELINE_H

class IR;

namespace opt {

// 对单个 IR 依次运行各优化 pass，迭代到不动点。
void runOptimization(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_PIPELINE_H
