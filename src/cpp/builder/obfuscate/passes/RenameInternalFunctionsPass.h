//
// Created by Claude on 2026/7/4.
//

#ifndef CLANG_MC_RENAMEINTERNALFUNCTIONSPASS_H
#define CLANG_MC_RENAMEINTERNALFUNCTIONSPASS_H

#include "builder/obfuscate/core/ObfuscateContext.h"

namespace obfuscate {

// 把内部（非导出/extern）函数的可读名重写为不透明短名：
// 生成不冲突的新名，迁移 McFunctions 的 key，并整 token 重写所有引用
// （function <name> 与 Movd 的 NBT "<name>"），最后修补 startFunc。
void renameInternalFunctions(ObfuscateContext &ctx);

}  // namespace obfuscate

#endif //CLANG_MC_RENAMEINTERNALFUNCTIONSPASS_H
