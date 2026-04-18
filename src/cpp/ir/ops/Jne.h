//
// Created by xia__mc on 2025/2/27.
//

#ifndef CLANG_MC_JNE_H
#define CLANG_MC_JNE_H

#include "ir/iops/Op.h"
#include "ir/iops/JmpLike.h"
#include "ir/iops/CmpLike.h"
#include "utils/string/StringUtils.h"
#include "ir/OpCommon.h"
#include "utils/string/StringBuilder.h"

class Jne : public JmpLike, public CmpLike {
private:
    static inline std::string cmp(const std::string_view &command, Register *left, Register *right) {
        return fmt::format("execute if score {} vm_regs > {} vm_regs run return run {}\nexecute if score {} vm_regs < {} vm_regs run return run {}",
                           left->getName(), right->getName(), command, left->getName(), right->getName(), command);
    }

    static inline std::string cmp(const std::string_view &command, Register *left, Immediate *right) {
        if (!right->getValue().checkAdd(1)) {
            return fmt::format("execute if score {} vm_regs matches ..{} run return run {}",
                                       left->getName(), right->getValue() - 1, command);
        }
        if (!right->getValue().checkSub(1)) {
            return fmt::format("execute if score {} vm_regs matches {}.. run return run {}",
                               left->getName(), right->getValue() + 1, command);
        }

        return fmt::format("execute if score {} vm_regs matches {}.. run return run {}\nexecute if score {} vm_regs matches ..{} run return run {}",
                           left->getName(), right->getValue() + 1, command, left->getName(), right->getValue() - 1, command);
    }

    static inline std::string cmp(const std::string_view &command, Register *left, Ptr *right) {
        return fmt::format("{}\n{}",
                           right->loadTo(*Registers::S1),
                           cmp(command, left, Registers::S1.get()));
    }

    static inline std::string cmp(const std::string_view &command, Immediate *left, Ptr *right) {
        return fmt::format("{}\n{}",
                           right->loadTo(*Registers::S1), cmp(command, Registers::S1.get(), left));
    }

    template<typename T, typename U>
    inline std::string cmp(const JmpMap &jmpMap, T *left, U *right) const {
        return CmpLike::cmp(this, jmpMap.at(labelHash), left, right);
    }

    friend class CmpLike;
public:
    explicit Jne(const i32 lineNumber, ValuePtr &&left, ValuePtr &&right, std::string label) :
            Op("jne", lineNumber), CallLike(std::move(label)), CmpLike(std::move(left), std::move(right)) {
    }

    void withIR(IR *context) override {
        CmpLike::withIR(context);
        if (INSTANCEOF_SHARED(this->left, Ptr) && INSTANCEOF_SHARED(this->right, Ptr)) {
            throw ParseException(i18n("ir.op.memory_operands"));
        }
    }

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("jne {}, {}, {}", left->toString(), right->toString(), label);
    }

    [[nodiscard]] std::string compile() const override {
        return JmpLike::compile();
    }

    [[nodiscard]] std::string compile(const JmpMap &jmpMap) const override {
        assert(jmpMap.contains(labelHash));

        if (const auto &left = INSTANCEOF_SHARED(this->left, Register)) {
            if (const auto &right = INSTANCEOF_SHARED(this->right, Register)) {
                return cmp(jmpMap, left.get(), right.get());
            }
            if (const auto &right = INSTANCEOF_SHARED(this->right, Immediate)) {
                return cmp(jmpMap, left.get(), right.get());
            }
            assert(INSTANCEOF_SHARED(this->right, Ptr));
            return cmp(jmpMap, left.get(), CAST_FAST(this->right, Ptr));
        }
        if (const auto &left = INSTANCEOF_SHARED(this->left, Immediate)) {
            if (const auto &right = INSTANCEOF_SHARED(this->right, Register)) {
                return cmp(jmpMap, right.get(), left.get());
            }
            if (const auto &right = INSTANCEOF_SHARED(this->right, Immediate)) {
                // 两个立即数比较直接编译时计算掉。因为mcfunction原生不支持比较两个立即数。多一条存储到寄存器就因噎废食了。
                if (left->getValue() != right->getValue()) return "";
                return string::join(jmpMap.at(labelHash), '\n');
            }
            assert(INSTANCEOF_SHARED(this->right, Ptr));
            return cmp(jmpMap, left.get(), CAST_FAST(this->right, Ptr));
        }
        assert(INSTANCEOF_SHARED(this->left, Ptr));
        const auto &left = CAST_FAST(this->left, Ptr);
        if (const auto &right = INSTANCEOF_SHARED(this->right, Register)) {
            return cmp(jmpMap, right.get(), left);
        }
        assert(INSTANCEOF_SHARED(this->right, Immediate));
        return cmp(jmpMap, CAST_FAST(this->right, Immediate), left);
    }
};

#endif //CLANG_MC_JNE_H
