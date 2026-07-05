//
// Created by xia__mc on 2025/2/24.
//

#ifndef CLANG_MC_PTR_H
#define CLANG_MC_PTR_H

#include "Value.h"
#include "Register.h"

class Ptr : public Value {
private:
    const Register *base;
    const Register *index;
    const i32 scale;
    const i32 displacement;

    void setPtr(std::ostringstream &result, const std::string &fieldName) const {
        const auto addDisplacementToS0 = [&]() {
            if (displacement != 0) {
                if (displacement > 0) {
                    result << fmt::format("scoreboard players add s0 vm_regs {}\n", displacement);
                } else {
                    result << fmt::format("scoreboard players remove s0 vm_regs {}\n", -displacement);
                }
            }
        };

        if (base == nullptr) {
            assert(scale != 1);

            // s0 = index * scale，随后再加 displacement（位移在缩放之后相加）
            if (displacement == 0) {
                result << fmt::format("scoreboard players operation s0 vm_regs = {} vm_regs\n", index->getName());
                result << fmt::format(
                        "execute store result storage std:vm s2.{} int {} run scoreboard players get s0 vm_regs\n",
                        fieldName, scale);
            } else {
                result << fmt::format("scoreboard players set s0 vm_regs {}\n", scale);
                result << fmt::format(
                        "scoreboard players operation s0 vm_regs *= {} vm_regs\n", index->getName());
                addDisplacementToS0();
                result << fmt::format(
                        "execute store result storage std:vm s2.{} int 1 run scoreboard players get s0 vm_regs\n",
                        fieldName);
            }
        } else if (index == nullptr) {
            assert(base != nullptr);
            assert(scale == 1);
            if (displacement == 0) {
                result << fmt::format(
                        "execute store result storage std:vm s2.{} int 1 run scoreboard players get {} vm_regs\n",
                        fieldName, base->getName());
            } else {
                result << fmt::format("scoreboard players operation s0 vm_regs = {} vm_regs\n", base->getName());
                addDisplacementToS0();
                result << fmt::format(
                        "execute store result storage std:vm s2.{} int 1 run scoreboard players get s0 vm_regs\n",
                        fieldName);
            }
        } else {
            // 标准实现
            result << fmt::format("scoreboard players set s0 vm_regs {}\n", scale);
            result << fmt::format(
                    "scoreboard players operation s0 vm_regs *= {} vm_regs\n", index->getName());
            result << fmt::format("scoreboard players operation s0 vm_regs += {} vm_regs\n", base->getName());
            addDisplacementToS0();
            result << fmt::format(
                    "execute store result storage std:vm s2.{} int 1 run scoreboard players get s0 vm_regs\n",
                    fieldName);
        }
    }

public:
    explicit Ptr(const Register *base, const Register *index, const i32 scale, const i32 displacement) noexcept:
            base(base), index(index), scale(scale), displacement(displacement) {
        assert(!(index == nullptr && scale != 1));
        assert(!(base == nullptr && index != nullptr && scale == 1));
    }

    GETTER_POD(Base, base);

    GETTER_POD(Index, index);

    GETTER_POD(Scale, scale);

    GETTER_POD(Displacement, displacement);

    [[nodiscard]] std::string toString() const noexcept override {
        auto builder = StringBuilder();
        if (base != nullptr) {
            builder.append(base->toString());
        }
        if (index != nullptr) {
            if (!builder.isEmpty()) {
                builder.append(" + ");
            }
            builder.append(index->toString());

            if (scale != 1) {
                builder.append(" * ");
                builder.append(std::to_string(scale));
            }
        }
        if (displacement != 0 || builder.isEmpty()) {
            if (displacement >= 0) {
                if (!builder.isEmpty()) {
                    builder.append(" + ");
                }
                builder.append(std::to_string(displacement));
            } else {
                if (!builder.isEmpty()) {
                    builder.append(" - ");
                }
                builder.append(std::to_string(-displacement));
            }
        }
        return fmt::format("[{}]", builder.toString());
    }

    /**
     * 把指针位置的内存加载到寄存器reg
     */
    [[nodiscard]] std::string loadTo(const Register &reg) const {
        if (base == nullptr && index == nullptr) {
            assert(scale == 1);
            // 内联以改善性能
            return fmt::format("execute store result score {} vm_regs run data get storage std:vm heap[{}]",
                               reg.getName(), displacement);
        }

        auto result = std::ostringstream();

        if (reg == *Registers::RAX) {
            result << "data modify storage std:vm s2 set value {ptr: -1}\n";
            setPtr(result, "ptr");
            result << "function std:_internal/load_heap with storage std:vm s2";
        } else {
            result << fmt::format("data modify storage std:vm s2 set value {{result: \"{}\", ptr: -1}}\n",
                                  reg.getName());
            setPtr(result, "ptr");
            result << "function std:_internal/load_heap_custom with storage std:vm s2";
        }
        return result.str();
    }

    /**
     * 把寄存器reg的值存储到指针位置的内存
     */
    [[nodiscard]] std::string storeFrom(const Register &reg) const {
        if (base == nullptr && index == nullptr) {
            assert(scale == 1);
            // 内联以改善性能
            return fmt::format(
                    "execute store result storage std:vm heap[{}] int 1 run scoreboard players get {} vm_regs",
                    displacement, reg.getName());
        }

        auto result = std::ostringstream();

        if (reg == *Registers::R1) {
            result << "data modify storage std:vm s2 set value {ptr: -1}\n";
            setPtr(result, "ptr");
            result << "function std:_internal/store_heap with storage std:vm s2";
        } else {
            result << fmt::format("data modify storage std:vm s2 set value {{ptr: -1, value: \"{}\"}}\n",
                                  reg.getName());
            setPtr(result, "ptr");
            result << "function std:_internal/store_heap_custom with storage std:vm s2";
        }

        return result.str();
    }

    /**
     * 把立即数存储到指针位置的内存
     */
    [[nodiscard]] std::string storeFrom(const Immediate &immediate) const {
        if (base == nullptr && index == nullptr) {
            assert(scale == 1);
            // 内联以改善性能
            return fmt::format("data modify storage std:vm heap[{}] set value {}",
                               displacement, static_cast<i32>(immediate.getValue()));
        }

        auto result = std::ostringstream();

        result << fmt::format("data modify storage std:vm s2 set value {{ptr: -1, value: {}}}\n",
                              static_cast<i32>(immediate.getValue()));
        setPtr(result, "ptr");
        result << "function std:_internal/store_heap_custom2 with storage std:vm s2";
        return result.str();
    }

    /**
     * 把入参指针位置的内存存储到指针位置的内存
     */
    [[nodiscard]] std::string storeFrom(const Ptr &ptr) const {
        if (base == nullptr && index == nullptr && ptr.base == nullptr && ptr.index == nullptr) {
            assert(scale == 1);
            // 内联以改善性能
            return fmt::format("data modify storage std:vm heap[{}] set from storage std:vm heap[{}]",
                               displacement, ptr.displacement);
        }

        auto result = std::ostringstream();

        result << "data modify storage std:vm s2 set value {to: -1, from: -1}\n";
        setPtr(result, "to");
        ptr.setPtr(result, "from");
        result << "function std:_internal/store_heap_custom3 with storage std:vm s2";
        return result.str();
    }
};

#endif //CLANG_MC_PTR_H
