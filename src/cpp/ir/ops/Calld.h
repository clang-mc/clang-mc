//
// Created by xia__mc on 2025/2/19.
//

#ifndef CLANG_MC_CALLD_H
#define CLANG_MC_CALLD_H

#include "ir/iops/Op.h"
#include "ir/iops/CallLike.h"
#include "utils/string/StringUtils.h"
#include "ir/OpCommon.h"

class Calld : public Op {
private:
    ValuePtr id;
public:
    explicit Calld(const i32 lineNumber, ValuePtr &&id):
        Op("calld", lineNumber), id(id) {
        if (INSTANCEOF_SHARED(id, Immediate)) {
            throw ParseException(i18n("ir.op.immediate_operand"));
        }
    }

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("calld {}", id->toString());
    }

    [[nodiscard]] std::string compile() const override {
        if (const auto &reg = INSTANCEOF_SHARED(id, Register)) {
            return fmt::format("data modify storage std:vm s1 set value {{uid: -1, str: \"\"}}\n"
                               "execute store result storage std:vm s1.uid int 1 run scoreboard players get {} vm_regs\n"
                               "function std:_internal/calld with storage std:vm s1", reg->getName());
        } else {
            assert(INSTANCEOF_SHARED(id, Ptr));

            return fmt::format("{}\ndata modify storage std:vm s1 set value {{uid: -1, str: \"\"}}\n"
                   "execute store result storage std:vm s1.uid int 1 run scoreboard players get s1 vm_regs\n"
                   "function std:_internal/calld with storage std:vm s1",
                   CAST_FAST(id, Ptr)->loadTo(*Registers::S1));
        }
    }
};

#endif //CLANG_MC_CALLD_H
