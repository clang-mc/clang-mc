//
// Created by Claude on 2026/7/5.
//

#include "InlineFunctionsPass.h"

namespace postopt {

static FORCEINLINE bool isNameChar(const char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
        || c == '_' || c == '-' || c == '.' || c == '/' || c == ':';
}

// data/<ns>/function/<path>.mcfunction -> "<ns>:<path>"；非函数路径返回空串。
static std::string refFromPath(const Path &path) {
    auto rel = path.generic_string();
    static const std::string prefix = "data/";
    static const std::string mid = "/function/";
    static const std::string suffix = ".mcfunction";
    if (!rel.starts_with(prefix) || !rel.ends_with(suffix)) {
        return {};
    }
    const auto midPos = rel.find(mid);
    if (midPos == std::string::npos) {
        return {};
    }
    auto ns = rel.substr(prefix.size(), midPos - prefix.size());
    auto tail = rel.substr(midPos + mid.size(), rel.size() - (midPos + mid.size()) - suffix.size());
    if (ns.empty() || tail.empty() || ns.find('/') != std::string::npos) {
        return {};
    }
    return ns + ":" + tail;
}

// 去除首尾空白（空格/制表/回车）。
static std::string_view trimLine(std::string_view line) {
    size_t start = 0;
    while (start < line.size() && (line[start] == ' ' || line[start] == '\t' || line[start] == '\r')) {
        ++start;
    }
    size_t end = line.size();
    while (end > start && (line[end - 1] == ' ' || line[end - 1] == '\t' || line[end - 1] == '\r')) {
        --end;
    }
    return line.substr(start, end - start);
}

// 统计 body 中属于 names 的函数名 token 出现次数，累加进 counts。
static void countMentions(const std::string &body, const HashSet<std::string> &names,
                          HashMap<std::string, int> &counts) {
    const size_t n = body.size();
    size_t i = 0;
    while (i < n) {
        if (!isNameChar(body[i])) {
            ++i;
            continue;
        }
        size_t j = i;
        bool hasColon = false;
        while (j < n && isNameChar(body[j])) {
            if (body[j] == ':') {
                hasColon = true;
            }
            ++j;
        }
        if (hasColon) {
            auto token = body.substr(i, j - i);
            if (names.contains(token)) {
                ++counts[std::move(token)];
            }
        }
        i = j;
    }
}

// 判断一行是否为 return 命令（含 execute ... run return 这类条件提前返回）。
static bool isReturnLine(std::string_view trimmed) {
    return trimmed == "return" || trimmed.starts_with("return ")
        || trimmed.find(" run return") != std::string_view::npos;
}

// 函数体是否为宏函数（含行首 `$` 且带 `$(` 的宏行）。
static bool isMacroBody(const std::string &body) {
    for (const auto &raw: string::split(body, '\n')) {
        const auto line = trimLine(raw);
        if (!line.empty() && line.front() == '$' && line.find("$(") != std::string_view::npos) {
            return true;
        }
    }
    return false;
}

namespace {
enum class SiteKind { None, Standalone, Tail };

struct CallSite {
    Path referrer;
    SiteKind kind = SiteKind::None;
};
}

// 提取一行中紧跟 "function " 的函数名 token（若无返回空串）；outMacro 置为该调用是否带宏参数。
static std::string extractCalledRef(std::string_view trimmed, bool &outMacro) {
    outMacro = false;
    static const std::string kw = "function ";
    const auto pos = trimmed.find(kw);
    if (pos == std::string_view::npos) {
        return {};
    }
    size_t start = pos + kw.size();
    size_t end = start;
    while (end < trimmed.size() && isNameChar(trimmed[end])) {
        ++end;
    }
    if (end == start) {
        return {};
    }
    auto ref = std::string(trimmed.substr(start, end - start));
    // 宏调用：ref 之后（跳过空白）跟 with / {
    size_t after = end;
    while (after < trimmed.size() && trimmed[after] == ' ') {
        ++after;
    }
    if (after < trimmed.size()) {
        const auto rest = trimmed.substr(after);
        if (rest.starts_with("with ") || rest.front() == '{') {
            outMacro = true;
        }
    }
    return ref;
}

// 计算 body 中某函数名 token 的字节偏移（body 中该 token 保证唯一出现）。
static size_t findToken(const std::string &body, const std::string &token) {
    size_t pos = 0;
    while ((pos = body.find(token, pos)) != std::string::npos) {
        const bool leftOk = pos == 0 || !isNameChar(body[pos - 1]);
        const size_t after = pos + token.size();
        const bool rightOk = after >= body.size() || !isNameChar(body[after]);
        if (leftOk && rightOk) {
            return pos;
        }
        pos += token.size();
    }
    return std::string::npos;
}

// 构造把被调函数 B 内联到调用点后应替换成的文本。
static std::string buildInlinedText(const std::string &calleeBody, SiteKind kind) {
    if (kind == SiteKind::Tail) {
        // 尾调用：原样贴入（含内部 return），去掉末尾换行以作为整行块插入。
        auto text = calleeBody;
        while (!text.empty() && (text.back() == '\n' || text.back() == '\r')) {
            text.pop_back();
        }
        return text;
    }
    // 独立调用：剥除末尾 return（返回值被丢弃）。
    auto lines = string::split<std::string>(calleeBody, '\n');
    // 定位最后一条非空行
    size_t last = lines.size();
    for (size_t k = lines.size(); k-- > 0;) {
        if (!trimLine(lines[k]).empty()) {
            last = k;
            break;
        }
    }
    if (last < lines.size()) {
        const auto trimmed = trimLine(lines[last]);
        if (trimmed.starts_with("return run ")) {
            // return run <cmd> -> <cmd>（执行命令，丢弃返回值捕获）
            const auto cmd = trimmed.substr(std::string_view("return run ").size());
            lines[last] = std::string(cmd);
        } else if (isReturnLine(trimmed)) {
            // return / return <v> / return fail -> 删除该行
            lines.erase(lines.begin() + static_cast<std::ptrdiff_t>(last));
        }
    }
    // 去掉末尾空行后 join
    while (!lines.empty() && trimLine(lines.back()).empty()) {
        lines.pop_back();
    }
    return string::join(lines, "\n");
}

// 独立调用可内联：除末尾非空行外无 return，且末尾行若为 return 必须是简单 return（非 execute）。
static bool standaloneInlinable(const std::string &calleeBody) {
    auto lines = string::split(calleeBody, '\n');
    size_t last = SIZE_MAX;
    for (size_t k = 0; k < lines.size(); ++k) {
        if (!trimLine(lines[k]).empty()) {
            last = k;
        }
    }
    for (size_t k = 0; k < lines.size(); ++k) {
        const auto trimmed = trimLine(lines[k]);
        if (trimmed.empty()) {
            continue;
        }
        if (k == last) {
            // 末尾行：可为非 return，或简单 return（return.. 且非 execute 条件返回）
            if (isReturnLine(trimmed) && (trimmed.starts_with("execute ")
                || trimmed.find(" run return") != std::string_view::npos)) {
                return false;
            }
        } else if (isReturnLine(trimmed)) {
            return false;  // 中间存在提前 return
        }
    }
    return true;
}

void inlineFunctions(std::vector<McFunctions> &mcFunctions, BuildContext &buildContext) {
    auto &internal = buildContext.getInternalFunctions();
    auto &exported = buildContext.getExportedFunctions();
    // 可内联函数 = 内部函数 ∪ export 函数（export 保留原名但按内部函数处理，允许被内联）。
    const auto inlinable = [&](const std::string &name) {
        return internal.contains(name) || exported.contains(name);
    };
    if (internal.empty() && exported.empty()) {
        return;
    }
    const auto &startFunc = buildContext.getStartFunc();

    for (auto &map: mcFunctions) {
        // 迭代到不动点：每轮把当轮的“叶子”候选内联并删除，直到无候选。
        bool changed = true;
        while (changed) {
            changed = false;

            // 名字集合
            auto names = HashSet<std::string>();
            auto nameToPath = HashMap<std::string, Path>();
            names.reserve(map.size());
            for (const auto &entry: map) {
                auto name = refFromPath(entry.first);
                if (name.empty()) {
                    continue;
                }
                names.emplace(name);
                nameToPath.emplace(std::move(name), entry.first);
            }

            // 提及计数（可靠：整 token，覆盖直接调用/schedule/NBT 字符串/任意提及）
            auto mentionCount = HashMap<std::string, int>();
            for (const auto &entry: map) {
                countMentions(entry.second, names, mentionCount);
            }

            // 干净调用点扫描（standalone / tail）
            auto sites = HashMap<std::string, CallSite>();
            for (const auto &entry: map) {
                const auto &body = entry.second;
                const auto lines = string::split(body, '\n');
                size_t lastNonEmpty = SIZE_MAX;
                for (size_t k = 0; k < lines.size(); ++k) {
                    if (!trimLine(lines[k]).empty()) {
                        lastNonEmpty = k;
                    }
                }
                for (size_t k = 0; k < lines.size(); ++k) {
                    const auto trimmed = trimLine(lines[k]);
                    if (trimmed.empty()) {
                        continue;
                    }
                    bool macro = false;
                    const auto ref = extractCalledRef(trimmed, macro);
                    if (ref.empty() || !names.contains(ref) || macro) {
                        continue;
                    }
                    SiteKind kind = SiteKind::None;
                    if (trimmed == "function " + ref) {
                        kind = SiteKind::Standalone;
                    } else if (k == lastNonEmpty && trimmed == "return run function " + ref) {
                        kind = SiteKind::Tail;
                    }
                    if (kind != SiteKind::None) {
                        sites[ref] = CallSite{entry.first, kind};
                    }
                }
            }

            // 选出本轮候选
            auto candidates = HashMap<std::string, CallSite>();
            for (const auto &[name, site]: sites) {
                if (!inlinable(name) || name == startFunc) {
                    continue;
                }
                const auto mc = mentionCount.find(name);
                if (mc == mentionCount.end() || mc->second != 1) {
                    continue;  // 必须整 map 恰好被提及一次
                }
                const auto found = map.find(nameToPath.at(name));
                if (found == map.end() || found->first == site.referrer) {
                    continue;  // 自引用跳过
                }
                if (isMacroBody(found->second)) {
                    continue;  // 宏函数不可内联
                }
                if (site.kind == SiteKind::Standalone && !standaloneInlinable(found->second)) {
                    continue;
                }
                candidates.emplace(name, site);
            }
            if (candidates.empty()) {
                break;
            }

            // 延迟规则：跳过体内引用了其它候选的候选，避免内联顺序冲突（自底向上收敛）。
            auto candidateNames = HashSet<std::string>();
            for (const auto &[name, _]: candidates) {
                candidateNames.emplace(name);
            }

            // 先筛选出本轮真正要应用的内联（每 referrer 至多一个），再统一按“键”应用。
            // 关键：全程只按键（Path）操作 map——拷出 referrer/callee 函数体、修改后写回、
            // 按键删除。绝不跨 map.erase 持有元素引用；ankerl dense map 的 erase 会 swap-with-last
            // 使一切迭代器/引用失效，持有会导致 UAF / 非确定性输出。
            struct InlineEdit {
                Path referrer;
                Path calleePath;
                std::string calleeName;
                SiteKind kind;
            };
            auto edits = std::vector<InlineEdit>();
            auto usedReferrer = HashSet<Path>();
            for (const auto &[name, site]: candidates) {
                const auto found = map.find(nameToPath.at(name));
                if (found == map.end()) {
                    continue;
                }
                // 跳过体内引用了其它候选的候选
                auto self = HashMap<std::string, int>();
                countMentions(found->second, names, self);
                bool referencesOtherCandidate = false;
                for (const auto &[m, _]: self) {
                    if (m != name && candidateNames.contains(m)) {
                        referencesOtherCandidate = true;
                        break;
                    }
                }
                if (referencesOtherCandidate) {
                    continue;
                }
                if (!usedReferrer.emplace(site.referrer).second) {
                    continue;  // 该 referrer 本轮已用
                }
                edits.push_back(InlineEdit{site.referrer, found->first, name, site.kind});
            }

            for (const auto &edit: edits) {
                const auto calleeIt = map.find(edit.calleePath);
                if (calleeIt == map.end()) {
                    continue;
                }
                const auto inlined = buildInlinedText(calleeIt->second, edit.kind);

                const auto referrerIt = map.find(edit.referrer);
                if (referrerIt == map.end()) {
                    continue;
                }
                auto body = referrerIt->second;  // 拷出，避免跨 erase 的悬垂引用
                const auto tokenPos = findToken(body, edit.calleeName);
                if (tokenPos == std::string::npos) {
                    continue;
                }
                size_t lineStart = body.rfind('\n', tokenPos);
                lineStart = (lineStart == std::string::npos) ? 0 : lineStart + 1;
                size_t lineEnd = body.find('\n', tokenPos);
                if (lineEnd == std::string::npos) {
                    lineEnd = body.size();
                }
                body.replace(lineStart, lineEnd - lineStart, inlined);

                map[edit.referrer] = std::move(body);  // 按键写回
                map.erase(edit.calleePath);            // 按键删除
                internal.erase(edit.calleeName);
                exported.erase(edit.calleeName);
                changed = true;
            }
        }
    }
}

}  // namespace postopt
