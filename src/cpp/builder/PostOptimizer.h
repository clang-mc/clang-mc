//
// Created by xia__mc on 2025/3/14.
//

#ifndef CLANG_MC_POSTOPTIMIZER_H
#define CLANG_MC_POSTOPTIMIZER_H


#include "ir/IRCommon.h"
#include "builder/BuildContext.h"
#include "config/Config.h"

class PostOptimizer {
private:
    std::vector<McFunctions> &mcFunctions;
    BuildContext &context;
    const Config &config;

    void runFunctionPasses();
public:
    explicit PostOptimizer(std::vector<McFunctions> &mcFunctions, BuildContext &context, const Config &config) :
        mcFunctions(mcFunctions), context(context), config(config) {
    }

    static void doSingleOptimize(std::string &code);

    void optimize();
};


#endif //CLANG_MC_POSTOPTIMIZER_H
