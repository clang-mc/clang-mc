//
// Created by xia__mc on 2025/2/13.
//

#ifndef CLANG_MC_STRINGUTILS_H
#define CLANG_MC_STRINGUTILS_H

#include <vector>
#include <span>
#include "iostream"
#include "string"
#include "memory"
#include "algorithm"
#include <optional>
#include "StringBuilder.h"

namespace string {
    PURE static inline std::string toString(const std::string &value) {
        return value;
    }

    PURE static inline std::string toString(const std::string_view &value) {
        return std::string(value);
    }

    PURE static inline std::string toString(const char *value) {
        return std::string(value);
    }

    PURE static inline std::string toString(const char value) {
        return std::string(1, value);
    }

    template<typename T>
    requires std::is_arithmetic_v<std::remove_cvref_t<T>>
    PURE static inline std::string toString(T value) {
        return std::to_string(value);
    }

    template<typename T>
    requires requires(const T &value) { value.toString(); }
    PURE static inline std::string toString(const T &value) {
        return value.toString();
    }

    template<typename Str = std::string_view, typename Collection = std::vector<Str>>
    PURE static inline constexpr Collection split(const std::string_view &str, const char delimiter,
                                                                     size_t maxCount = SIZE_MAX) noexcept {
        if (UNLIKELY(str.empty())) {
            return {};
        }
        WARN(maxCount > 1, "Are you sure to split a str with 1 count?");

        auto result = Collection();
        size_t start = 0, end;

        while (LIKELY((end = str.find(delimiter, start)) != Str::npos && maxCount-- > 1)) {
            result.emplace_back(str.substr(start, end - start));
            start = end + 1;
        }

        if (LIKELY(start < str.size())) {
            result.emplace_back(str.substr(start));  // 最后一个部分
        }
        return result;
    }

    PURE static inline constexpr std::string_view trim(const std::string_view &str) noexcept {
        if (UNLIKELY(str.empty())) {
            return "";
        }

        const auto start = str.find_first_not_of(' ');
        if (start == std::string_view::npos) {
            if (str[0] == ' ') {
                return "";
            }
            return str;
        }

        const auto end = str.find_last_not_of(' ');
        return str.substr(start, end - start + 1);
    }

    PURE static inline constexpr std::string_view removeFromFirst(const std::string_view &str,
                                                                  const std::string_view &substr) noexcept {
        if (UNLIKELY(str.empty())) {
            return "";
        }
        if (UNLIKELY(substr.empty())) {
            return "";
        }

        char first = substr.front();
        for (size_t i = 0; i < str.length(); ++i) {
            if (str[i] == first) {
                if (str.substr(i, substr.length()) == substr) {
                    return str.substr(0, i);
                }
            }
        }
        return str;
    }

    PURE static inline constexpr std::string_view removeFromLast(const std::string_view &str,
                                                                  const std::string_view &substr) noexcept {
        if (UNLIKELY(str.empty())) {
            return "";
        }
        if (UNLIKELY(substr.empty())) {
            return "";
        }

        auto subLength = substr.length();
        char last = substr.back();
        size_t i = str.length() - 1;
        while (i > 0) {
            i--;
            if (str[i] == last) {
                if (str.substr(i - subLength + 1, substr.length()) == substr) {
                    return str.substr(0, i);
                }
            }
        }
        return str;
    }

    PURE static inline constexpr std::string_view removeComment(const std::string_view &line) noexcept {
        bool inString = false;
        bool inChar = false;
        bool isEscaped = false;
        for (size_t i = 0; i < line.size(); ++i) {
            const char c = line[i];
            if (isEscaped) {
                isEscaped = false;
                continue;
            }

            switch (c) {
                case '\\':
                    isEscaped = true; // 标记下一个字符被转义
                    break;
                case '"':
                    if (!inChar) {
                        // Toggle inString when we encounter a string literal
                        inString = !inString;
                    }
                    break;
                case '\'':
                    if (!inString) {
                        // Toggle inChar when we encounter a character literal
                        inChar = !inChar;
                    }
                    break;
                default:
                    bool hasNextChar = i < line.size() - 1;
                    switch (c) {
                        case '/':
                            if (!hasNextChar || line[i + 1] != '/') break;
                            FMT_FALLTHROUGH;
                        case ';':
                            // Found comment, return the substring up to this point
                            return line.substr(0, i);
                        default:
                            break;
                    }
                    break;
            }
        }
        // If no comment found, return the full line
        return line;
    }

    template<typename T>
    PURE static inline constexpr bool contains(const std::string_view &str, const T &substr) noexcept {
        return str.find(substr) != std::string_view::npos;
    }

    PURE static inline constexpr std::string &replaceFast(std::string &str, const char from, const char to) {
        if (UNLIKELY(from == to)) {
            return str;
        }

        for (char &c: str) {
            if (UNLIKELY(c == from)) {
                c = to;
            }
        }
        return str;
    }

    PURE static inline constexpr std::string replace(std::string str, const char from, const char to) {
        return replaceFast(str, from, to);
    }

    PURE static inline std::string replace(const std::string_view &str,
                                                  const std::string_view &from, const std::string_view &to) {
        if (UNLIKELY(str.empty() || from.empty())) {
            return std::string(str);
        }

        auto result = std::ostringstream();
        size_t start = 0, end;

        while (LIKELY((end = str.find(from, start)) != std::string_view::npos)) {
            result << str.substr(start, end - start) << to;
            start = end + from.size();
        }

        result << str.substr(start);  // 追加剩余部分
        return result.str();
    }

    PURE static inline bool replaceFast(const std::string_view &str, std::string &out,
                                        const std::string_view &from, const std::string_view &to) {
        if (UNLIKELY(str.empty() || from.empty())) {
            return false;
        }

        auto result = std::ostringstream();
        size_t start = 0, end;

        while (LIKELY((end = str.find(from, start)) != std::string_view::npos)) {
            result << str.substr(start, end - start) << to;
            start = end + from.size();
        }

        if (start == 0) {
            return false;
        }
        result << str.substr(start);  // 追加剩余部分

        out = result.str();
        return true;
    }

    PURE static inline constexpr size_t count(const std::string_view &str, const char ch) {
        size_t result = 0;

        for (const char c: str) {
            if (UNLIKELY(c == ch)) {
                result++;
            }
        }

        return result;
    }

    PURE static inline constexpr char toAsciiLower(const char c) noexcept {
        return c >= 'A' && c <= 'Z' ? static_cast<char>(c - 'A' + 'a') : c;
    }

    PURE static inline constexpr bool isMCNamespaceChar(const char c) noexcept {
        return (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9')
               || c == '_' || c == '-' || c == '.';
    }

    PURE static inline constexpr bool isMCFunctionPathChar(const char c) noexcept {
        return isMCNamespaceChar(c) || c == '/';
    }

    PURE static inline bool equalsIgnoreCase(const std::string_view left,
                                              const std::string_view right) noexcept {
        if (left.size() != right.size()) {
            return false;
        }
        for (size_t i = 0; i < left.size(); ++i) {
            if (toAsciiLower(left[i]) != toAsciiLower(right[i])) {
                return false;
            }
        }
        return true;
    }

    // Windows treats these names (also with an extension) as device files.  They
    // must not become a component under data/<namespace>/function on any host.
    PURE static inline bool isWindowsReservedDeviceName(const std::string_view segment) noexcept {
        const auto base = segment.substr(0, segment.find('.'));
        if (base.empty()) {
            return false;
        }
        if (equalsIgnoreCase(base, "con") || equalsIgnoreCase(base, "prn")
            || equalsIgnoreCase(base, "aux") || equalsIgnoreCase(base, "nul")) {
            return true;
        }
        if (base.size() != 4 || base[3] < '1' || base[3] > '9') {
            return false;
        }
        const auto first = toAsciiLower(base[0]);
        return (first == 'c' && toAsciiLower(base[1]) == 'o' && toAsciiLower(base[2]) == 'm')
               || (first == 'l' && toAsciiLower(base[1]) == 'p' && toAsciiLower(base[2]) == 't');
    }

    PURE static inline bool isSafeMCFunctionPathSegment(const std::string_view segment) noexcept {
        return !segment.empty() && segment != "." && segment != ".."
               && segment.back() != '.' && !isWindowsReservedDeviceName(segment);
    }

    PURE static inline bool isValidMCNamespaceName(const std::string_view str) noexcept {
        return isSafeMCFunctionPathSegment(str)
               && std::ranges::all_of(str.begin(), str.end(), isMCNamespaceChar);
    }

    // Namespace values supplied by -N retain the historical minecraft ban.
    // Explicit resource locations use isValidMCNamespaceName instead.
    PURE static inline bool isValidMCNamespace(const std::string_view str) noexcept {
        return str != "minecraft" && isValidMCNamespaceName(str);
    }

    PURE static inline bool isValidMCFunctionPath(const std::string_view str) noexcept {
        if (str.empty()
            || !std::ranges::all_of(str.begin(), str.end(), isMCFunctionPathChar)) {
            return false;
        }

        size_t start = 0;
        while (true) {
            const auto end = str.find('/', start);
            if (!isSafeMCFunctionPathSegment(str.substr(start, end - start))) {
                return false;
            }
            if (end == std::string_view::npos) {
                return true;
            }
            start = end + 1;
        }
    }

    // A namespace prefix may end in '/', because a normal internal function
    // name is appended after it.  Empty means namespace root.
    PURE static inline bool isValidMCFunctionPathPrefix(std::string_view str) noexcept {
        if (str.empty()) {
            return true;
        }
        if (str.back() == '/') {
            str.remove_suffix(1);
        }
        return !str.empty() && isValidMCFunctionPath(str);
    }

    struct MCFunctionResourceLocation {
        std::string_view namespaceName;
        std::string_view functionPath;
    };

    // Parse a user-visible function resource location.  Minecraft's character
    // grammar alone permits path spellings that are unsafe to materialize on
    // Windows, so this is intentionally stricter than ResourceLocation.
    PURE static inline std::optional<MCFunctionResourceLocation>
    parseMCFunctionResourceLocation(const std::string_view value) noexcept {
        const auto separator = value.find(':');
        if (separator == std::string_view::npos
            || value.find(':', separator + 1) != std::string_view::npos) {
            return std::nullopt;
        }

        const auto namespaceName = value.substr(0, separator);
        const auto functionPath = value.substr(separator + 1);
        if (!isValidMCNamespaceName(namespaceName) || !isValidMCFunctionPath(functionPath)) {
            return std::nullopt;
        }
        return MCFunctionResourceLocation{namespaceName, functionPath};
    }

    PURE static inline std::optional<Path>
    buildPathFromMCFunctionResourceLocation(const std::string_view value) {
        const auto location = parseMCFunctionResourceLocation(value);
        if (!location) {
            return std::nullopt;
        }

        auto result = Path("data") / std::string(location->namespaceName) / "function";
        size_t start = 0;
        while (true) {
            const auto end = location->functionPath.find('/', start);
            result /= std::string(location->functionPath.substr(start, end - start));
            if (end == std::string_view::npos) {
                break;
            }
            start = end + 1;
        }
        result += ".mcfunction";
        return result;
    }

    // 把任意标签名修饰为合法的 mcfunction 资源路径片段：小写化，保留 [a-z0-9_.-] 与 '/'，
    // 其余字符替换为 '_'。仅做字符合法化，不负责唯一性（唯一性由调用方保证）。
    PURE static inline std::string legalizeMCPathSegment(const std::string_view segment) {
        std::string result;
        result.reserve(std::max<size_t>(segment.size(), 1));
        for (const char c: segment) {
            if (isMCNamespaceChar(c)) {
                result += c;
            } else if (c >= 'A' && c <= 'Z') {
                result += toAsciiLower(c);
            } else {
                result += '_';
            }
        }

        if (result.empty()) {
            result = "_";
        }
        while (result.back() == '.') {
            result.back() = '_';
        }
        if (isWindowsReservedDeviceName(result)) {
            result.insert(result.begin(), '_');
        }
        return result;
    }

    // Ordinary ISA labels are deliberately permissive.  Preserve their slash
    // hierarchy, but turn every component into a safe resource-path component
    // instead of rejecting the source label.
    PURE static inline std::string legalizeMCPath(const std::string_view str) {
        std::string result;
        size_t start = 0;
        while (true) {
            const auto end = str.find('/', start);
            if (!result.empty()) {
                result += '/';
            }
            result += legalizeMCPathSegment(str.substr(start, end - start));
            if (end == std::string_view::npos) {
                return result;
            }
            start = end + 1;
        }
    }

    PURE static inline constexpr std::string toLowerCase(std::string str) noexcept {
        for (auto &c: str) {
            c = (char) tolower(c);
        }
        return str;
    }

    PURE static inline constexpr std::string toLowerCase(const std::string_view &str) noexcept {
        return toLowerCase(std::string(str));
    }

    template<typename VectorLike, typename StrLike>
    PURE static inline std::string join(const VectorLike &parts, const StrLike &delimiter) {
        if (parts.empty()) {
            return "";
        }
        if (parts.size() == 1) {
            return toString(parts.front());
        }

        auto iter = parts.begin();
        auto result = StringBuilder(toString(*iter++));
        for (; iter != parts.end(); ++iter) {
            result.append(toString(delimiter));
            result.append(toString(*iter));
        }
        return result.toString();
    }

    PURE static inline std::string repeat(const std::string &str, const i32 repeat, const char delimiter) {
        if (repeat <= 0) return "";
        if (repeat == 1) return str;

        auto builder = StringBuilder(str);
        for (i32 i = 1; i < repeat; ++i) {
            builder.append(delimiter);
            builder.append(str);
        }

        return builder.toString();
    }

    PURE static inline std::string getPrettyPath(const Path &file) {
        auto result = file.lexically_relative(std::filesystem::current_path());
        if (!result.empty() && result.native()[0] != '.') {
            return result.string();
        }
        return file.string();
    }
}

static FORCEINLINE void printStacktrace(const std::exception &exception) noexcept {
    auto excName = typeid(exception).name();
    auto nameSplits = string::split(typeid(exception).name(), ' ', 2);
    if (nameSplits.empty()) {
        printStacktraceMsg(exception.what());
        return;
    }
    if (nameSplits[0] == "class") {
        printStacktraceMsg(fmt::format("{}: {}", nameSplits[1], exception.what()).c_str());
        return;
    }
    printStacktraceMsg(fmt::format("{}: {}", excName, exception.what()).c_str());
}

#endif //CLANG_MC_STRINGUTILS_H
