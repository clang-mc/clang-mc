//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_OPT_INLINEPASS_H
#define CLANG_MC_OPT_INLINEPASS_H

class IR;

namespace opt {

// mcasm 级调用内联：把对“叶子、单直线块、以 ret 结尾”的内部函数的 call
// 展开为其函数体（去掉尾 ret，重命名其内部 local label 以避免冲突）。
bool inlineCalls(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_INLINEPASS_H
