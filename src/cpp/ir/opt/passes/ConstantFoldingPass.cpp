//
// Created by Claude on 2026/7/5.
//

#include "ConstantFoldingPass.h"

#include <optional>
#include "ir/IR.h"
#include "ir/opt/analysis/OpEffects.h"

namespace opt {

// 取一个值的编译期常量：立即数直接取；寄存器则查区域内已知常量表。
static std::optional<i32> constOf(const ValuePtr &v, const HashMap<const Register *, i32> &known) {
    if (const auto &imm = INSTANCEOF_SHARED(v, Immediate)) {
        return static_cast<i32>(imm->getValue());
    }
    if (const auto &reg = INSTANCEOF_SHARED(v, Register)) {
        const auto it = known.find(reg.get());
        if (it != known.end()) {
            return it->second;
        }
    }
    return std::nullopt;
}

static FORCEINLINE i32 wrapAdd(i32 a, i32 b) { return static_cast<i32>(static_cast<u32>(a) + static_cast<u32>(b)); }
static FORCEINLINE i32 wrapSub(i32 a, i32 b) { return static_cast<i32>(static_cast<u32>(a) - static_cast<u32>(b)); }
static FORCEINLINE i32 wrapMul(i32 a, i32 b) { return static_cast<i32>(static_cast<u32>(a) * static_cast<u32>(b)); }

bool constantFold(IR &ir) {
    bool changed = false;
    auto &values = ir.getValues();
    auto known = HashMap<const Register *, i32>();

    for (size_t i = 0; i < values.size(); ++i) {
        Op *op = values[i].get();
        const Effects e = analyze(op);

        if (e.boundary || e.barrier) {
            known.clear();
            continue;
        }

        // --- mov ---
        if (auto *mov = dynamic_cast<Mov *>(op)) {
            const auto &right = mov->getRight();
            const auto &leftReg = INSTANCEOF_SHARED(mov->getLeft(), Register);
            if (leftReg && isTrackable(leftReg.get())) {
                if (const auto c = constOf(right, known)) {
                    if (INSTANCEOF_SHARED(right, Immediate) == nullptr) {
                        mov->getRight() = std::make_shared<Immediate>(*c);  // const-prop 到源
                        changed = true;
                    }
                    known[leftReg.get()] = *c;
                } else {
                    known.erase(leftReg.get());
                }
            }
            if (e.clobbersScratch) known.erase(Registers::RAX.get());
            continue;
        }

        // --- add / sub / mul（div/rem 因 MC 为向下取整除法，语义不同，不折叠）---
        const bool isAdd = dynamic_cast<Add *>(op) != nullptr;
        const bool isSub = dynamic_cast<Sub *>(op) != nullptr;
        const bool isMul = dynamic_cast<Mul *>(op) != nullptr;
        if (isAdd || isSub || isMul) {
            auto *cmp = dynamic_cast<CmpLike *>(op);
            const auto &leftReg = INSTANCEOF_SHARED(cmp->getLeft(), Register);
            if (leftReg && isTrackable(leftReg.get())) {
                Register *R = leftReg.get();
                const auto a = [&]() -> std::optional<i32> {
                    const auto it = known.find(R);
                    return it != known.end() ? std::optional<i32>(it->second) : std::nullopt;
                }();
                const auto b = constOf(cmp->getRight(), known);

                // 代数恒等化简（无需知道 a）
                if (b && ((isAdd && *b == 0) || (isSub && *b == 0) || (isMul && *b == 1))) {
                    values[i] = std::make_unique<Nop>(INT_MIN);
                    changed = true;
                    continue;  // R 值不变，保留 known[R]
                }
                if (isMul && b && *b == 0) {
                    ValuePtr leftCopy = cmp->getLeft();
                    values[i] = std::make_unique<Mov>(INT_MIN, std::move(leftCopy), std::make_shared<Immediate>(0));
                    known[R] = 0;
                    changed = true;
                    continue;
                }

                if (a && b) {
                    const i32 c = isAdd ? wrapAdd(*a, *b) : isSub ? wrapSub(*a, *b) : wrapMul(*a, *b);
                    ValuePtr leftCopy = cmp->getLeft();
                    values[i] = std::make_unique<Mov>(INT_MIN, std::move(leftCopy), std::make_shared<Immediate>(c));
                    known[R] = c;
                    changed = true;
                    continue;
                }

                // 无法完全折叠：至少把已知常量的寄存器源换成立即数
                if (b && INSTANCEOF_SHARED(cmp->getRight(), Immediate) == nullptr) {
                    cmp->getRight() = std::make_shared<Immediate>(*b);
                    changed = true;
                }
                known.erase(R);  // 结果未知
            }
            if (e.clobbersScratch) known.erase(Registers::RAX.get());
            continue;
        }

        // --- 其余指令：通用失效 ---
        if (e.clobbersScratch) known.erase(Registers::RAX.get());
        if (e.def) known.erase(e.def);
    }

    return changed;
}

}  // namespace opt
