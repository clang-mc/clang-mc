//
// Created by Claude on 2026/7/5.
//

#include "DeadFunctionEliminationPass.h"

namespace postopt {

// mc 名字（资源路径）允许的字符。函数名 token（ns:path）由这些字符的极大连续段构成。
static FORCEINLINE bool isNameChar(const char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
        || c == '_' || c == '-' || c == '.' || c == '/' || c == ':';
}

// data/<ns>/function/<path>.mcfunction -> "<ns>:<path>"；非函数路径返回空串。
std::string refFromMcPath(const Path &path) {
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

// 把 body 中出现的、且属于 names 的函数名 token 收集到 out（去重）。
void collectFunctionMentions(const std::string &body, const HashSet<std::string> &names, HashSet<std::string> &out) {
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
                out.emplace(std::move(token));
            }
        }
        i = j;
    }
}

void eliminateDeadFunctions(std::vector<McFunctions> &mcFunctions, BuildContext &buildContext) {
    auto &internal = buildContext.getInternalFunctions();
    auto &exported = buildContext.getExportedFunctions();
    // 可裁剪函数 = 内部函数 ∪ export 函数（export 保留原名但按内部函数处理，允许被裁剪）。
    const auto prunable = [&](const std::string &name) {
        return internal.contains(name) || exported.contains(name);
    };
    if (internal.empty() && exported.empty()) {
        return;  // 没有可删除的函数
    }
    const auto &startFunc = buildContext.getStartFunc();

    // 内部函数只在其定义所在的 McFunctions map 内被引用，故按 map 局部处理。
    for (auto &map: mcFunctions) {
        // 名字 <-> 路径索引
        auto names = HashSet<std::string>();
        auto nameToPath = HashMap<std::string, Path>();
        names.reserve(map.size());
        for (const auto &entry: map) {
            auto name = refFromMcPath(entry.first);
            if (name.empty()) {
                continue;
            }
            names.emplace(name);
            nameToPath.emplace(std::move(name), entry.first);
        }

        // 根集合：startFunc + 所有不可裁剪函数（api/extern：非内部且非 export）。
        auto reachable = HashSet<std::string>();
        auto worklist = std::vector<std::string>();
        const auto addRoot = [&](const std::string &name) {
            if (names.contains(name) && reachable.emplace(name).second) {
                worklist.push_back(name);
            }
        };
        if (!startFunc.empty()) {
            addRoot(startFunc);
        }
        for (const auto &name: names) {
            if (!prunable(name)) {
                addRoot(name);
            }
        }

        // 可达性传播：沿函数体中提及的已存在函数名扩散。
        while (!worklist.empty()) {
            const auto current = worklist.back();
            worklist.pop_back();
            const auto found = map.find(nameToPath.at(current));
            if (found == map.end()) {
                continue;
            }
            auto mentions = HashSet<std::string>();
            collectFunctionMentions(found->second, names, mentions);
            for (const auto &m: mentions) {
                if (reachable.emplace(m).second) {
                    worklist.push_back(m);
                }
            }
        }

        // 删除不可达的可裁剪函数（内部 / export）。
        for (const auto &name: names) {
            if (reachable.contains(name) || !prunable(name)) {
                continue;
            }
            const auto it = nameToPath.find(name);
            if (it != nameToPath.end()) {
                map.erase(it->second);
            }
            // 同步集合，避免后续 rename 为已删函数空耗名字槽（erase 对不存在的键为空操作）。
            internal.erase(name);
            exported.erase(name);
        }
    }
}

}  // namespace postopt
