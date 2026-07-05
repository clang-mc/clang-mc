//
// Created by Claude on 2026/7/5.
//
// mcasm(IR)级混淆流水线入口。运行在 IR 级优化之后、编译之前，操作 IR 的 vector<OpPtr>。
// 只在 --enable-obf 时被调用。
//

#ifndef CLANG_MC_OBF_PIPELINE_H
#define CLANG_MC_OBF_PIPELINE_H

class IR;

namespace obf {

// 对单个 IR 依次运行各混淆 pass。混淆是 opt-in、单向的（不迭代到不动点）。
void runObfuscation(IR &ir);

}  // namespace obf

#endif //CLANG_MC_OBF_PIPELINE_H
