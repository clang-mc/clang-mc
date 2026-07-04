//
// Created by Claude on 2026/7/4.
//

#ifndef CLANG_MC_OBFUSCATOR_H
#define CLANG_MC_OBFUSCATOR_H

#include <vector>
#include "ir/IRCommon.h"
#include "builder/BuildContext.h"
#include "config/Config.h"

// 混淆阶段入口，仿 PostOptimizer。位于 PostOptimizer 之后、Builder 之前运行，
// 仅在启用优化（-O1/-O2）且非调试构建时启用。当前仅做内部函数重命名混淆，
// 通过 pass 化的 obfuscate 流水线保持可扩展。
class Obfuscator {
private:
    std::vector<McFunctions> &mcFunctions;
    BuildContext &context;
    const Config &config;
public:
    explicit Obfuscator(std::vector<McFunctions> &mcFunctions, BuildContext &context, const Config &config) :
        mcFunctions(mcFunctions), context(context), config(config) {
    }

    void obfuscate();
};

#endif //CLANG_MC_OBFUSCATOR_H
