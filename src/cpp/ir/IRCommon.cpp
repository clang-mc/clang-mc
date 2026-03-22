//
// Created by xia__mc on 2025/2/17.
//

#include "IRCommon.h"
#include "ops/Div.h"
#include "ops/Mov.h"
#include "ir/ops/Label.h"
#include "ir/ops/Ret.h"
#include "ir/ops/Jmp.h"
#include "ir/ops/Call.h"
#include "ir/ops/Add.h"
#include "ir/ops/Sub.h"
#include "ir/ops/Mul.h"
#include "ir/ops/Inline.h"
#include "ir/ops/Push.h"
#include "ir/ops/Pop.h"
#include "ir/ops/Peek.h"
#include "ir/ops/Je.h"
#include "ir/ops/Jl.h"
#include "ir/ops/Jg.h"
#include "ir/ops/Jge.h"
#include "ir/ops/Nop.h"
#include "ir/ops/Jle.h"
#include "ir/ops/Jne.h"
#include "ir/ops/Static.h"
#include "ir/ops/Syscall.h"
#include "ir/ops/Movd.h"
#include "ir/ops/Calld.h"
#include "ir/ops/Rem.h"

template<typename T>
static OpPtr createWith2Arg(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 2)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));
    auto rightStr = std::string(string::trim(parts[1]));

    return std::make_unique<T>(INT_MIN, createValue(line, leftStr), createValue(line, rightStr));
}

static inline bool isLocalLabel(const std::string_view &rawLabel) {
    if (string::contains(rawLabel, ' ')) {
        throw ParseException(i18n("ir.invalid_label"));
    }
    return rawLabel[0] == '.';
}

static std::string fixLabel(const LineState &line, const std::string_view &rawLabel) {
    if (isLocalLabel(rawLabel)) {
        if (line.lastLabel == nullptr) {
            throw ParseException(i18n("ir.invalid_local_label"));
        }
        return fmt::format("{}{}", line.lastLabel->getLabel(), rawLabel);  // rawLabel已经包含一个.了
    }
    return std::string(rawLabel);
}

static FORCEINLINE OpPtr createLabel(const LineState &line, const std::string_view &string) {
    assert(!string.empty());
    assert(string[string.length() - 1] == ':');

    auto rawLabel = string.substr(0, string.length() - 1);
    if (rawLabel.empty()) {
        throw ParseException(i18n("ir.invalid_label"));
    }
    auto parts = string::split(rawLabel, ' ', 2);

    if (UNLIKELY(parts.size() > 1)) {  // 带标签的label
        if (isLocalLabel(parts[1])) {
            throw ParseException(i18n("ir.invalid_local_label"));
        }
        SWITCH_STR (parts[0]) {
            CASE_STR("export"):
                return std::make_unique<Label>(INT_MIN, std::string(parts[1]), true, false, false);
            CASE_STR("extern"):
                return std::make_unique<Label>(INT_MIN, std::string(parts[1]), false, true, false);
            default:
                throw ParseException(i18nFormat("ir.invalid_label_identifier", parts[0]));
        }
    }

    return std::make_unique<Label>(
            INT_MIN, fixLabel(line, rawLabel),
            false, false, isLocalLabel(rawLabel));
}

template<typename T>
static OpPtr createCallLike(const LineState &line, const std::string_view &args) {
    return std::make_unique<T>(INT_MIN, fixLabel(line, args));
}

template<typename T>
static OpPtr createConJmp(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 3)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));
    auto rightStr = std::string(string::trim(parts[1]));
    auto label = std::string(string::trim(parts[2]));

    return std::make_unique<T>(INT_MIN, createValue(line, leftStr), createValue(line, rightStr), fixLabel(line, label));
}

template<typename T>
static OpPtr createConJmpZ(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 2)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));
    auto label = std::string(string::trim(parts[1]));

    return std::make_unique<T>(INT_MIN, createValue(line, leftStr), std::make_shared<Immediate>(0), fixLabel(line, label));
}

template<typename T>
static OpPtr createConRet(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 2)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));
    auto rightStr = std::string(string::trim(parts[1]));

    return std::make_unique<T>(INT_MIN, createValue(line, leftStr), createValue(line, rightStr), LABEL_RET);
}

template<typename T>
static OpPtr createConRetZ(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 1)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));

    return std::make_unique<T>(INT_MIN, createValue(line, leftStr), std::make_shared<Immediate>(0), LABEL_RET);
}

static OpPtr createStatic(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ' ', 2);
    if (UNLIKELY(parts.size() != 2)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }
    auto name = parts[0];
    auto dataStr = parts[1];

    std::vector<i32> data;
    if (dataStr.size() > 2 && dataStr.front() == '[' && dataStr.back() == ']') {
        data = stream::map(stream::map(string::split(
                dataStr.substr(1, dataStr.length() - 2), ','
                ),FUNC_WITH(string::trim)
        ),FUNC_WITH(parseToNumber));
    } else if (dataStr.size() > 2 && dataStr.front() == '"' && dataStr.back() == '"') {
        assert(data.empty());
        data.insert(data.begin(), dataStr.begin() + 1, dataStr.end() - 1);
        data.emplace_back(0);  // c string
    } else {
        data = { parseToNumber(dataStr) };
    }

    return std::make_unique<Static>(INT_MIN, fixSymbol(line, name), std::move(data));
}

static OpPtr createMovd(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 2)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto leftStr = std::string(string::trim(parts[0]));
    auto rightStr = std::string(string::trim(parts[1]));

    return std::make_unique<Movd>(INT_MIN, createValue(line, leftStr), rightStr);
}

static OpPtr createCalld(const LineState &line, const std::string_view &args) {
    auto parts = string::split(args, ',');
    if (UNLIKELY(parts.size() != 1)) {
        throw ParseException(i18nFormat("ir.invalid_op", args));
    }

    auto id = std::string(string::trim(parts[0]));
    return std::make_unique<Calld>(INT_MIN, createValue(line, id));
}

PURE OpPtr createOp(const LineState &line, const std::string_view &string) {
    assert(!string.empty());
    if (string[string.length() - 1] == ':') {
        return createLabel(line, string);
    }

    auto parts = string::split(string, ' ', 2);
    assert(!parts.empty());

    auto op = string::toLowerCase(parts[0]);
    auto args = parts.size() == 1 ? "" : parts[1];

    SWITCH_STR (op) {
        CASE_STR("mov"):
            return createWith2Arg<Mov>(line, args);
        CASE_STR("add"):
            return createWith2Arg<Add>(line, args);
        CASE_STR("sub"):
            return createWith2Arg<Sub>(line, args);
        CASE_STR("mul"):
            return createWith2Arg<Mul>(line, args);
        CASE_STR("div"):
            return createWith2Arg<Div>(line, args);
        CASE_STR("rem"):
            return createWith2Arg<Rem>(line, args);
        CASE_STR("ret"):
            return std::make_unique<Ret>(INT_MIN);
        CASE_STR("jmp"):
            return createCallLike<Jmp>(line, args);
        CASE_STR("call"):
            return createCallLike<Call>(line, args);
        CASE_STR("je"):
            return createConJmp<Je>(line, args);
        CASE_STR("jz"):
            return createConJmpZ<Je>(line, args);
        CASE_STR("jne"):
            return createConJmp<Jne>(line, args);
        CASE_STR("jnz"):
            return createConJmpZ<Jne>(line, args);
        CASE_STR("jl"):
            return createConJmp<Jl>(line, args);
        CASE_STR("jg"):
            return createConJmp<Jg>(line, args);
        CASE_STR("jge"):
            return createConJmp<Jge>(line, args);
        CASE_STR("jle"):
            return createConJmp<Jle>(line, args);
        CASE_STR("re"):
            return createConRet<Je>(line, args);
        CASE_STR("rz"):
            return createConRetZ<Je>(line, args);
        CASE_STR("rne"):
            return createConRet<Jne>(line, args);
        CASE_STR("rnz"):
            return createConRetZ<Jne>(line, args);
        CASE_STR("rl"):
            return createConRet<Jl>(line, args);
        CASE_STR("rg"):
            return createConRet<Jg>(line, args);
        CASE_STR("rge"):
            return createConRet<Jge>(line, args);
        CASE_STR("rle"):
            return createConRet<Jle>(line, args);
        CASE_STR("inline"):
            return std::make_unique<Inline>(INT_MIN, std::string(args));
        CASE_STR("push"):
            return std::make_unique<Push>(INT_MIN, Registers::fromName(args).get());
        CASE_STR("pop"):
            return std::make_unique<Pop>(INT_MIN, Registers::fromName(args).get());
        CASE_STR("peek"):
            return std::make_unique<Peek>(INT_MIN, Registers::fromName(args).get());
        CASE_STR("nop"):
            return std::make_unique<Nop>(INT_MIN);
        CASE_STR("static"):
            return createStatic(line, args);
        CASE_STR("syscall"):
            return std::make_unique<Syscall>(INT_MIN);
        CASE_STR("movd"):
            return createMovd(line, args);
        CASE_STR("calld"):
            return createCalld(line, args);
        default: [[unlikely]]
            throw ParseException(i18nFormat("ir.unknown_op", op));
    }
}

PURE bool isTerminate(const OpPtr &op) {
    return INSTANCEOF(op, Ret) || INSTANCEOF(op, Jmp);
}
