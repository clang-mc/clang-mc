//
// Created by xia__mc on 2026/3/4.
//

#ifndef CLANG_MC_MOVD_H
#define CLANG_MC_MOVD_H

#include "ir/iops/Op.h"
#include "ir/iops/CallLike.h"
#include "utils/string/StringUtils.h"
#include "ir/OpCommon.h"

class Movd : public Op {
private:
    ValuePtr target;
    std::string label;
public:
    explicit Movd(const i32 lineNumber, ValuePtr &&target, std::string label):
            Op("movd", lineNumber), target(target), label(label) {
        if (INSTANCEOF_SHARED(target, Immediate)) {
            throw ParseException(i18n("ir.op.immediate_left"));
        }
    }

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("movd {}, {}", target->toString(), label);
    }

    [[nodiscard]] std::string compile() const override {
        return fmt::format(
                "execute unless data storage std:vm str2int_pool.{} run "
                "execute store result storage std:vm str2int_pool.{} int 1 run "
                "data get storage std:vm int2str_pool 1\n"
                "execute store result score rax vm_regs run data get storage std:vm int2str_pool 1\n"
                "data modify storage std:vm int2str_pool append value \"{}\"",
                label, label, label);
    }
};


#endif //CLANG_MC_MOVD_H
