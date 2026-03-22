//
// Created by xia__mc on 2025/3/12.
//

#ifndef CLANG_MC_BUILDER_H
#define CLANG_MC_BUILDER_H


#include "ir/IRCommon.h"
#include "config/Config.h"
#include "BuildContext.h"

class Builder {
private:
    const Config &config;
    std::vector<McFunctions> mcFunctions;
    BuildContext context;
public:
    explicit Builder(const Config &config, std::vector<McFunctions> &&mcFunctions, BuildContext context) :
        config(config), mcFunctions(std::move(mcFunctions)), context(context) {
    }

    void build();

    void link() const;
};


#endif //CLANG_MC_BUILDER_H
