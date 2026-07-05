//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_POSTOPT_RENAMEINTERNALFUNCTIONSPASS_H
#define CLANG_MC_POSTOPT_RENAMEINTERNALFUNCTIONSPASS_H

#include <vector>
#include "ir/IRCommon.h"
#include "builder/BuildContext.h"
#include "config/Config.h"

namespace postopt {

// 名称混淆（原独立 obfuscate 流水线的唯一 pass，现并入后优化流水线）：
// 把内部（非导出/extern）函数的可读名重写为不透明短名——生成不冲突的新名、
// 迁移 McFunctions 的 key、整 token 重写所有引用（`function <name>` 与 movd 写入
// int2str/str2int 池的 NBT 字符串 "<name>"），最后修补 startFunc。
//
// 对 calld 是正确的：`movd reg, f` 把函数的 mc 名字符串池化取 id，`calld` 运行时
// 反查该字符串再 `function <str>`。本 pass 同时改写 movd 的 NBT 字符串与函数文件路径，
// 二者保持一致，故间接调用仍指向被重命名后的函数。
void renameInternalFunctions(std::vector<McFunctions> &mcFunctions, BuildContext &buildContext, const Config &config);

}  // namespace postopt

#endif //CLANG_MC_POSTOPT_RENAMEINTERNALFUNCTIONSPASS_H
