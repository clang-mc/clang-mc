//
// Created by Claude on 2026/7/5.
//
// mcasm(IR)级混淆阶段入口，仿 Optimizer。运行在 IR 级优化之后、编译之前，
// 由 CLI 开关 --enable-obf 门控（与 -O 等级独立，是 opt-in）。
// 逐个 IR 运行 obf::runObfuscation。语义严格保持，混淆强度次之。
//

#ifndef CLANG_MC_OBFUSCATOR_H
#define CLANG_MC_OBFUSCATOR_H

#include <vector>
#include "ir/IR.h"

class Obfuscator {
private:
    std::vector<IR> &irs;
public:
    explicit Obfuscator(std::vector<IR> &irs) : irs(irs) {
    }

    void obfuscate();
};

#endif //CLANG_MC_OBFUSCATOR_H
