//
// Created by Claude on 2026/7/5.
//

#include "DevirtualizePass.h"

#include <string>
#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"

namespace opt {

bool devirtualizeCalls(IR &ir) {
    bool changed = false;
    auto &values = ir.getValues();
    // 区域内跟踪：某可跟踪寄存器当前确定由 `movd reg, label` 写入 -> label。
    auto movdLabel = HashMap<const Register *, std::string>();

    for (size_t i = 0; i < values.size(); ++i) {
        Op *op = values[i].get();

        if (auto *calld = dynamic_cast<Calld *>(op)) {
            if (const auto &reg = INSTANCEOF_SHARED(calld->getId(), Register)) {
                const auto it = movdLabel.find(reg.get());
                if (it != movdLabel.end()) {
                    // movd 要求其 label 在本 IR 的 labelMap 中（否则 compile 会 assert 失败），
                    // 故直接 call 一定可解析；且二者最终都只是 `function <target>`，语义等价。
                    values[i] = std::make_unique<Call>(INT_MIN, it->second);
                    changed = true;
                }
            }
            movdLabel.clear();  // calld 是屏障
            continue;
        }

        const Effects e = analyze(op);
        if (e.boundary || e.barrier) {
            movdLabel.clear();
            continue;
        }

        if (auto *movd = dynamic_cast<Movd *>(op)) {
            if (e.clobbersScratch) movdLabel.erase(Registers::RAX.get());
            if (const auto &target = INSTANCEOF_SHARED(movd->getTarget(), Register); target && isTrackable(target.get())) {
                movdLabel[target.get()] = movd->getLabel();
            } else if (e.def) {
                movdLabel.erase(e.def);
            }
            continue;
        }

        if (e.clobbersScratch) movdLabel.erase(Registers::RAX.get());
        if (e.def) movdLabel.erase(e.def);
    }

    return changed;
}

}  // namespace opt
