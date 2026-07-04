//
// Created by xia__mc on 2025/2/13.
//

#include "ArgParser.h"
#include "i18n/I18n.h"

ArgParser::ArgParser(Config &config) : config(config) {
    this->config.setInput(std::vector<Path>());
}

void ArgParser::setNameSpace(const std::string &arg) {
    switch (string::count(arg, ':')) {
        case 0:
            if (!string::isValidMCNamespace(arg)) {
                throw ParseException(i18n("cli.arg.invalid_namespace"));
            }
            config.setNameSpace(arg + ':');
            break;
        case 1:
            if (!string::isValidMCNamespace(string::removeFromFirst(arg, ":"))) {
                throw ParseException(i18n("cli.arg.invalid_namespace"));
            }
            assert(arg.length() > 1);
            if (arg[arg.length() - 1] != '/' && arg[arg.length() - 1] != ':') {
                config.setNameSpace(arg + '/');
            } else {
                config.setNameSpace(arg);
            }
            break;
        default:
            throw ParseException(i18n("cli.arg.invalid_namespace"));
    }
}

void ArgParser::next(const std::string &arg) {
    if (required) {
        SWITCH_STR (lastString) {
            CASE_STR("--output"):
            CASE_STR("-o"):
                // 设置输出数据包zip的文件名
                config.setOutput(Path(arg));
                break;
            CASE_STR("--build-dir"):
            CASE_STR("-B"):
                // 设置构建文件夹
                config.setBuildDir(Path(arg));
                break;
            CASE_STR("--namespace"):
            CASE_STR("-N"):
                // 设置编译非导出函数的命名空间路径
                setNameSpace(arg);
                break;
            CASE_STR("-I"):
                // 设置include path
                config.getIncludes().emplace_back(arg);
                break;
            CASE_STR("--data-dir"):
            CASE_STR("-D"):
                // 设置数据包目录
                config.setDataDir(Path(arg));
                break;
            default:
                break;
        }
        required = false;
        lastString = "";
        return;
    }

    const Hash argHash = hash(arg);
    if (DATA_ARGS.contains(argHash)) {
        required = true;
        lastString = arg;
        return;
    }

    switch (argHash) {
        CASE_STR("--compile-only"):
        CASE_STR("-c"):
            // 只编译，不链接
            config.setCompileOnly(true);
            return;
        CASE_STR("--log-file"):
        CASE_STR("-l"):
            // 输出日志到文件
            config.setLogFile(true);
            return;
        CASE_STR("-g"):
            // 额外的调试信息
            config.setDebugInfo(true);
            return;
        CASE_STR("-Werror"):
            // 把警告视为错误
            config.setWerror(true);
            return;
        CASE_STR("-E"):
            // 只预处理，不编译
            config.setPreprocessOnly(true);
            return;
        CASE_STR("-w"):
            // 抑制所有警告
            config.setNoWarn(true);
            return;
        CASE_STR("-O0"):
            // 优化等级 0（默认）：可读名，不混淆、不后优化
            config.setOptLevel(0);
            return;
        CASE_STR("-O"):
        CASE_STR("-O1"):
            // 优化等级 1：启用重命名混淆
            config.setOptLevel(1);
            return;
        CASE_STR("-O2"):
            // 优化等级 2：在 -O1 基础上叠加 PostOptimizer 后优化
            config.setOptLevel(2);
            return;
        default:
            break;
    }

    // 认为是输入文件
    if (arg.empty()) {
        throw ParseException(i18n("cli.arg.empty_input_file"));
    }
    if (arg.length() >= 2 && (arg.front() == '"' || arg.front() == '\'')
            && (arg.back() == '"' || arg.back() == '\'')) {
        config.getInput().emplace_back(arg.substr(1, arg.length() - 2));
        return;
    }
    config.getInput().emplace_back(arg);
}

void ArgParser::end() {
    if (required) {
        throw ParseException(i18n("cli.arg.missing_arg") + lastString);
    }
    if (config.getNameSpace().empty()) {
        setNameSpace(config.getOutput().string());
    }
}
