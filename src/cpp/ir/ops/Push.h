//
// Created by xia__mc on 2025/2/27.
//

#ifndef CLANG_MC_PUSH_H
#define CLANG_MC_PUSH_H

#include "ir/iops/Op.h"
#include "ir/values/Register.h"
#include "utils/string/StringUtils.h"
#include "utils/Common.h"

class Push : public Op {
private:
    const Register *reg;
public:
    explicit Push(const i32 lineNumber, Register *reg) : Op("push", lineNumber), reg(reg) {
        assert(reg != nullptr);
        if (!reg->getPushable()) {
            throw ParseException(i18n("ir.invalid_op"));
        }
    }

    GETTER_POD(Reg, reg);

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("push {}", reg->toString());
    }

    [[nodiscard]] std::string compile() const override {
        return fmt::format("scoreboard players remove rsp vm_regs 1\n"
                           "data modify storage std:vm s2 set value {{name: \"{}\", rsp: -1}}\n"
                           "execute store result storage std:vm s2.rsp int 1 run scoreboard players get rsp vm_regs\n"
                           "function std:_internal/push with storage std:vm s2", reg->getName());
    }
};

#endif //CLANG_MC_PUSH_H
