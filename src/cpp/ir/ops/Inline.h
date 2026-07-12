//
// Created by xia__mc on 2025/2/27.
//

#ifndef CLANG_MC_INLINE_H
#define CLANG_MC_INLINE_H

#include "ir/iops/Op.h"
#include "utils/string/StringUtils.h"
#include "utils/Common.h"

class Inline : public Op {
private:
    const std::string code;
public:
    explicit Inline(const i32 lineNumber, std::string code) : Op("inline", lineNumber), code(std::move(code)) {
    }

    [[nodiscard]] std::string toString() const noexcept override {
        return fmt::format("inline {}", code);
    }

    [[nodiscard]] std::string compile() const override {
        return code;
    }

    GETTER(Code, code);
};

#endif //CLANG_MC_INLINE_H
