//
// Created by xia__mc on 2025/3/22.
//

#ifndef CLANG_MC_PARSEMANAGER_H
#define CLANG_MC_PARSEMANAGER_H


#include "config/Config.h"
#include "ir/IR.h"

class ParseManager {
private:
    const Config &config;
    const Logger &logger;
    HashMap<Path, std::string> sources;
    HashMap<Path, HashMap<std::string, std::string>> defines;
    std::vector<IR> irs;
    BuildContext &context;
public:
    explicit ParseManager(const Config &config, const Logger &logger, BuildContext &context) noexcept :
        config(config), logger(logger), context(context) {
    }

    void loadSource();

    void loadIR();

    void freeSource();

    void freeIR();

    GETTER(Sources, sources);

    GETTER(IRs, irs);
};


#endif //CLANG_MC_PARSEMANAGER_H
