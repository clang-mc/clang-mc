//
// Created by Claude on 2026/7/5.
//

#include "IndirectCallPass.h"

#include <vector>
#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"
#include "ir/ops/Call.h"
#include "ir/ops/Calld.h"
#include "ir/ops/Movd.h"
#include "ir/ops/Label.h"
#include "ir/ops/Jmp.h"

namespace obf {

using opt::analyze;
using opt::Effects;

namespace {

// 可安全 clobber 的 scratch 候选：仅 caller-saved 通用寄存器 r0-r7 / t0-t7。
//
// 为何排除 x0-x15：init_vm.mcfunction 将其定义为 callee-saved（保存寄存器）。
// 某祖先调用帧可能在 x* 中持有跨越当前函数的活跃值，而当前函数（若从不触及该
// x*）天然满足 callee-saved 契约。若我们拿它做 scratch 写入，就会破坏祖先的值。
// caller-saved 寄存器没有这层跨帧存活：任何 call 都会 clobber 它们，故祖先不会
// 在其中保留跨调用的活跃值。rax 是返回值寄存器（语义纠缠），一并排除。
const std::vector<std::shared_ptr<Register>> &scratchCandidates() {
    static const std::vector<std::shared_ptr<Register>> candidates = {
        Registers::R0, Registers::R1, Registers::R2, Registers::R3,
        Registers::R4, Registers::R5, Registers::R6, Registers::R7,
        Registers::T0, Registers::T1, Registers::T2, Registers::T3,
        Registers::T4, Registers::T5, Registers::T6, Registers::T7,
    };
    return candidates;
}

}  // namespace

bool obfuscateColdCalls(IR &ir) {
    auto &values = ir.getValues();
    const size_t n = values.size();
    if (n == 0) return false;

    // ---- 预计算热点分析所需信息（在原始序列上）----

    // (1) 每个可跟踪调用目标的直接调用 fan-in。
    auto fanIn = HashMap<Hash, int>();
    // (2) 标签首次出现下标，用于回边(循环)检测。
    auto labelIndex = HashMap<Hash, size_t>();
    for (size_t i = 0; i < n; ++i) {
        const Op *op = values[i].get();
        if (const auto *call = dynamic_cast<const Call *>(op)) {
            fanIn[call->getLabelHash()]++;
        }
        if (const auto *lbl = dynamic_cast<const Label *>(op)) {
            if (!labelIndex.contains(lbl->getLabelHash())) {
                labelIndex.emplace(lbl->getLabelHash(), i);
            }
        }
    }

    // (3) 热区：位于 hot-root 函数（_start / main / 导出 / api / extern）内的指令。
    //     首个标签之前的前导区(include/static 等)保守视为热。
    auto hotAt = std::vector<char>(n, 1);
    {
        bool hot = true;  // 前导区默认热
        for (size_t i = 0; i < n; ++i) {
            if (const auto *lbl = dynamic_cast<const Label *>(values[i].get())) {
                const auto &name = lbl->getLabel();
                hot = lbl->getExport() || lbl->getExtern() || lbl->getApi()
                      || name == "_start" || name == "main";
            }
            hotAt[i] = hot ? 1 : 0;
        }
    }

    // (4) 循环体：形如“回边”的跳转 [target, jump] 区间内的指令均视为热。
    //     回边 = JmpLike（jmp / 条件跳转）目标标签下标 < 跳转自身下标。
    auto inLoop = std::vector<char>(n, 0);
    for (size_t i = 0; i < n; ++i) {
        const auto *jmp = dynamic_cast<const JmpLike *>(values[i].get());
        if (jmp == nullptr) continue;
        const auto it = labelIndex.find(jmp->getLabelHash());
        if (it == labelIndex.end()) continue;      // 目标非本 IR 具名标签（如 ret 的哨兵）
        const size_t target = it->second;
        if (target >= i) continue;                 // 前向跳转不构成循环
        for (size_t k = target; k <= i; ++k) inLoop[k] = 1;
    }

    // ---- 单次重写，边扫描边维护“当前直线区域已触及的寄存器”----
    // 某 caller-saved 候选若在自最近 boundary/barrier 以来的区域内从未被触及，则它
    // 在调用点不持有任何活跃值（区域起点已由 boundary/barrier 重置，其间未写入它），
    // 且 caller-saved ⇒ 跨我们插入的 calld 之后必死。故写入它是安全的。
    auto touched = HashSet<const Register *>();
    auto result = std::vector<OpPtr>();
    result.reserve(n + 8);
    bool changed = false;

    for (size_t i = 0; i < n; ++i) {
        Op *op = values[i].get();

        if (auto *call = dynamic_cast<Call *>(op)) {
            const Hash h = call->getLabelHash();
            const bool cold = !hotAt[i] && !inLoop[i] && fanIn[h] == 1;

            std::shared_ptr<Register> scratch = nullptr;
            if (cold) {
                for (const auto &cand : scratchCandidates()) {
                    if (!touched.contains(cand.get())) {
                        scratch = cand;
                        break;
                    }
                }
            }

            if (scratch != nullptr) {
                // 改写：movd scratch, label; calld scratch。共享同一寄存器单例。
                ValuePtr movdReg = scratch;
                result.emplace_back(std::make_unique<Movd>(INT_MIN, std::move(movdReg), call->getLabel()));
                ValuePtr calldReg = scratch;
                result.emplace_back(std::make_unique<Calld>(INT_MIN, std::move(calldReg)));
                changed = true;
            } else {
                result.emplace_back(std::move(values[i]));
            }
            touched.clear();  // call / calld 都是屏障，区域到此为止
            continue;
        }

        // 非 Call 指令：先更新区域触及集合，再原样搬运。
        const Effects e = analyze(op);
        if (e.boundary || e.barrier) {
            touched.clear();
        } else {
            if (e.def != nullptr) touched.insert(e.def);
            for (const auto *u : e.uses) touched.insert(u);
            if (e.clobbersScratch) touched.insert(Registers::RAX.get());
        }
        result.emplace_back(std::move(values[i]));
    }

    // 无论是否改写，result 已按序承接了全部（原样/改写后的）op；values 中对应槽位已被
    // std::move 置空，故必须整体回写，否则会留下悬空的空 unique_ptr。changed 仅作返回值。
    values = std::move(result);
    return changed;
}

}  // namespace obf
