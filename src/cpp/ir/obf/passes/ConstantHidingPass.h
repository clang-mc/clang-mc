//
// Created by Claude on 2026/7/5.
//
// 常量隐藏混淆：把 `mov reg, K`（reg 为可跟踪寄存器）改写为运行时等值的算术序列
//   mov reg, A
//   add reg, B          // A + B ≡ K (mod 2^32)
// A/B 随机选取（B != 0，故 A != K），使裸立即数 K 不再直接出现。
//

#ifndef CLANG_MC_OBF_CONSTANT_HIDING_PASS_H
#define CLANG_MC_OBF_CONSTANT_HIDING_PASS_H

class IR;

namespace obf {

// 返回是否发生了改写。
bool hideConstants(IR &ir);

}  // namespace obf

#endif //CLANG_MC_OBF_CONSTANT_HIDING_PASS_H
