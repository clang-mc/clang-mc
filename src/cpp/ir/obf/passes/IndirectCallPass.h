//
// Created by Claude on 2026/7/5.
//
// 冷代码间接调用混淆：静态热点分析把代码分为 hot/cold，仅在 cold 处把直接
// `call label` 改写为间接 `movd scratch, label; calld scratch`（与去虚拟化相反）。
// 语义严格等价：calld 经 std:_internal/calld_exec 的 `$function $(str)` 派发，
// 池化字符串即被解析后的函数路径，与 `call label` 完全一致。
//

#ifndef CLANG_MC_OBF_INDIRECT_CALL_PASS_H
#define CLANG_MC_OBF_INDIRECT_CALL_PASS_H

class IR;

namespace obf {

// 返回是否发生了改写。
bool obfuscateColdCalls(IR &ir);

}  // namespace obf

#endif //CLANG_MC_OBF_INDIRECT_CALL_PASS_H
