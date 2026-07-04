//
// Created by Claude on 2026/7/4.
//

#ifndef CLANG_MC_OBFUSCATECONTEXT_H
#define CLANG_MC_OBFUSCATECONTEXT_H

#include <vector>
#include "ir/IRCommon.h"
#include "builder/BuildContext.h"
#include "config/Config.h"

namespace obfuscate {

// 混淆阶段各 pass 共享的上下文。当前持有编译产物、构建上下文与配置；
// 未来的混淆 pass 若需跨 pass 共享状态，可在此扩展。
struct ObfuscateContext {
    std::vector<McFunctions> &mcFunctions;
    BuildContext &buildContext;
    const Config &config;
};

}  // namespace obfuscate

#endif //CLANG_MC_OBFUSCATECONTEXT_H
