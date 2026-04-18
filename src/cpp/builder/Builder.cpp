//
// Created by xia__mc on 2025/3/12.
//

#include "Builder.h"
#include "extern/ResourceManager.h"
#include "PostOptimizer.h"
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
    // In Minecraft 1.21.10, datapack .mcfunction commands are read as UTF-8 text and
    // validated by net.minecraft.server.function.CommandFunction#validateCommandLength
    // against a 2,000,000-character limit. Our generated commands are ASCII-only, so
    // UTF-8 byte count matches character count here. Leave some headroom below the limit.
    static constexpr size_t MAX_COMMAND_BYTES = 1999900;
    static constexpr std::string_view VALUE_PREFIX = "data modify storage std:vm z set value [";
    static constexpr std::string_view VALUE_SUFFIX = "]";
    static constexpr std::string_view COPY_SET = "data modify storage std:vm heap set from storage std:vm z[]";
    static constexpr std::string_view COPY_APPEND = "data modify storage std:vm heap append from storage std:vm z[]";
    static constexpr std::string_view REMOVE_TEMP = "data remove storage std:vm z";

    auto emitChunk = [&](const std::vector<i32> &chunk, const bool firstChunk) {
        StringBuilder line;
        line.append(VALUE_PREFIX);
        for (size_t i = 0; i < chunk.size(); ++i) {
            if (i != 0) {
                line.append(',');
            }
            line.append(chunk[i]);
        }
        line.append(VALUE_SUFFIX);

        const std::string valueCommand = line.toString();
        assert(valueCommand.size() <= MAX_COMMAND_BYTES);
        builder.appendLine(valueCommand);

        const std::string_view copyCommand = firstChunk ? COPY_SET : COPY_APPEND;
        assert(copyCommand.size() <= MAX_COMMAND_BYTES);
        builder.appendLine(copyCommand);
    };

    const size_t fixedBytes = VALUE_PREFIX.size() + VALUE_SUFFIX.size();
    std::vector<i32> chunk;
    chunk.reserve(data.size());
    size_t chunkBytes = fixedBytes;
    bool firstChunk = true;

    for (const auto value: data) {
        const std::string valueStr = std::to_string(value);
        const size_t deltaBytes = (chunk.empty() ? 0 : 1) + valueStr.size();
        if (!chunk.empty() && chunkBytes + deltaBytes > MAX_COMMAND_BYTES) {
            emitChunk(chunk, firstChunk);
            firstChunk = false;
            chunk.clear();
            chunkBytes = fixedBytes;
        }

        chunk.push_back(value);
        chunkBytes += deltaBytes;
    }

    if (!chunk.empty()) {
        emitChunk(chunk, firstChunk);
    }
    builder.appendLine(REMOVE_TEMP);
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

void Builder::link() const {
    writeFileIfNotExist(config.getBuildDir() / "pack.mcmeta", PACK_MCMETA);

    // static link stdlib
    auto entries = std::vector<Path>();
    for (const auto& entry : std::filesystem::recursive_directory_iterator(STDLIB_PATH)) {
        entries.push_back(entry.path());
    }
//#pragma omp parallel for default(none) shared(entries, STDLIB_PATH)
    for (size_t i = 0; i < entries.size(); ++i) {  // NOLINT(modernize-loop-convert)
        const Path& path = entries[i];
        if (is_regular_file(path) && path.extension() != ".mcmeta") {
            auto target = config.getBuildDir() / relative(path, STDLIB_PATH);
            ensureParentDir(target);

            auto content = readFile(path);

            if (target.extension() == ".mcfunction") {
                PostOptimizer::doSingleOptimize(content);
            }

            writeFileIfNotExist(target, content);
        }
    }

    if (!config.getDataDir().empty()) {
        for (const auto& path : std::filesystem::recursive_directory_iterator(config.getDataDir())) {
            if (is_regular_file(path)) {
                auto target = config.getBuildDir() / relative(path, config.getDataDir());
                ensureParentDir(target);

                auto content = readFile(path);

                if (target.extension() == ".mcfunction") {
                    PostOptimizer::doSingleOptimize(content);
                }

                writeFile(target, content);
            }
        }
    }

    auto output = config.getOutput();
    output += ".zip";
    compressFolder(config.getBuildDir(), output);
}
