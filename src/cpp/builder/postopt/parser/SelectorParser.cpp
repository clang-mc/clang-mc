//
// Created by Codex on 2026/5/1.
//

#include "SelectorParser.h"
#include "CommandTokenizer.h"
#include "utils/Common.h"
#include "utils/string/StringUtils.h"
#include <algorithm>
#include <array>
#include <fmt/format.h>

namespace postopt {

static constexpr auto DUPLICABLE_KEYS = std::array<std::string_view, 3>{"predicate", "tag", "nbt"};
static constexpr auto COMPLEX_KEYS = std::array<std::string_view, 2>{"scores", "advancements"};

static bool containsKey(const auto &keys, std::string_view key) {
    return std::ranges::find(keys, key) != keys.end();
}

std::vector<SelectorArg> parseSelectorArgs(std::string_view args) {
    auto result = std::vector<SelectorArg>();
    if (args.empty()) {
        return result;
    }

    auto current = std::string();
    i32 depth = 0;
    bool inQuote = false;
    bool escaped = false;

    auto pushCurrent = [&] {
        auto rawView = string::trim(current);
        if (rawView.empty()) {
            current.clear();
            return;
        }
        auto raw = std::string(rawView);
        auto eqIndex = raw.find('=');
        auto key = eqIndex == std::string::npos ? raw : std::string(string::trim(std::string_view(raw).substr(0, eqIndex)));
        result.push_back({std::move(key), std::move(raw)});
        current.clear();
    };

    for (char ch: args) {
        if (escaped) {
            current.push_back(ch);
            escaped = false;
            continue;
        }
        if (ch == '\\' && inQuote) {
            current.push_back(ch);
            escaped = true;
            continue;
        }
        if (ch == '"') {
            inQuote = !inQuote;
            current.push_back(ch);
        } else if (!inQuote && (ch == '[' || ch == '{')) {
            depth++;
            current.push_back(ch);
        } else if (!inQuote && (ch == ']' || ch == '}')) {
            depth--;
            current.push_back(ch);
        } else if (!inQuote && depth == 0 && ch == ',') {
            pushCurrent();
        } else {
            current.push_back(ch);
        }
    }
    pushCurrent();
    return result;
}

std::optional<SelectorMatch> extractSelector(std::string_view line, size_t startIndex) {
    if (startIndex >= line.size() || line[startIndex] != '@' || startIndex + 1 >= line.size()) {
        return std::nullopt;
    }
    const char type = line[startIndex + 1];
    if (std::string_view("aepnrs").find(type) == std::string_view::npos) {
        return std::nullopt;
    }

    size_t i = startIndex + 2;
    if (i < line.size() && line[i] == '[') {
        i++;
        i32 depth = 1;
        bool inQuote = false;
        bool escaped = false;
        while (i < line.size() && depth > 0) {
            const char ch = line[i];
            if (escaped) {
                escaped = false;
            } else if (ch == '\\' && inQuote) {
                escaped = true;
            } else if (ch == '"') {
                inQuote = !inQuote;
            } else if (!inQuote) {
                if (ch == '[' || ch == '{') {
                    depth++;
                } else if (ch == ']' || ch == '}') {
                    depth--;
                }
            }
            i++;
        }
    }

    return SelectorMatch{std::string(line.substr(startIndex, i - startIndex)), startIndex, i};
}

std::vector<SelectorMatch> findSelectors(std::string_view line, std::string_view selectorTypes) {
    auto result = std::vector<SelectorMatch>();
    for (size_t i = 0; i + 1 < line.size(); ++i) {
        if (line[i] != '@' || selectorTypes.find(line[i + 1]) == std::string_view::npos) {
            continue;
        }
        if (i > 0 && line[i - 1] == '"') {
            continue;
        }
        auto selector = extractSelector(line, i);
        if (selector.has_value()) {
            result.push_back(*selector);
            i = selector->end - 1;
        }
    }
    return result;
}

static bool isPositivePlainType(const SelectorArg &arg) {
    if (arg.key != "type") {
        return false;
    }
    const auto eqIndex = arg.raw.find('=');
    if (eqIndex == std::string::npos || eqIndex + 1 >= arg.raw.size()) {
        return false;
    }
    const auto value = std::string_view(arg.raw).substr(eqIndex + 1);
    return !value.starts_with('!') && !value.starts_with('#');
}

static std::string buildSelectorWithArgs(std::string_view base, const std::vector<SelectorArg> &args) {
    auto builder = StringBuilder();
    builder.append(base);
    if (!args.empty()) {
        builder.append('[');
        for (size_t i = 0; i < args.size(); ++i) {
            if (i != 0) {
                builder.append(',');
            }
            builder.append(args[i].raw);
        }
        builder.append(']');
    }
    return builder.toString();
}

std::string reorderPositiveTypeLast(std::string_view line) {
    auto selectors = findSelectors(line, "aepnrs");
    if (selectors.empty()) {
        return std::string(line);
    }

    auto result = std::string(line);
    for (auto it = selectors.rbegin(); it != selectors.rend(); ++it) {
        const auto &selector = *it;
        if (selector.raw.size() <= 3 || selector.raw[2] != '[' || selector.raw.back() != ']') {
            continue;
        }
        auto args = parseSelectorArgs(std::string_view(selector.raw).substr(3, selector.raw.size() - 4));
        auto typeIt = std::ranges::find_if(args, isPositivePlainType);
        if (typeIt == args.end() || std::next(typeIt) == args.end()) {
            continue;
        }
        auto typeArg = *typeIt;
        args.erase(typeIt);
        args.push_back(std::move(typeArg));
        auto replacement = buildSelectorWithArgs(std::string_view(selector.raw).substr(0, 2), args);
        result.replace(selector.start, selector.end - selector.start, replacement);
    }
    return result;
}

enum class MergeStatus {
    Safe,
    Conflict,
    Complex
};

static MergeStatus analyzeMerge(const std::vector<SelectorArg> &asArgs, const std::vector<SelectorArg> &selfArgs) {
    auto asMap = HashMap<std::string, std::string>();
    auto selfMap = HashMap<std::string, std::string>();
    for (const auto &arg: asArgs) {
        asMap[arg.key] = arg.raw;
    }
    for (const auto &arg: selfArgs) {
        selfMap[arg.key] = arg.raw;
    }

    bool complex = false;
    for (const auto &[key, asRaw]: asMap) {
        if (containsKey(DUPLICABLE_KEYS, key)) {
            continue;
        }
        auto found = selfMap.find(key);
        if (found != selfMap.end() && found->second != asRaw) {
            if (containsKey(COMPLEX_KEYS, key)) {
                complex = true;
            } else {
                return MergeStatus::Conflict;
            }
        }
    }
    return complex ? MergeStatus::Complex : MergeStatus::Safe;
}

static bool isDuplicableTypeArg(const SelectorArg &arg) {
    if (arg.key != "type") {
        return false;
    }
    const auto eqIndex = arg.raw.find('=');
    if (eqIndex == std::string::npos) {
        return false;
    }
    const auto value = std::string_view(arg.raw).substr(eqIndex + 1);
    return value.starts_with('!') || value.starts_with('#');
}

static std::string negateArg(std::string raw) {
    const auto eqIndex = raw.find('=');
    if (eqIndex == std::string::npos) {
        return raw;
    }
    auto value = raw.substr(eqIndex + 1);
    if (value.starts_with('!')) {
        value.erase(value.begin());
    } else {
        value.insert(value.begin(), '!');
    }
    raw.replace(eqIndex + 1, std::string::npos, value);
    return raw;
}

static std::string mergeComplexValues(const std::string &existingRaw, const std::string &newRaw) {
    const auto eqIndex1 = existingRaw.find('=');
    const auto eqIndex2 = newRaw.find('=');
    if (eqIndex1 == std::string::npos || eqIndex2 == std::string::npos) {
        return existingRaw;
    }

    auto key = existingRaw.substr(0, eqIndex1);
    auto value1 = existingRaw.substr(eqIndex1 + 1);
    auto value2 = newRaw.substr(eqIndex2 + 1);
    if (value1.starts_with('{') && value1.ends_with('}')) {
        value1 = value1.substr(1, value1.size() - 2);
    }
    if (value2.starts_with('{') && value2.ends_with('}')) {
        value2 = value2.substr(1, value2.size() - 2);
    }
    if (value1.empty()) {
        return fmt::format("{}={{{}}}", key, value2);
    }
    if (value2.empty()) {
        return fmt::format("{}={{{}}}", key, value1);
    }
    return fmt::format("{}={{{},{}}}", key, value1, value2);
}

static std::string mergedSelector(std::string_view asBase, std::vector<SelectorArg> asArgs,
                                  const std::vector<SelectorArg> &selfArgs, bool isUnless) {
    for (const auto &selfArg: selfArgs) {
        auto finalRaw = isUnless ? negateArg(selfArg.raw) : selfArg.raw;
        auto existingIt = std::ranges::find_if(asArgs, [&](const SelectorArg &arg) {
            return arg.key == selfArg.key;
        });
        const bool duplicate = std::ranges::any_of(asArgs, [&](const SelectorArg &arg) {
            return arg.raw == finalRaw;
        });
        if (existingIt != asArgs.end()) {
            if (containsKey(COMPLEX_KEYS, selfArg.key)) {
                existingIt->raw = mergeComplexValues(existingIt->raw, finalRaw);
            } else if ((containsKey(DUPLICABLE_KEYS, selfArg.key) || isDuplicableTypeArg({selfArg.key, finalRaw})) && !duplicate) {
                asArgs.push_back({selfArg.key, std::move(finalRaw)});
            }
        } else if (!duplicate) {
            asArgs.push_back({selfArg.key, std::move(finalRaw)});
        }
    }

    std::stable_sort(asArgs.begin(), asArgs.end(), [](const SelectorArg &left, const SelectorArg &right) {
        if (left.key == "type" && right.key != "type") {
            return false;
        }
        if (left.key != "type" && right.key == "type") {
            return true;
        }
        return false;
    });
    return buildSelectorWithArgs(asBase, asArgs);
}

static std::optional<size_t> findExecuteAsSelector(std::string_view line) {
    auto tokens = tokenizeCommand(line);
    if (tokens.empty() || tokens[0].text != "execute") {
        return std::nullopt;
    }
    for (size_t i = 1; i + 1 < tokens.size(); ++i) {
        if (tokens[i].text == "run") {
            break;
        }
        if (tokens[i].text == "as" && (i == 1 || (tokens[i - 1].text != "positioned" && tokens[i - 1].text != "rotated"))
            && tokens[i + 1].text.starts_with('@')) {
            return tokens[i + 1].start;
        }
    }
    return std::nullopt;
}

std::string mergeAsSelectorWithSelfCondition(std::string_view line) {
    auto asSelectorStart = findExecuteAsSelector(line);
    if (!asSelectorStart.has_value()) {
        return std::string(line);
    }
    auto asSelector = extractSelector(line, *asSelectorStart);
    if (!asSelector.has_value()) {
        return std::string(line);
    }

    const auto afterAs = line.substr(asSelector->end);
    const auto ifEntityPosRel = afterAs.find(" if entity @s");
    const auto unlessEntityPosRel = afterAs.find(" unless entity @s");
    bool isUnless = false;
    size_t condPos = std::string_view::npos;
    size_t selectorOffset = 0;
    if (ifEntityPosRel != std::string_view::npos) {
        condPos = asSelector->end + ifEntityPosRel + 1;
        selectorOffset = std::string_view("if entity ").size();
    }
    if (unlessEntityPosRel != std::string_view::npos
        && (condPos == std::string_view::npos || asSelector->end + unlessEntityPosRel + 1 < condPos)) {
        isUnless = true;
        condPos = asSelector->end + unlessEntityPosRel + 1;
        selectorOffset = std::string_view("unless entity ").size();
    }
    if (condPos == std::string_view::npos) {
        return std::string(line);
    }

    const auto between = line.substr(asSelector->end, condPos - asSelector->end);
    auto betweenTokens = tokenizeCommand(between);
    for (const auto &token: betweenTokens) {
        if (token.text == "run" || token.text == "on" || token.text == "positioned" || token.text == "at"
            || token.text == "in" || token.text == "summon" || token.text == "as") {
            return std::string(line);
        }
    }

    auto selfSelector = extractSelector(line, condPos + selectorOffset);
    if (!selfSelector.has_value() || !selfSelector->raw.starts_with("@s")) {
        return std::string(line);
    }

    auto asArgs = asSelector->raw.size() > 2 && asSelector->raw[2] == '['
                  ? parseSelectorArgs(std::string_view(asSelector->raw).substr(3, asSelector->raw.size() - 4))
                  : std::vector<SelectorArg>();
    auto selfArgs = selfSelector->raw.size() > 2 && selfSelector->raw[2] == '['
                    ? parseSelectorArgs(std::string_view(selfSelector->raw).substr(3, selfSelector->raw.size() - 4))
                    : std::vector<SelectorArg>();

    const auto status = analyzeMerge(asArgs, selfArgs);
    if (status == MergeStatus::Conflict) {
        return std::string(line);
    }

    // `unless entity @s[...]` means NOT(arg0 AND arg1 AND ...). Negating each arg
    // individually yields NOT(arg0) AND NOT(arg1) AND ..., which is only equivalent
    // to the original semantics when @s carries exactly one argument (De Morgan).
    // For >=2 args we would change the selected entity set, so refuse to merge.
    // Complex keys (scores/advancements) cannot be expressed as a negated whole via
    // per-arg negation and would also produce illegal selector syntax, so refuse
    // those under `unless` as well.
    if (isUnless) {
        if (selfArgs.size() != 1) {
            return std::string(line);
        }
        if (containsKey(COMPLEX_KEYS, selfArgs.front().key)) {
            return std::string(line);
        }
    }

    auto result = std::string(line);
    result.erase(condPos, selfSelector->end - condPos);
    const auto merged = mergedSelector(std::string_view(asSelector->raw).substr(0, 2), std::move(asArgs), selfArgs, isUnless);
    result.replace(asSelector->start, asSelector->end - asSelector->start, merged);

    auto tokens = tokenizeCommand(result);
    auto builder = StringBuilder();
    for (size_t i = 0; i < tokens.size(); ++i) {
        if (i != 0) {
            builder.append(' ');
        }
        builder.append(tokens[i].text);
    }
    return builder.toString();
}

}  // namespace postopt
