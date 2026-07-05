//
// Created by xia__mc on 2026/3/7.
//

#ifndef CLANG_MC_BUILDCONTEXT_H
#define CLANG_MC_BUILDCONTEXT_H

#include <string>
#include "utils/Common.h"
#include "ir/values/Register.h"

class BuildContext {
private:
    std::string startFunc;
    std::vector<i32> staticData;
    std::shared_ptr<Register> staticBaseReg;
    // 编译期累积的内部（非导出/extern）函数 mc 名（ns:path 形式），
    // 供 Obfuscator 识别哪些函数可被重命名混淆（McFunctions 文本层已丢失 export/extern 信息）。
    HashSet<std::string> internalFunctions;
public:
    explicit BuildContext() noexcept = default;

    DATA(StartFunc, startFunc);

    DATA(StaticData, staticData);

    DATA(StaticBaseReg, staticBaseReg);

    DATA(InternalFunctions, internalFunctions);
};

#endif //CLANG_MC_BUILDCONTEXT_H
