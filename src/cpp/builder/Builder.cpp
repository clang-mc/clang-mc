//
// Created by xia__mc on 2025/3/12.
//

#include "Builder.h"
#include "extern/ResourceManager.h"
#include "PostOptimizer.h"
#include "ir/IR.h"

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
    {
        std::string funcName = config.getNameSpace() + IR::generateName();
        std::string funcContent = "function std:init_vm";
        if (!context.getStartFunc().empty()) {
            funcContent += fmt::format("\nschedule function {} 1t", context.getStartFunc());
        }
        auto splits = string::split(funcName, ':');
        auto onLoadPath = config.getBuildDir() / fmt::format("data/{}/function/{}.mcfunction", splits[0], splits[1]);
        ensureParentDir(onLoadPath);
        writeFile(onLoadPath, funcContent);

        auto loadJsonPath = config.getBuildDir() / "data" / "minecraft" / "tags" / "function" / "load.json";
        ensureParentDir(loadJsonPath);
        writeFile(loadJsonPath, string::replace(LOAD_JSON, "%FUNCTION_ON_LOAD%", funcName));
    }
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
