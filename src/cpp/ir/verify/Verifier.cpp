//
// Created by xia__mc on 2025/2/19.
//

#include <execution>
#include "Verifier.h"
#include "ir/iops/CallLike.h"
#include "ir/ops/Nop.h"
#include "ir/iops/Special.h"
#include "ir/ops/Static.h"
#include "ir/iops/CmpLike.h"
#include "ir/values/Symbol.h"

void Verifier::verify() {
    currentIR = nullptr;
    currentOp = nullptr;
    errors = 0;
    startFuncIR = nullptr;
    startFuncLabel = nullptr;

    for (auto& ir : irs) {
        [[maybe_unused]] auto _ = handleSingle(ir);  // 如果是C风格include，就不需要考虑这个
    }

    if (errors != 0) {
        throw ParseException(i18nFormat("ir.errors_generated", errors));
    }
}

/**
 * 从start开始找下一个op，没找到返回ops.size()
 */
template<class T>
PURE static inline size_t findNextOp(const std::vector<OpPtr> &ops, size_t start) {
    size_t i = start;
    for (; i < ops.size(); ++i) {
        if (INSTANCEOF(ops[i], T)) {
            break;
        }
    }
    return i;
}

/**
 * 从start开始找下一个非op，没找到返回ops.size()
 */
template<class T>
PURE static inline size_t findNextNonOp(const std::vector<OpPtr> &ops, size_t start) {
    size_t i = start;
    for (; i < ops.size(); ++i) {
        if (!INSTANCEOF(ops[i], T)) {
            break;
        }
    }
    return i;
}

template<class T>
PURE static inline bool isAllOp(const std::vector<OpPtr> &ops, size_t start, size_t end) {
    for (size_t i = start; i < end; ++i) {
        if (!INSTANCEOF(ops[i], T)) {
            return false;
        }
    }
    return true;
}

VerifyResult Verifier::handleSingle(IR &ir) {
    auto &ops = ir.getValues();

    auto definedSymbols = HashMap<Hash, SymbolOp>();
    auto unusedSymbols = HashSet<Hash>();
    auto definedLabels = HashMap<Hash, Label *>();
    definedLabels.emplace(hash(LABEL_RET), &labelRet);
    auto undefinedLabels = HashMap<Hash, std::vector<CallLike *>>();  // label hash, 使用label的地方
    auto labelRefMap = HashMap<Hash, std::vector<Hash>>();    // caller label -> referenced labels
    auto unusedLabels = HashSet<Hash>();

    if (ops.empty()) {
        return VerifyResult(std::move(definedSymbols), std::move(unusedSymbols),
                            std::move(definedLabels), std::move(undefinedLabels), std::move(unusedLabels));
    }

    static const auto reportUnreachable = [&](const size_t start) {
        const auto firstLabel = findNextOp<Label>(ops, start);

        if (warn(i18n("ir.verify.unreachable"))) {
            note(i18n("ir.verify.unreachable_before"), &ir, ops[firstLabel - 1].get());
        }

        // 避免后续编译时预期的代码流非法
        for (size_t i = 0; i < firstLabel; ++i) {
            if (!INSTANCEOF(ops[i], Special)) {
                ops[i] = std::make_unique<Nop>(0);
            }
        }
    };

    currentIR = &ir;
    if (const auto firstLabelIndex = findNextOp<Label>(ops, 0)) {
        currentOp = ops[0].get();
        if (firstLabelIndex == ops.size()) {
            reportUnreachable(0);
        }
        if (!isAllOp<Special>(ops, 0, firstLabelIndex)) {
            reportUnreachable(findNextNonOp<Special>(ops, 0));
        }
    }

    // 先扫描一遍符号
    for (const auto &op : ops) {
        currentOp = op.get();

        if (const auto staticOp = INSTANCEOF(op, Static)) {
            const auto opHash = staticOp->getNameHash();

            if (definedSymbols.contains(opHash)) {
                error(i18nFormat("ir.verify.symbol_redefinition", staticOp->getName()));
                note(i18n("ir.verify.previous_definition"), &ir, definedSymbols[opHash].op);
            } else {
                definedSymbols.emplace(opHash, SymbolOp(staticOp->getName(), staticOp));
                unusedSymbols.emplace(opHash);
            }

            continue;
        }
    }

    bool unreachable = false;
    bool inLabelBlock = false;
    Hash currentLabel = 0;
    for (size_t i = 0; i < ops.size(); ++i) {
        const auto &op = ops[i];
        currentOp = op.get();

        if (INSTANCEOF(op, Static)) {
            continue;
        }

        if (const auto labelOp = INSTANCEOF(op, Label)) {
            unreachable = false;
            const auto opHash = labelOp->getLabelHash();
            inLabelBlock = true;
            currentLabel = opHash;

            if (opHash == hash("_start")) {
                assert(!labelOp->getExport());
                assert(!labelOp->getExtern());
                if (startFuncLabel != nullptr) {
                    error(i18nFormat("ir.verify.label_redefinition", labelOp->getLabel()));
                    note(i18n("ir.verify.previous_definition"), startFuncIR, startFuncLabel);
                } else {
                    startFuncIR = &ir;
                    startFuncLabel = labelOp;
                }
            }

            if (definedLabels.contains(opHash)) {
                error(i18nFormat("ir.verify.label_redefinition", labelOp->getLabel()));
                note(i18n("ir.verify.previous_definition"), &ir, definedLabels[opHash]);
            } else {
                definedLabels.emplace(opHash, labelOp);
            }

            if (!undefinedLabels.erase(opHash) && !labelOp->getExport()) {
                unusedLabels.emplace(opHash);
            }

            if (labelOp->getExtern()) {
                unreachable = true;
            }
            continue;
        }

        if (unreachable) {
            if (warn(i18n("ir.verify.unreachable"))) {
                const auto nextLabel = findNextOp<Label>(ops, i + 1);
                note(i18n("ir.verify.unreachable_before"), &ir, ops[nextLabel - 1].get());
            }
            unreachable = false;  // 防止报一连串的unreachable
        }

        if (const auto callLike = INSTANCEOF(op, CallLike)) {
            const auto label = callLike->getLabelHash();
            if (inLabelBlock) {
                labelRefMap[currentLabel].emplace_back(label);
            }

            if (definedLabels.contains(label)) {
                unusedLabels.erase(label);
                if (INSTANCEOF(op, Jmp) && definedLabels[label]->getExtern()) {
                    if (warn(i18n("ir.verify.jmp_to_extern"))) {
                        note(i18n("ir.verify.previous_definition"), &ir, definedLabels[label]);
                    }
                }
            } else {
                undefinedLabels[label].push_back(callLike);
            }
        }

        if (const auto cmpLike = INSTANCEOF(op, CmpLike)) {
            for (const auto &value : {cmpLike->getLeft(), cmpLike->getRight()}) {
                if (const auto symbol = INSTANCEOF(value, Symbol)) {
                    if (!definedSymbols.contains(symbol->getNameHash())) {
                        error(i18nFormat("ir.verify.undeclared_symbol", symbol->getName()));
                    }
                    unusedSymbols.erase(symbol->getNameHash());
                } else if (const auto symbolPtr = INSTANCEOF(value, SymbolPtr)) {
                    if (!definedSymbols.contains(symbolPtr->getNameHash())) {//
                        error(i18nFormat("ir.verify.undeclared_symbol", symbolPtr->getName()));
                    }
                    unusedSymbols.erase(symbolPtr->getNameHash());
                }
            }
        }

        if (isTerminate(op)) {
            unreachable = true;
        }
    }

    auto lastLabel = ir.getLine(currentOp).lastLabel;
    if (!unreachable && lastLabel != nullptr) {
        error(i18n("ir.verify.never_return"));
        do {
            note(i18n("ir.verify.never_return_inner"), &ir, lastLabel);
            lastLabel = ir.getLine(lastLabel).lastLabel;
        } while (lastLabel != nullptr);
    }

    for (const auto &data: undefinedLabels.values()) {
        for (const auto op: data.second) {
            error(i18nFormat("ir.verify.undeclared_label", op->getLabel()), &ir, op);
        }
    }

    for (const auto &symbol: unusedSymbols) {
        const auto &symbolOp = definedSymbols[symbol];
        warn(i18nFormat("ir.verify.unused_symbol", symbolOp.name), &ir, symbolOp.op);
    }

    // 在 Verifier 末尾做可达分析和删减，确保前面的合法性检查先运行完成。
    {
        Hash previousLabel = 0;
        bool hasPreviousLabel = false;
        bool previousLabelTerminated = true;
        for (const auto &op: ops) {
            if (const auto labelOp = INSTANCEOF(op, Label)) {
                const auto labelHash = labelOp->getLabelHash();
                if (hasPreviousLabel && !previousLabelTerminated) {
                    // label 穿透: 前一个标签块未终结，默认可落入下一个标签块
                    labelRefMap[previousLabel].emplace_back(labelHash);
                }
                previousLabel = labelHash;
                hasPreviousLabel = true;
                previousLabelTerminated = labelOp->getExtern();
                continue;
            }
            if (hasPreviousLabel && isTerminate(op)) {
                previousLabelTerminated = true;
            }
        }

        auto keepLabels = HashSet<Hash>();
        for (const auto &entry: definedLabels.values()) {
            if (entry.second->getExport() || entry.second->getLabelHash() == hash("_start")) {
                keepLabels.emplace(entry.first);
            }
        }
        auto worklist = std::vector<Hash>(keepLabels.begin(), keepLabels.end());
        for (size_t i = 0; i < worklist.size(); ++i) {
            const auto label = worklist[i];
            if (!labelRefMap.contains(label)) {
                continue;
            }
            for (const auto target: labelRefMap[label]) {
                if (!definedLabels.contains(target) || keepLabels.contains(target)) {
                    continue;
                }
                keepLabels.emplace(target);
                worklist.emplace_back(target);
            }
        }

        auto computedUnused = HashSet<Hash>();
        for (const auto &entry: definedLabels.values()) {
            const auto labelHash = entry.first;
            if (labelHash == hash(LABEL_RET)) {
                continue;
            }
            if (!keepLabels.contains(labelHash)) {
                computedUnused.emplace(labelHash);
            }
        }
        unusedLabels = std::move(computedUnused);
    }

    for (const auto &label: unusedLabels) {
        const auto labelOp = definedLabels[label];
        warn(i18nFormat("ir.verify.unused_label", labelOp->getLabel()), &ir, labelOp);
    }

    if (!unusedLabels.empty()) {
        bool removeCurrentLabelBlock = false;
        for (auto &op : ops) {
            if (const auto labelOp = INSTANCEOF(op, Label)) {
                removeCurrentLabelBlock = unusedLabels.contains(labelOp->getLabelHash());
            }
            if (INSTANCEOF(op, Static)) {
                removeCurrentLabelBlock = false;
                continue;
            }

            if (removeCurrentLabelBlock) {
                op = std::make_unique<Nop>(INT_MIN);
            }
        }
    }

    return VerifyResult(std::move(definedSymbols), std::move(unusedSymbols),
                        std::move(definedLabels), std::move(undefinedLabels), std::move(unusedLabels));
}

void Verifier::error(const std::string &message, const IR *ir, const Op *op) {
    logger->error(createIRMessage(*requireNonNull(ir), op, message));
    errors++;
}

bool Verifier::warn(const std::string &message, const IR *ir, const Op *op) {
    if (config.getNoWarn())
        return false;
    if (ir->getLine(op).noWarn)
        return false;

    if (config.getWerror()) {
        error(message, ir, op);
    } else {
        logger->warn(createIRMessage(*requireNonNull(ir), op, message));
    }
    return true;
}

void Verifier::note(const std::string &message, const IR *ir, const Op *op) {
    logger->info(createIRMessage(*requireNonNull(ir), op, message));
}
