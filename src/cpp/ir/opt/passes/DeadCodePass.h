//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_OPT_DEADCODEPASS_H
#define CLANG_MC_OPT_DEADCODEPASS_H

class IR;

namespace opt {

// 基于寄存器跟踪的死代码消除：删除“写入某可跟踪寄存器、且该寄存器在同一直线
// 区域内被后续写覆盖前从未被读、其间无 call/副作用”的纯寄存器写指令。
bool eliminateDeadCode(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_DEADCODEPASS_H
