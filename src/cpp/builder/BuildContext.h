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
    // 编译期累积的内部（非 export/extern/api）函数 mc 名（ns:path 形式），
    // 供 Obfuscator 识别哪些函数可被重命名混淆（McFunctions 文本层已丢失标签修饰信息）。
    HashSet<std::string> internalFunctions;
    // 编译期累积的 export 函数 mc 名（ns:path 形式）。export 保留书写原名（不重命名），
    // 但对后优化器视为可裁剪/可内联的内部函数；api/extern 为永久根，不登记于此。
    HashSet<std::string> exportedFunctions;
public:
    explicit BuildContext() noexcept = default;

    DATA(StartFunc, startFunc);

    DATA(StaticData, staticData);

    DATA(StaticBaseReg, staticBaseReg);

    DATA(InternalFunctions, internalFunctions);

    DATA(ExportedFunctions, exportedFunctions);
};

#endif //CLANG_MC_BUILDCONTEXT_H
