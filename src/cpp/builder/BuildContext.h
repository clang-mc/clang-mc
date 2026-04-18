//
// Created by xia__mc on 2026/3/7.
//

#ifndef CLANG_MC_BUILDCONTEXT_H
#define CLANG_MC_BUILDCONTEXT_H

#include "utils/Common.h"
#include "ir/values/Register.h"

class BuildContext {
private:
    std::string startFunc;
    std::vector<i32> staticData;
    std::shared_ptr<Register> staticBaseReg;
public:
    explicit BuildContext() noexcept = default;

    DATA(StartFunc, startFunc);

    DATA(StaticData, staticData);

    DATA(StaticBaseReg, staticBaseReg);
};

#endif //CLANG_MC_BUILDCONTEXT_H
