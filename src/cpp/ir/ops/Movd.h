//
// Created by xia__mc on 2026/3/4.
//

#ifndef CLANG_MC_MOVD_H
#define CLANG_MC_MOVD_H

#include "ir/iops/Op.h"
#include "ir/iops/CallLike.h"
#include "utils/string/StringUtils.h"
#include "ir/OpCommon.h"

class Movd : public CallLike {
private:
    ValuePtr target;
public:
    explicit Movd(const i32 lineNumber, ValuePtr &&target, std::string label):
            Op("movd", lineNumber), CallLike(std::move(label)), target(target) {
        if (INSTANCEOF_SHARED(target, Immediate)) {
            throw ParseException(i18n("ir.op.immediate_left"));
        }
    }

    GETTER(Target, target);

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("movd {}, {}", target->toString(), label);
    }

    [[nodiscard]] std::string compile() const override {
        return compile(label);
    }

    [[nodiscard]] std::string compile(const LabelMap &labelMap) const {
        assert(labelMap.contains(labelHash));
        return compile(labelMap.at(labelHash));
    }

private:
    [[nodiscard]] std::string compile(const std::string_view resolvedLabel) const {
        auto escapeNbtString = [](const std::string_view value) {
            auto escaped = std::string(value);
            escaped = string::replace(escaped, "\\", "\\\\");
            escaped = string::replace(escaped, "\"", "\\\"");
            return escaped;
        };

        // 直接把引用计算到目标寄存器；目标为内存时使用临时寄存器中转，避免破坏未文档化的 rax。
        const auto &destReg = [&]() -> const Register & {
            if (const auto &reg = INSTANCEOF_SHARED(target, Register)) {
                return *reg;
            }
            assert(INSTANCEOF_SHARED(target, Ptr));
            return *Registers::S1;
        }();
        const auto &destName = destReg.getName();

        const auto escapedLabel = escapeNbtString(resolvedLabel);
        auto result = std::ostringstream();
        result << fmt::format(
                "execute if data storage std:vm str2int_pool.\"{}\" run "
                "execute store result score {} vm_regs run data get storage std:vm str2int_pool.\"{}\" 1\n",
                escapedLabel, destName, escapedLabel);
        result << fmt::format(
                "execute unless data storage std:vm str2int_pool.\"{}\" run "
                "execute store result score {} vm_regs run data get storage std:vm int2str_pool 1\n",
                escapedLabel, destName);
        result << fmt::format(
                "execute unless data storage std:vm str2int_pool.\"{}\" run "
                "data modify storage std:vm int2str_pool append value \"{}\"\n",
                escapedLabel, escapedLabel);
        result << fmt::format(
                "execute unless data storage std:vm str2int_pool.\"{}\" run "
                "execute store result storage std:vm str2int_pool.\"{}\" int 1 run "
                "scoreboard players get {} vm_regs",
                escapedLabel, escapedLabel, destName);

        if (!INSTANCEOF_SHARED(target, Register)) {
            assert(INSTANCEOF_SHARED(target, Ptr));
            result << '\n' << CAST_FAST(target, Ptr)->storeFrom(destReg);
        }

        return result.str();
    }
};


#endif //CLANG_MC_MOVD_H
