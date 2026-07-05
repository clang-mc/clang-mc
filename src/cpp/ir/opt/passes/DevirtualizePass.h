//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_OPT_DEVIRTUALIZEPASS_H
#define CLANG_MC_OPT_DEVIRTUALIZEPASS_H

class IR;

namespace opt {

// 基于寄存器跟踪的间接调用去虚拟化：若 `calld reg` 的 reg 在区域内确定来自
// `movd reg, label`，则把 calld 替换为直接 `call label`。
bool devirtualizeCalls(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_DEVIRTUALIZEPASS_H
