//
// Created by Claude on 2026/7/5.
//

#include "InlinePass.h"

#include <vector>
#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"

namespace opt {

namespace {

// 函数体是否为“单直线块、以 ret 结尾”：区间 [start,end) 内除最后一条 Ret 外，
// 不含任何控制流（Label/Jmp/Call/Calld/条件跳转）与 Static。返回末尾 Ret 的下标。
// 不满足则返回 end。
size_t straightLineRetEnd(const std::vector<OpPtr> &values, size_t start, size_t end) {
    if (start >= end) return end;
    // 找到最后一条非 Nop 指令，必须是 Ret
    size_t last = end;
    for (size_t k = end; k > start; --k) {
        if (dynamic_cast<const Nop *>(values[k - 1].get()) == nullptr) { last = k - 1; break; }
    }
    if (last == end || dynamic_cast<const Ret *>(values[last].get()) == nullptr) return end;

    for (size_t k = start; k < last; ++k) {
        const Op *op = values[k].get();
        if (dynamic_cast<const Nop *>(op)) continue;
        if (dynamic_cast<const Ret *>(op)) return end;          // 中途 ret
        if (dynamic_cast<const Label *>(op)) return end;        // 不应出现
        if (dynamic_cast<const JmpLike *>(op)) return end;      // jmp / 条件跳转/返回
        if (dynamic_cast<const Call *>(op)) return end;         // 非叶子
        if (dynamic_cast<const Calld *>(op)) return end;        // 非叶子
        if (dynamic_cast<const Special *>(op)) return end;      // Static 等
    }
    return last;
}

}  // namespace

bool inlineCalls(IR &ir) {
    auto &values = ir.getValues();
    static const Hash retHash = hash(LABEL_RET);

    bool anyChange = false;

    // 反复内联，直到没有可内联的单次调用为止（每次内联都减少调用数，必然收敛）。
    for (size_t guard = 0; guard <= values.size(); ++guard) {
        // 引用计数：按 labelHash 统计 direct call 与其它引用（jmp/movd/条件跳转）。
        auto callCount = HashMap<Hash, int>();
        auto otherRef = HashMap<Hash, int>();
        for (const auto &opPtr : values) {
            if (const auto *cl = dynamic_cast<const CallLike *>(opPtr.get())) {
                const Hash h = cl->getLabelHash();
                if (h == retHash) continue;
                if (dynamic_cast<const Call *>(opPtr.get())) {
                    callCount[h]++;
                } else {
                    otherRef[h]++;
                }
            }
        }

        // 找到一个可内联的调用点
        bool did = false;
        for (size_t i = 0; i < values.size(); ++i) {
            const auto *call = dynamic_cast<const Call *>(values[i].get());
            if (!call) continue;
            const Hash h = call->getLabelHash();
            if (callCount[h] != 1 || otherRef[h] != 0) continue;

            // 定位目标函数的 Label 及其函数体范围
            size_t labelIdx = values.size();
            for (size_t k = 0; k < values.size(); ++k) {
                const auto *lbl = dynamic_cast<const Label *>(values[k].get());
                if (lbl && lbl->getLabelHash() == h) {
                    if (lbl->getExport() || lbl->getExtern()) { labelIdx = values.size(); break; }
                    labelIdx = k;
                    break;
                }
            }
            if (labelIdx == values.size()) continue;  // 目标不在本 IR / 为导出函数

            const size_t bodyStart = labelIdx + 1;
            size_t bodyEnd = values.size();
            for (size_t k = bodyStart; k < values.size(); ++k) {
                if (dynamic_cast<const Label *>(values[k].get())) { bodyEnd = k; break; }
            }

            const size_t retIdx = straightLineRetEnd(values, bodyStart, bodyEnd);
            if (retIdx == bodyEnd) continue;  // 非直线-ret 函数

            // fall-through 守卫：该函数不能被上一个代码块顺序落入。
            // 向前找最近的实义指令，必须是终结指令(ret/jmp)。
            bool fallThrough = true;
            for (size_t k = labelIdx; k > 0; --k) {
                const Op *prev = values[k - 1].get();
                if (dynamic_cast<const Nop *>(prev) || dynamic_cast<const Special *>(prev)) continue;
                fallThrough = !isTerminate(values[k - 1]);
                break;
            }
            if (fallThrough) continue;  // 会被落入或位于文件首块，跳过

            // 执行内联：移动函数体 [bodyStart, retIdx) 到调用点，删除整个函数定义 [labelIdx, bodyEnd)。
            auto inlined = std::vector<OpPtr>();
            for (size_t k = bodyStart; k < retIdx; ++k) {
                inlined.emplace_back(std::move(values[k]));
            }

            auto result = std::vector<OpPtr>();
            result.reserve(values.size() + inlined.size());
            for (size_t k = 0; k < values.size(); ++k) {
                if (k >= labelIdx && k < bodyEnd) continue;  // 丢弃原函数定义
                if (k == i) {
                    for (auto &op : inlined) result.emplace_back(std::move(op));
                    continue;
                }
                result.emplace_back(std::move(values[k]));
            }
            values = std::move(result);

            did = true;
            anyChange = true;
            break;
        }

        if (!did) break;
    }

    return anyChange;
}

}  // namespace opt
