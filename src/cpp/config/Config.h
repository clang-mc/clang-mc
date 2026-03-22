//
// Created by xia__mc on 2025/2/13.
//

#ifndef CLANG_MC_CONFIG_H
#define CLANG_MC_CONFIG_H

#include <vector>
#include <string>
#include <utils/Common.h>

class Config {
private:
    std::vector<Path> input = std::vector<Path>();
    std::vector<Path> includes = std::vector<Path>();
    Path output = Path("a");
    Path buildDir = Path("build");
    Path dataDir = Path("");
    std::string nameSpace;
    bool compileOnly = false;
    bool preprocessOnly = false;
    bool logFile = false;
    bool debugInfo = false;
    bool werror = false;
    bool noWarn = false;
public:
    explicit Config() = default;

    DATA(Input, input);

    DATA(Includes, includes);

    DATA(Output, output);

    DATA(BuildDir, buildDir);

    DATA(DataDir, dataDir);

    DATA(NameSpace, nameSpace);

    DATA_POD(CompileOnly, compileOnly);

    DATA_POD(PreprocessOnly, preprocessOnly);

    DATA_POD(LogFile, logFile);

    DATA_POD(DebugInfo, debugInfo);

    DATA_POD(Werror, werror);

    DATA_POD(NoWarn, noWarn);
};


#endif //CLANG_MC_CONFIG_H
