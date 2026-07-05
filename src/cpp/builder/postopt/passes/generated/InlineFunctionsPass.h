//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_POSTOPT_INLINEFUNCTIONSPASS_H
#define CLANG_MC_POSTOPT_INLINEFUNCTIONSPASS_H

#include <vector>
#include "ir/IRCommon.h"
#include "builder/BuildContext.h"

namespace postopt {

// 调用内联（mcfunction 文本层整图 pass）：把只被引用一次的内部函数就地并入其唯一调用点，
// 随后删除该函数。仅在“单次引用”成立时才安全——引用计数用整 token 扫描，绝不漏计。
//
// 支持两种调用形态（均要求被调函数非宏、非导出/extern、非 startFunc、且在整个 map 中恰好
// 被提及一次）：
//   1) 尾调用 `return run function ns:B`（且为调用者最后一条非空命令）：`return run function B`
//      语义即“执行 B 并返回其结果”，等价于把 B 原样贴到尾部（含其内部 return），语义守恒。
//   2) 独立调用 `function ns:B`（丢弃返回值）：要求 B 除末尾外无 return（无提前退出），内联时
//      剥除 B 末尾的 return（`return run X` -> `X`；`return <v>` -> 删除），因为调用点本就忽略
//      返回值。
//
// 宏函数不可内联：调用点带 `with`/`{`，或函数体含宏行（行首 `$` 且含 `$(`）即判定为宏并跳过。
// 被 calld 间接调用（名字作为 NBT 字符串 "ns:B" 出现）的函数提及次数 >1（含该字符串），
// 因而不满足“单次引用”，自动被排除。
void inlineFunctions(std::vector<McFunctions> &mcFunctions, BuildContext &buildContext);

}  // namespace postopt

#endif //CLANG_MC_POSTOPT_INLINEFUNCTIONSPASS_H
