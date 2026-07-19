//
// Created by xia__mc on 2025/2/24.
//

#include "OpCommon.h"
#include "i18n/I18n.h"
#include "ir/values/Symbol.h"
#include "ir/values/SymbolPtr.h"
#include "span"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunsafe-buffer-usage"

PURE i32 parseToNumber(std::string_view string) {
    assert(!string.empty());
    string = string::trim(string);

    // 字符
    if (string.front() == '\'' && string.back() == '\'' && string.size() == 3) {
        return static_cast<int32_t>(string[1]);
    }

    // 解析进制
    i32 base = 10;
    size_t offset = 0;
    bool isNegtive;
    if (string.front() == '-') {
        isNegtive = true;
        string = string::trim(string.substr(1));
    } else {
        isNegtive = false;
        if (string.front() == '+') {
            string = string::trim(string.substr(1));
        }
    }

    // 处理前缀
    if (string.size() > 2) {
        if (string.substr(0, 2) == "0x" || string.substr(0, 2) == "0X") {
            base = 16;
            offset = 2;
        } else if (string.substr(0, 2) == "0b" || string.substr(0, 2) == "0B") {
            base = 2;
            offset = 2;
        } else if (string.substr(0, 2) == "0o" || string.substr(0, 2) == "0O") {
            base = 8;
            offset = 2;
        }
    }

    // 处理后缀（如"101b" "173o"）。带进制前缀时，必须按前缀
    // 指定的进制完整校验，不能再将末尾的 b/o 解释为后缀。
    if (offset == 0 && string.back() == 'b' && string.size() > 1) {
        base = 2;
        string = string.substr(0, string.size() - 1);
    } else if (offset == 0 && string.back() == 'o' && string.size() > 1) {
        base = 8;
        string = string.substr(0, string.size() - 1);
    }

    // 解析数字
    i64 result;
    auto [ptr, ec] = std::from_chars(
            string.data() + offset, string.data() + string.size(), result, base);

    if (ec == std::errc::invalid_argument || ptr != string.data() + string.size()) {
        throw ParseException(i18n("ir.op.invalid_number_format"));
    }
    if (ec == std::errc::result_out_of_range) {
        throw ParseException(i18n("ir.op.out_of_range"));
    }

    if (isNegtive) {
        if (result > static_cast<i64>(INT_MAX) + 1) {
            throw ParseException(i18n("ir.op.out_of_range"));
        }
        result = -result;
    } else if (result > INT_MAX) {
        throw ParseException(i18n("ir.op.out_of_range"));
    }
    return static_cast<i32>(result);
}

#pragma clang diagnostic pop

struct PtrData {
    const Register *base;
    const Register *index;
    const i32 scale;
    const i32 displacement;
};

static FORCEINLINE std::string fixStringForPtrData(const std::string_view &string) {
    auto splits = string::split(string, '-');
    if (splits.size() == 1) {
        return std::string(string);
    }

    std::transform(splits.begin(), splits.end(), splits.begin(), string::trim);
    return string::join(splits, "+-");
}

static PtrData parsePtrData(const std::string_view &string) {
    // base
    try {
        return PtrData(Registers::fromName(string).get(), nullptr, 1, 0);
    } catch (const ParseException &) {
    }

    // displacement
    try {
        return PtrData(nullptr, nullptr, 1, parseToNumber(string));
    } catch (const ParseException &) {
    }

    // index * scale
    auto splits = string::split(string, '*');
    std::transform(splits.begin(), splits.end(), splits.begin(), string::trim);
    if (splits.size() == 2) {
        try {
            auto scale = parseToNumber(splits[1]);
            if (scale < 0) {
                throw ParseException(i18n("ir.op.scale_out_of_range"));
            }

            return PtrData(nullptr, Registers::fromName(splits[0]).get(), scale, 0);
        } catch (const ParseException &) {
        }
    }

    auto fixed = fixStringForPtrData(string);
    splits = string::split(fixed, '+');
    std::transform(splits.begin(), splits.end(), splits.begin(), string::trim);
    if (splits.size() == 2) {
        // base + index
        try {
            return PtrData(Registers::fromName(splits[0]).get(),
                           Registers::fromName(splits[1]).get(), 1, 0);
        } catch (const ParseException &) {
        }

        // base + displacement
        try {
            return PtrData(Registers::fromName(splits[0]).get(), nullptr,
                           1, parseToNumber(splits[1]));
        } catch (const ParseException &) {
        }

        // base + index * scale
        auto splits2 = string::split(splits[1], '*');
        std::transform(splits2.begin(), splits2.end(), splits2.begin(), string::trim);
        if (splits2.size() == 2) {
            try {
                auto scale = parseToNumber(splits2[1]);
                if (scale < 0) {
                    throw ParseException(i18n("ir.op.scale_out_of_range"));
                }

                return PtrData(Registers::fromName(splits[0]).get(),
                               Registers::fromName(splits2[0]).get(), scale, 0);
            } catch (const ParseException &) {
            }
        }

        // index * scale + displacement (无 base)
        auto splits3 = string::split(splits[0], '*');
        std::transform(splits3.begin(), splits3.end(), splits3.begin(), string::trim);
        if (splits3.size() == 2) {
            try {
                auto scale = parseToNumber(splits3[1]);
                if (scale < 0) {
                    throw ParseException(i18n("ir.op.scale_out_of_range"));
                }

                return PtrData(nullptr, Registers::fromName(splits3[0]).get(),
                               scale, parseToNumber(splits[1]));
            } catch (const ParseException &) {
            }
        }
    } else if (splits.size() == 3) {
        // base + index + displacement
        try {
            return PtrData(Registers::fromName(splits[0]).get(),
                           Registers::fromName(splits[1]).get(),
                           1, parseToNumber(splits[2]));
        } catch (const ParseException &) {
        }

        // base + index * scale + displacement
        auto splits2 = string::split(splits[1], '*');
        std::transform(splits2.begin(), splits2.end(), splits2.begin(), string::trim);
        if (splits2.size() == 2) {
            try {
                auto scale = parseToNumber(splits2[1]);
                if (scale < 0) {
                    throw ParseException(i18n("ir.op.scale_out_of_range"));
                }

                return PtrData(Registers::fromName(splits[0]).get(),
                               Registers::fromName(splits2[0]).get(),
                               scale, parseToNumber(splits[2]));
            } catch (const ParseException &) {
            }
        }
    }

    throw ParseException(i18n("ir.op.invalid_ptr"));
}


static FORCEINLINE ValuePtr createImmediate(const std::string &string) {
    return std::make_shared<Immediate>(parseToNumber(string));
}

static FORCEINLINE ValuePtr createPtr(const std::string_view &string) {
    const auto data = parsePtrData(string);
    return std::make_shared<Ptr>(data.base, data.index, data.scale, data.displacement);
}

PURE ValuePtr createValue(const LineState &line, const std::string &string) {
    if (string.empty()) {
        throw ParseException(i18n("ir.op.empty_value"));
    }

    if (string.front() == '[' && string.back() == ']') {
        auto fixedStr = string.substr(1, string.length() - 2);
        try {
            return createPtr(fixedStr);
        } catch (const ParseException &e) {
            if (!string::contains(fixedStr, ' ')) {  // TODO 改为白名单isValidSymbol
                return std::make_shared<SymbolPtr>(fixSymbol(line, fixedStr));
            }
            throw e;
        }

    }

    try {
        return Registers::fromName(string);
    } catch (const ParseException &) {
    }
    try {
        return createImmediate(string);
    } catch (const ParseException &) {
    }

    return std::make_shared<Symbol>(fixSymbol(line, string));
}
