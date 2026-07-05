//
// Created by Claude on 2026/7/5.
//

#include "ConstantHidingPass.h"

#include <random>
#include <vector>
#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"  // opt::isTrackable
#include "ir/ops/Mov.h"
#include "ir/ops/Add.h"
#include "ir/values/Register.h"
#include "ir/values/Immediate.h"

namespace obf {

static std::mt19937 &rng() {
    static std::mt19937 engine(std::random_device{}());
    return engine;
}

bool hideConstants(IR &ir) {
    auto &values = ir.getValues();
    bool changed = false;

    auto result = std::vector<OpPtr>();
    result.reserve(values.size());

    for (auto &opPtr : values) {
        auto *mov = dynamic_cast<Mov *>(opPtr.get());
        if (mov == nullptr) {
            result.emplace_back(std::move(opPtr));
            continue;
        }

        const auto reg = INSTANCEOF_SHARED(mov->getLeft(), Register);
        const auto imm = INSTANCEOF_SHARED(mov->getRight(), Immediate);
        // 仅隐藏“写入可跟踪寄存器的立即数加载”。目标为内存(Ptr)或不可跟踪寄存器(rsp/shp/s*)
        // 时跳过——保守，避免触及栈指针/汇编器保留寄存器的语义。
        if (!reg || !imm || !opt::isTrackable(reg.get())) {
            result.emplace_back(std::move(opPtr));
            continue;
        }

        // 拆分：mov reg, A; add reg, B，其中 A + B ≡ K (mod 2^32)。
        // 32 位 scoreboard 的加法环绕与 i32 一致，故还原精确等值。
        const i32 k = static_cast<i32>(imm->getValue());
        std::uniform_int_distribution<i32> dist(INT32_MIN, INT32_MAX);
        i32 b = 0;
        while (b == 0) {  // 保证 B != 0 ⇒ A != K，裸常量确实被隐藏
            b = dist(rng());
        }
        const i32 a = static_cast<i32>(static_cast<u32>(k) - static_cast<u32>(b));

        // 序列自洽：mov 完全覆写 reg 为 A；add 读 reg 旧值(A)得到 K。全程只触及 reg，
        // 不读写任何其它可跟踪寄存器，也不借用 rax（立即数 mov/add 编译为纯 scoreboard 指令）。
        ValuePtr movTarget = reg;
        result.emplace_back(std::make_unique<Mov>(INT_MIN, std::move(movTarget),
                                                  std::make_shared<Immediate>(a)));
        ValuePtr addTarget = reg;
        result.emplace_back(std::make_unique<Add>(INT_MIN, std::move(addTarget),
                                                  std::make_shared<Immediate>(b)));
        changed = true;
    }

    // 无论是否发生隐藏，result 已按序承接了全部 op；values 对应槽位已被 std::move 置空，
    // 故必须整体回写，否则会留下悬空的空 unique_ptr。changed 仅作返回值。
    values = std::move(result);
    return changed;
}

}  // namespace obf
