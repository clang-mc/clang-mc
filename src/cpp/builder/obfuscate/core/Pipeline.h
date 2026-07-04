//
// Created by Claude on 2026/7/4.
//

#ifndef CLANG_MC_OBFUSCATE_PIPELINE_H
#define CLANG_MC_OBFUSCATE_PIPELINE_H

#include "builder/obfuscate/core/ObfuscateContext.h"

namespace obfuscate {

// 依次运行混淆阶段的各个 pass。新增混淆 pass 时在此登记。
void runObfuscation(ObfuscateContext &ctx);

}  // namespace obfuscate

#endif //CLANG_MC_OBFUSCATE_PIPELINE_H
