//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_OPT_SIMPLIFYPASS_H
#define CLANG_MC_OPT_SIMPLIFYPASS_H

class IR;

namespace opt {

// 基于寄存器跟踪的化简：删除自赋值 mov、以及把源操作数替换为其已知常量
// （常量传播），使下游指令拿到立即数（利于 MC 直接 scoreboard 立即数运算）。
bool simplifyRegisters(IR &ir);

}  // namespace opt

#endif //CLANG_MC_OPT_SIMPLIFYPASS_H
