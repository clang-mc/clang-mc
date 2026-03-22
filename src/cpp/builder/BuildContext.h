//
// Created by xia__mc on 2026/3/7.
//

#ifndef CLANG_MC_BUILDCONTEXT_H
#define CLANG_MC_BUILDCONTEXT_H

#include "utils/Common.h"

class BuildContext {
private:
    std::string startFunc;
public:
    explicit BuildContext() noexcept = default;

    DATA(StartFunc, startFunc);
};

#endif //CLANG_MC_BUILDCONTEXT_H
