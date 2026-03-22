//
// Created by xia__mc on 2025/2/27.
//

#ifndef CLANG_MC_CMPLIKE_H
#define CLANG_MC_CMPLIKE_H

#include <utility>

#include "Op.h"
#include "utils/string/StringUtils.h"
#include "ir/OpCommon.h"
#include "ir/values/Symbol.h"
#include "ir/IR.h"
#include "ir/values/SymbolPtr.h"

class CmpLike : public virtual Op {
private:
    std::string prefix;
protected:
    ValuePtr left;
    ValuePtr right;

    template<class Self, class T, class U>
    inline std::string cmp(const Self *self, const std::span<std::string_view> &cmds, T *leftVal, U *rightVal) const {
        auto result = StringBuilder(self->cmp(cmds[0], leftVal, rightVal));
        for (size_t i = 1; i < cmds.size(); ++i) {
            result.append('\n');
            result.append(self->cmp(cmds[i], leftVal, rightVal));
        }
        return result.toString();
    }
public:
    explicit CmpLike(ValuePtr &&left, ValuePtr &&right) noexcept: left(std::move(left)), right(std::move(right)) {
    }

    void withIR(IR *context) override {
        Op::withIR(context);
        auto prefixBuilder = StringBuilder();
        const auto requireStaticOffset = [&](const Hash symbolHash, const std::string& symbolName) -> u32 {
            const auto& map = context->getStaticDataMap();
            if (!map.contains(symbolHash)) {
                throw ParseException(i18nFormat("ir.verify.undeclared_symbol", symbolName));
            }
            return map.at(symbolHash);
        };

        if (const auto &symbol = INSTANCEOF_SHARED(left, Symbol)) {
            left = Registers::S3;
            prefixBuilder.appendLine("scoreboard players operation s3 vm_regs = sbp vm_regs");
            prefixBuilder.appendLine(fmt::format("scoreboard players add s3 vm_regs {}",
                                     requireStaticOffset(symbol->getNameHash(), symbol->getName())));
        } else if (const auto &symbolPtr = INSTANCEOF_SHARED(left, SymbolPtr)) {
            left = std::make_shared<Ptr>(
                    Registers::SBP.get(), nullptr, 1,
                    requireStaticOffset(symbolPtr->getNameHash(), symbolPtr->getName()));
        }

        if (const auto &symbol = INSTANCEOF_SHARED(right, Symbol)) {
            right = Registers::S4;
            prefixBuilder.appendLine("scoreboard players operation s4 vm_regs = sbp vm_regs");
            prefixBuilder.appendLine(fmt::format("scoreboard players add s4 vm_regs {}",
                                                 requireStaticOffset(symbol->getNameHash(), symbol->getName())));
        } else if (const auto &symbolPtr = INSTANCEOF_SHARED(right, SymbolPtr)) {
            right = std::make_shared<Ptr>(
                    Registers::SBP.get(), nullptr, 1,
                    requireStaticOffset(symbolPtr->getNameHash(), symbolPtr->getName()));

        }

        prefix = prefixBuilder.toString();
    };

    [[nodiscard]] std::string compilePrefix() const override {
        return prefix;
    }

    GETTER(Left, left);

    GETTER(Right, right);
};

#endif //CLANG_MC_CMPLIKE_H
