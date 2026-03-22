//
// Created by xia__mc on 2026/3/4.
//

#ifndef CLANG_MC_REM_H
#define CLANG_MC_REM_H

class Rem : public CmpLike {
private:
    static std::shared_ptr<Register> movToReg(StringBuilder &builder, const ValuePtr &value,
                                              const std::shared_ptr<Register> &target) {
        if (const auto &immediate = INSTANCEOF_SHARED(value, Immediate)) {
            builder.appendLine(fmt::format("scoreboard players set {} vm_regs {}",
                                           target->getName(), static_cast<i32>(immediate->getValue())));
            return target;
        } else if (const auto &ptr = INSTANCEOF_SHARED(value, Ptr)) {
            builder.appendLine(ptr->loadTo(*target));
            return target;
        } else {
            assert(INSTANCEOF_SHARED(value, Register));
            return CAST_SHARED(value, Register);
        }
    }
public:
    explicit Rem(const i32 lineNumber, ValuePtr &&left, ValuePtr &&right) :
            Op("rem", lineNumber), CmpLike(std::move(left), std::move(right)) {
        if (INSTANCEOF_SHARED(left, Immediate)) {
            throw ParseException(i18n("ir.op.immediate_left"));
        }
    }

    void withIR(IR *context) override {
        CmpLike::withIR(context);
        if (INSTANCEOF_SHARED(this->left, Ptr) && INSTANCEOF_SHARED(this->right, Ptr)) {
            throw ParseException(i18n("ir.op.memory_operands"));
        }
    }

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("rem {}, {}", left->toString(), right->toString());
    }

    [[nodiscard]] std::string compile() const override {
        auto builder = StringBuilder();

        std::shared_ptr<Register> leftVal = movToReg(builder, left, Registers::S2);
        std::shared_ptr<Register> rightVal = movToReg(builder, right, Registers::S3);


        builder.append(fmt::format("scoreboard players operation {} vm_regs %= {} vm_regs",
                                   leftVal->getName(), rightVal->getName()));

        if (leftVal != left) {
            builder.append('\n');
            auto leftCopy = left;
            builder.append(Mov(0, std::move(leftCopy), std::move(leftVal)).compile());
        }

        return builder.toString();
    }
};

#endif //CLANG_MC_REM_H
