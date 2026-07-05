//
// Created by xia__mc on 2025/2/27.
//

#ifndef CLANG_MC_PEEK_H
#define CLANG_MC_PEEK_H

#include "ir/iops/Op.h"
#include "ir/values/Register.h"
#include "utils/string/StringUtils.h"
#include "utils/Common.h"

class Peek : public Op {
private:
    const Register *reg;
public:
    explicit Peek(const i32 lineNumber, Register *reg) : Op("peek", lineNumber), reg(reg) {
        assert(reg != nullptr);
        if (!reg->getPushable()) {
            throw ParseException(i18n("ir.invalid_op"));
        }
    }

    GETTER_POD(Reg, reg);

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("peek {}", reg->toString());
    }

    [[nodiscard]] std::string compile() const override {
        return fmt::format("data modify storage std:vm s2 set value {{name: \"{}\", rsp: -1}}\n"
                           "execute store result storage std:vm s2.rsp int 1 run scoreboard players get rsp vm_regs\n"
                           "\n"
                           "function std:_internal/peek with storage std:vm s2", reg->getName());
    }
};

#endif //CLANG_MC_PEEK_H
