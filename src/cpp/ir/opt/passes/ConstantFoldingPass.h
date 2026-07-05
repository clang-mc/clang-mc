//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_OPT_CONSTANTFOLDINGPASS_H
#define CLANG_MC_OPT_CONSTANTFOLDINGPASS_H

class IR;

namespace opt {

// 常量折叠：区域内跟踪寄存器常量，把输入全为常量的算术折叠为 mov 立即数，
// 并做代数恒等化简（x+0、x-0、x*1 删除；x*0 → mov 0）。
bool constantFold(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_CONSTANTFOLDINGPASS_H
