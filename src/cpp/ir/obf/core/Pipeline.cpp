//
// Created by Claude on 2026/7/5.
//

#include "Pipeline.h"
#include "ir/IR.h"
#include "ir/obf/passes/ConstantHidingPass.h"
#include "ir/obf/passes/IndirectCallPass.h"

namespace obf {

void runObfuscation(IR &ir) {
    // 两种混淆彼此独立、各自单向执行一次即可：
    //   1) 常量隐藏：把 `mov reg, K` 拆成运行时等值的算术序列。
    //   2) 冷代码间接调用：把 cold 直接 call 改写为 movd scratch + calld scratch。
    // 先做间接调用（基于原始直线区域做 scratch 活跃性分析），再做常量隐藏
    // （常量隐藏只在被拆分的 mov 目标寄存器内自洽，不影响调用改写的分析）。
    obfuscateColdCalls(ir);
    hideConstants(ir);
}

}  // namespace obf
