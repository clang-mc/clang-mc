//
// Created by Claude on 2026/7/4.
//

#include "RenameInternalFunctionsPass.h"
#include "objects/NameGenerator.h"
#include "utils/string/StringUtils.h"

namespace obfuscate {

// 复刻 IR.cpp 的 toPath：ns:path -> data/ns/function/path.mcfunction
static Path toPath(const std::string &mcName) {
    static const auto data = Path("data");
    static const auto function = Path("function");
    static const auto mcfunction = Path(".mcfunction");

    assert(string::count(mcName, ':') == 1);
    auto splits = string::split(mcName, ':', 2);
    auto result = data / splits[0] / function / splits[1];
    result += mcfunction;
    return result;
}

// mc 名字（资源路径）允许的字符；用于判断某个匹配是否为完整 token，避免
// myns:main/loop 破坏 myns:main/loop2 这类前缀误伤。
static FORCEINLINE bool isNameChar(const char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
        || c == '_' || c == '-' || c == '.' || c == '/' || c == ':';
}

// 在 text 中把完整 token oldName 替换为 newName（前后须为非名字字符或文本边界）。
// 同时覆盖 function <name>（Call/JmpTable）与 Movd 写入 NBT 的 "<name>"。
static void replaceTokens(std::string &text, const std::string &oldName, const std::string &newName) {
    if (UNLIKELY(oldName.empty())) {
        return;
    }
    size_t pos = 0;
    while ((pos = text.find(oldName, pos)) != std::string::npos) {
        const bool leftOk = pos == 0 || !isNameChar(text[pos - 1]);
        const size_t after = pos + oldName.size();
        const bool rightOk = after >= text.size() || !isNameChar(text[after]);
        if (leftOk && rightOk) {
            text.replace(pos, oldName.size(), newName);
            pos += newName.size();
        } else {
            pos += oldName.size();
        }
    }
}

void renameInternalFunctions(ObfuscateContext &ctx) {
    const auto &internal = ctx.buildContext.getInternalFunctions();
    if (internal.empty()) {
        return;
    }

    // 收集所有“已占用”的函数路径，用于避免生成的不透明名与现有（导出等）函数冲突。
    // 内部函数当前占用的 key 会被本 pass 释放，故先从占用集中排除。
    auto occupied = HashSet<Path>();
    for (const auto &map: ctx.mcFunctions) {
        for (const auto &entry: map) {
            occupied.emplace(entry.first);
        }
    }
    for (const auto &name: internal) {
        occupied.erase(toPath(name));
    }

    // 为每个内部名生成不冲突的不透明短名，构建全局 old -> new 映射。
    // 必须复用全局单例 NameGenerator：编译期（createForCall 曾用它，现已让位）、
    // PostOptimizer 的 _postopt 辅助函数、以及 Builder 的 onLoad/data 函数都从这一个
    // 单例取名。若此处另起炉灶从 'a' 计数，会与 Builder 随后生成的 a:a/a:b 撞名并在
    // 写盘时互相覆盖，导致内部函数静默丢失、引用指向错误目标。
    auto renameMap = HashMap<std::string, std::string>();
    renameMap.reserve(internal.size());
    for (const auto &oldName: internal) {
        std::string newName;
        Path newPath;
        do {
            newName = ctx.config.getNameSpace() + NameGenerator::getInstance().generate();
            newPath = toPath(newName);
        } while (occupied.contains(newPath));
        occupied.emplace(newPath);
        renameMap.emplace(oldName, newName);
    }

    // 内部函数仅在其定义所在的 IR（同一 McFunctions map）内被引用，故按 map 局部处理。
    for (auto &map: ctx.mcFunctions) {
        auto local = std::vector<std::pair<std::string, std::string>>();
        for (const auto &[oldName, newName]: renameMap) {
            if (map.contains(toPath(oldName))) {
                local.emplace_back(oldName, newName);
            }
        }
        if (local.empty()) {
            continue;
        }

        // 1) 重写本 map 所有函数体中的引用
        for (auto &entry: map) {
            for (const auto &[oldName, newName]: local) {
                replaceTokens(entry.second, oldName, newName);
            }
        }

        // 2) 迁移 key：把内部函数条目移动到新路径
        for (const auto &[oldName, newName]: local) {
            const auto found = map.find(toPath(oldName));
            if (found == map.end()) {
                continue;
            }
            auto code = std::move(found->second);
            map.erase(found);
            map.emplace(toPath(newName), std::move(code));
        }
    }

    // 修补 _start：Builder 用 startFunc 接线 load/tick 标签
    const auto it = renameMap.find(ctx.buildContext.getStartFunc());
    if (it != renameMap.end()) {
        ctx.buildContext.setStartFunc(it->second);
    }
}

}  // namespace obfuscate
