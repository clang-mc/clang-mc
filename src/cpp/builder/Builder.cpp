//
// Created by xia__mc on 2025/3/12.
//

#include "Builder.h"
#include "extern/ResourceManager.h"
#include "PostOptimizer.h"
#include "builder/postopt/passes/generated/DeadFunctionEliminationPass.h"
#include "ir/IR.h"

#include <stdexcept>
#include <string_view>

static inline constexpr auto PACK_MCMETA = \
"{\n"
"    \"pack\": {\n"
"        \"description\": \"\",\n"
"        \"pack_format\": 61\n"
"    }\n"
"}";

static inline constexpr auto LOAD_JSON = \
"{\n"
"    \"values\": [\n"
"        \"%FUNCTION_ON_LOAD%\"\n"
"    ]\n"
"}";

struct FuncName {
    const std::string nsWithSep;  // namespace with trailing separator (e.g. "test:" or "std:_internal/")
    const std::string name;

    explicit FuncName(std::string fullNs, std::string n)
        : nsWithSep(std::move(fullNs)), name(std::move(n)) {}

    [[nodiscard]] std::string toString() const {
        return nsWithSep + name;  // e.g. "test:a" or "std:_internal/a"
    }

    // Build the filesystem path for this function, mirroring the toPath() logic in IR.cpp.
    // Handles both "test:a" and "std:_internal/a" correctly on Windows (no colon in dir components).
    [[nodiscard]] Path buildPath(const Path &buildDir) const {
        static const auto data = Path("data");
        static const auto function = Path("function");

        const auto ref = toString();
        assert(string::count(ref, ':') == 1);
        const auto splits = string::split(ref, ':', 2);
        // splits[0] = mc-namespace (e.g. "std"), splits[1] = rest (e.g. "_internal/a")
        auto result = buildDir / data / std::string(splits[0]) / function / (std::string(splits[1]) + ".mcfunction");
        return result;
    }
};  // 也许我应该用这种方式重写McFunctions对象，splits不优雅

void buildStaticData(StringBuilder &builder, const std::vector<i32> &data) {
    for (size_t i = 0; i < data.size(); ++i) {
        builder.appendLine(fmt::format("data modify storage std:vm heap[{}] set value {}", i, data[i]));
    }
    if (!data.empty()) {
        builder.appendLine(fmt::format("scoreboard players add shp vm_regs {}", data.size()));
    }
}

void Builder::build() {
    for (auto &mcFunction: mcFunctions) {
        for (const auto &entry: mcFunction) {
            const auto &path = config.getBuildDir() / entry.first;
            const auto &data = entry.second;

            ensureParentDir(path);
            writeFile(path, data);
        }
        McFunctions().swap(mcFunction);
    }

    // make load.json
    const auto &data = context.getStaticData();
    FuncName onLoadFunc = FuncName(config.getNameSpace(), IR::generateName());
    StringBuilder onLoadFuncContent = StringBuilder("schedule function std:init_vm 1t");
    if (!data.empty()) {
        assert(context.getStaticBaseReg() != nullptr);
        FuncName dataFunc = FuncName(config.getNameSpace(), IR::generateName());
        auto path = dataFunc.buildPath(config.getBuildDir());
        ensureParentDir(path);
        StringBuilder dataBuilder = StringBuilder();
        dataBuilder.appendLine(fmt::format("scoreboard players operation {} vm_regs = shp vm_regs",
                                           context.getStaticBaseReg()->getName()));
        buildStaticData(dataBuilder, data);
        writeFile(path, dataBuilder.toString());
        onLoadFuncContent.append(fmt::format("\nschedule function {} 1t", dataFunc.toString()));
    }
    if (!context.getStartFunc().empty()) {
        onLoadFuncContent.append(fmt::format("\nschedule function {} 2t", context.getStartFunc()));
    }

    auto onLoadPath = onLoadFunc.buildPath(config.getBuildDir());
    ensureParentDir(onLoadPath);
    writeFile(onLoadPath, onLoadFuncContent.toString());

    auto loadJsonPath = config.getBuildDir() / "data" / "minecraft" / "tags" / "function" / "load.json";
    ensureParentDir(loadJsonPath);
    writeFile(loadJsonPath, string::replace(LOAD_JSON, "%FUNCTION_ON_LOAD%", onLoadFunc.toString()));
}

// 链接期读入的单个 stdlib 函数（已做行级优化，尚未写盘）。
struct StdlibFn {
    Path target;          // 目标写盘路径（config.getBuildDir() / 相对路径）
    std::string mcName;   // mc 名（ns:path），用于整程序可达性
    std::string content;  // 行级优化后的函数体
};

void Builder::link() const {
    writeFileIfNotExist(config.getBuildDir() / "pack.mcmeta", PACK_MCMETA);

    // 整程序死函数消除（stdlib 剪枝）：仅 optLevel>=1 启用；-O0 保持全量链接（历史行为）。
    // 该 pass 运行在“链接期、全部函数已汇集”的位置：Builder::build() 已把用户产物、
    // 生成的 onLoad/dataFunc 及 load.json 写盘，此处即将并入全部 stdlib，故这里能看到
    // 全程序视图，DCE 得以真正剪掉某具体程序用不到的手写库函数。
    const bool wholeProgramDce = config.getOptLevel() >= 1;

    // ---- 1) 把 stdlib 读入内存（行级优化），暂不写盘 ----
    // .mcfunction 是可剪枝候选；其它文件（当前仅 pack.mcmeta 已被排除，留此分支稳健）直接拷贝。
    auto stdlibFns = std::vector<StdlibFn>();
    auto stdlibRaw = std::vector<std::pair<Path, std::string>>();
    for (const auto &entry : std::filesystem::recursive_directory_iterator(STDLIB_PATH)) {
        const Path &path = entry.path();
        if (!is_regular_file(path) || path.extension() == ".mcmeta") {
            continue;
        }
        const auto rel = relative(path, STDLIB_PATH);
        auto target = config.getBuildDir() / rel;
        auto content = readFile(path);

        if (target.extension() == ".mcfunction") {
            PostOptimizer::doSingleOptimize(content);
            // 用户在同路径下自建了同名函数（build() 已写盘）时视为其覆盖，不纳入剪枝候选、
            // 不覆盖（保持 writeFileIfNotExist 语义）；它已作为根被下面的 build 目录扫描覆盖。
            if (exists(target)) {
                continue;
            }
            stdlibFns.push_back({std::move(target), postopt::refFromMcPath(rel), std::move(content)});
        } else {
            stdlibRaw.emplace_back(std::move(target), std::move(content));
        }
    }

    // ---- 2) 读取 dataDir（用户附加数据包），缓存函数体作为根；稍后统一写盘 ----
    auto dataDirFiles = std::vector<std::pair<Path, std::string>>();  // (target, content)
    if (!config.getDataDir().empty()) {
        for (const auto &entry : std::filesystem::recursive_directory_iterator(config.getDataDir())) {
            const Path &path = entry.path();
            if (!is_regular_file(path)) {
                continue;
            }
            auto target = config.getBuildDir() / relative(path, config.getDataDir());
            auto content = readFile(path);
            if (target.extension() == ".mcfunction") {
                PostOptimizer::doSingleOptimize(content);
            }
            dataDirFiles.emplace_back(std::move(target), std::move(content));
        }
    }

    if (wholeProgramDce && !stdlibFns.empty()) {
        // stdlib 名字集合与索引。
        auto stdlibNames = HashSet<std::string>();
        auto nameToIdx = HashMap<std::string, size_t>();
        stdlibNames.reserve(stdlibFns.size());
        for (size_t i = 0; i < stdlibFns.size(); ++i) {
            stdlibNames.emplace(stdlibFns[i].mcName);
            nameToIdx.emplace(stdlibFns[i].mcName, i);
        }

        auto reachable = HashSet<std::string>();
        auto worklist = std::vector<std::string>();
        const auto seed = [&](const std::string &body) {
            auto mentions = HashSet<std::string>();
            postopt::collectFunctionMentions(body, stdlibNames, mentions);
            for (auto &m : mentions) {
                if (reachable.emplace(m).second) {
                    worklist.push_back(m);
                }
            }
        };

        // 根集合 = 全部非 stdlib 程序函数。它们均已由 build() 写入 build 目录
        // （用户产物 + onLoad + dataFunc；load.json 以函数名锚定 onLoad，onLoad 内含
        //  字面 `schedule function std:init_vm 1t` 及 dataFunc/startFunc 的 schedule），
        // 加上尚未写盘的 dataDir 函数。扫描其文本即得对 stdlib 的全部一手引用。
        for (const auto &entry : std::filesystem::recursive_directory_iterator(config.getBuildDir())) {
            const Path &path = entry.path();
            if (is_regular_file(path) && path.extension() == ".mcfunction") {
                seed(readFile(path));
            }
        }
        for (const auto &file : dataDirFiles) {
            if (file.first.extension() == ".mcfunction") {
                seed(file.second);
            }
        }

        // 可达性传播：沿已可达 stdlib 函数体中提及的其它 stdlib 名扩散。
        while (!worklist.empty()) {
            const auto current = worklist.back();
            worklist.pop_back();
            const auto it = nameToIdx.find(current);
            if (it == nameToIdx.end()) {
                continue;
            }
            seed(stdlibFns[it->second].content);
        }

        // 写盘：仅保留可达 stdlib；不可达者被剪枝。
        for (const auto &fn : stdlibFns) {
            if (!reachable.contains(fn.mcName)) {
                continue;  // 剪掉本程序用不到的手写库函数
            }
            ensureParentDir(fn.target);
            writeFileIfNotExist(fn.target, fn.content);
        }
    } else {
        // -O0（或无候选）：全量链接 stdlib。
        for (const auto &fn : stdlibFns) {
            ensureParentDir(fn.target);
            writeFileIfNotExist(fn.target, fn.content);
        }
    }

    // stdlib 中的非 .mcfunction 文件（稳健分支，当前为空）。
    for (const auto &raw : stdlibRaw) {
        ensureParentDir(raw.first);
        writeFileIfNotExist(raw.first, raw.second);
    }

    // 写入 dataDir 文件（根，恒保留）。
    for (const auto &file : dataDirFiles) {
        ensureParentDir(file.first);
        writeFile(file.first, file.second);
    }

    auto output = config.getOutput();
    output += ".zip";
    compressFolder(config.getBuildDir(), output);
}
