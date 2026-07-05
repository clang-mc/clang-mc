//
// Created by Claude on 2026/7/5.
//

#ifndef CLANG_MC_POSTOPT_DEADFUNCTIONELIMINATIONPASS_H
#define CLANG_MC_POSTOPT_DEADFUNCTIONELIMINATIONPASS_H

#include <string>
#include <vector>
#include "ir/IRCommon.h"
#include "builder/BuildContext.h"

namespace postopt {

// data/<ns>/function/<path>.mcfunction -> "<ns>:<path>"；非函数路径返回空串。
// 供死函数消除（编译单元内）与链接期整程序 stdlib 剪枝复用同一路径->mc名映射，
// 避免两处逻辑漂移。传入的 Path 允许是相对/绝对，内部按 generic_string 归一化。
std::string refFromMcPath(const Path &path);

// 把 body 中出现的、且属于 names 的函数名 token 收集到 out（去重）。这是安全的过近似：
// 直接调用 `function ns:path`、`schedule ... function ns:path`、以及 movd 池化到 NBT 的
// 字符串 "ns:path" 都以字面量出现在文本中，故文本扫描对可达性是完备的。
void collectFunctionMentions(const std::string &body, const HashSet<std::string> &names,
                             HashSet<std::string> &out);

// 死函数消除（mcfunction 文本层整图 pass）：从根集合出发做可达性分析，删除不可达的
// 内部（非导出/extern）函数。根 = startFunc ∪ {mc 名不在 internalFunctions 中的函数}
// （导出/extern 可被外部调用，永远保留）。
//
// 可达性沿函数体中出现的“已存在函数名 token”传播，同时覆盖三种引用形态：
//   - 直接调用 `function ns:path` 与 `schedule function ns:path`
//   - 间接调用（calld）依赖的 movd 池化 NBT 字符串 "ns:path"
//   - 任意其它文本提及（过近似，宁可多留不可误删）
// 这是安全的过近似：只会少删、绝不误删被引用的函数。数据包唯一的函数标签 load.json
// 在 Builder::build()（本 pass 之后）才生成且锚定 startFunc，故 postopt 阶段的文本
// 扫描对可达性是完备的。
void eliminateDeadFunctions(std::vector<McFunctions> &mcFunctions, BuildContext &buildContext);

}  // namespace postopt

#endif //CLANG_MC_POSTOPT_DEADFUNCTIONELIMINATIONPASS_H
