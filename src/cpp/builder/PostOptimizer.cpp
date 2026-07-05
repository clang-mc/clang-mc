//
// Created by xia__mc on 2025/3/14.
//

#include "PostOptimizer.h"
#include "builder/postopt/core/Pipeline.h"
#include "builder/postopt/passes/generated/RenameInternalFunctionsPass.h"

void PostOptimizer::doSingleOptimize(std::string &code) {
    postopt::optimizeSingleFunction(code);
}

void PostOptimizer::optimize() {
    // 后优化的行/函数级 pass 仅在 -O2 启用（历史行为不变）。
    if (config.getOptLevel() >= 2) {
        runFunctionPasses();
    }

    // 名称混淆 pass（原独立 Obfuscator，现并入后优化流水线）：
    // 门控与历史一致——optLevel>=1 且非 -g（-g 保留可读名便于调试）。
    if (config.getOptLevel() >= 1 && !config.getDebugInfo()) {
        postopt::renameInternalFunctions(mcFunctions, context, config);
    }
}

void PostOptimizer::runFunctionPasses() {
    for (auto &functionMap: mcFunctions) {
        auto keys = std::vector<Path>();
        keys.reserve(functionMap.size());
        for (const auto &entry: functionMap) {
            keys.push_back(entry.first);
        }

        auto optContext = postopt::PostOptimizeContext(&functionMap);
        for (const auto &key: keys) {
            auto found = functionMap.find(key);
            if (found == functionMap.end()) {
                continue;
            }
            auto view = postopt::FunctionView{found->first, found->second, optContext};
            postopt::optimizeFunction(view);
        }
        optContext.flush();
    }
}
