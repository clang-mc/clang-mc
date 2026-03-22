//
// Created by xia__mc on 2025/3/22.
//

#include "ParseManager.h"
#include "parse/PreProcessor.h"
#include "extern/ResourceManager.h"

void ParseManager::loadSource() {
    PreProcessor pp;
    pp.addIncludeDir(absolute(INCLUDE_PATH));
    pp.addIncludeDir(Path(getExecutableDir(getArgv0())));
    for (const auto &path : config.getIncludes()) {
        pp.addIncludeDir(absolute(path));
    }
    for (const auto &path : config.getInput()) {
        pp.addTarget(absolute(path));
    }
    pp.load();
    pp.process();

    sources.reserve(pp.getTargets().size());
    for (const auto &t : pp.getTargets()) {
        sources.emplace(t.path, t.code);
    }
    defines.reserve(pp.getDefines().size());
    for (const auto &[path, defs] : pp.getDefines()) {
        defines.emplace(path, defs);
    }
}

void ParseManager::loadIR() {
    irs.reserve(sources.size());
    for (auto &[path, code]: sources) {
        auto iter = defines.find(path);
        auto defines_ = iter == defines.end() ? HashMap<std::string, std::string>() : iter->second;
        irs.emplace_back(logger, config, std::move(path), std::move(defines_), context)
            .parse(std::move(code));
    }
    HashMap<Path, std::string>().swap(sources);
    HashMap<Path, HashMap<std::string, std::string>>().swap(defines);
}

void ParseManager::freeSource() {
    for (auto &ir: irs) {
        HashMap<const Op *, std::string_view>().swap(ir.sourceMap);
        HashMap<const Op *, LineState>().swap(ir.lineStateMap);
        std::string().swap(ir.sourceCode);
    }
}

void ParseManager::freeIR() {
    std::vector<IR>().swap(irs);
}
