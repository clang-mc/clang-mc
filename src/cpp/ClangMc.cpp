//
// Created by xia__mc on 2025/2/13.
//

#include "ClangMc.h"
#include "utils/FileUtils.h"
#include "ir/verify/Verifier.h"
#include "objects/LogFormatter.h"
#include "builder/Builder.h"
#include "builder/PostOptimizer.h"
#include "ir/opt/Optimizer.h"
#include "ir/obf/Obfuscator.h"
#include "extern/ResourceManager.h"
#include "parse/ParseManager.h"
#include "uuidWrapper.h"
#include <spdlog/sinks/ansicolor_sink.h>
#include <spdlog/sinks/basic_file_sink.h>
#include <execution>
#include "vector"
#include "array"

ClangMc::ClangMc(const Config &config) : config(config) {
    auto consoleSink = std::make_shared<spdlog::sinks::ansicolor_stdout_sink_mt>();
    auto sinks = std::vector<spdlog::sink_ptr>{consoleSink};
    if (this->config.getLogFile()) {
        auto fileSink = std::make_shared<spdlog::sinks::basic_file_sink_mt>("latest.log", true);
        sinks.push_back(fileSink);
    }

    logger = std::make_shared<spdlog::logger>("multi_sink", sinks.begin(), sinks.end());
#ifndef NDEBUG
    for (const auto &sink: sinks) {
        sink->set_level(spdlog::level::debug);
    }
    logger->set_level(spdlog::level::debug);
#endif
    logger->set_formatter(std::make_unique<LogFormatter>());
}

ClangMc::~ClangMc() {
    spdlog::drop_all();
}

void ClangMc::start() {
    try {
        // initializing
        ensureEnvironment();
        ensureValidConfig();
        ensureBuildDir();

        auto context = BuildContext();
        auto uuidEngine = std::mt19937(std::random_device{}());
        auto staticBaseUuid = uuids::to_string(uuids::uuid_random_generator(uuidEngine)());
        staticBaseUuid.erase(std::remove(staticBaseUuid.begin(), staticBaseUuid.end(), '-'), staticBaseUuid.end());
        context.setStaticBaseReg(Registers::createCustom(fmt::format("sb_{}", staticBaseUuid), false));
#ifndef NDEBUG
        logger->debug("pre parse");
#endif
        // parse
        auto parseManager = ParseManager(config, logger, context);
        parseManager.loadSource();
        parseManager.loadIR();
        auto &irs = parseManager.getIRs();

#ifndef NDEBUG
        logger->debug("pre verify");
#endif
        // verify
        Verifier(logger, config, irs).verify();
        if (!config.getDebugInfo()) {
            parseManager.freeSource();
        }

        // mcasm(IR)级优化阶段（仅 optLevel>=1 启用；运行在校验之后、编译之前）
        if (config.getOptLevel() >= 1) {
            auto optimizer = Optimizer(irs);
            optimizer.optimize();
        }

        // mcasm(IR)级混淆阶段（由 --enable-obf 门控，与 -O 等级独立，opt-in）。
        // 置于 IR 优化之后：其一，间接调用混淆是去虚拟化的逆操作，必须晚于去虚拟化
        // 才不会被撤销；其二，-E 转储会反映混淆后的 IR，可做无服务器结构测试。
        if (config.getEnableObf()) {
            auto obfuscator = Obfuscator(irs);
            obfuscator.obfuscate();
        }

        if (config.getPreprocessOnly()) {
            for (auto &ir: irs) {
                ir.preCompile();
                auto path = Path(ir.getFile());
                path.replace_extension(".mci");

                StringBuilder builder = StringBuilder();
                for (const auto &op: ir.getValues()) {
                    builder.appendLine(op->toString());
                }
                ensureParentDir(path);
                writeFile(path, builder.toString());
            }
            return;
        }

#ifndef NDEBUG
        logger->debug("pre compile");
#endif
        // compiling
        auto mcFunctions = std::vector<McFunctions>(irs.size());
//#pragma omp parallel for default(none) shared(irs, mcFunctions)
        for (size_t i = 0; i < irs.size(); ++i) {
            mcFunctions[i] = irs[i].compile();
        }
        if (config.getDebugInfo()) {
            parseManager.freeSource();
        }
        parseManager.freeIR();

        // 后优化流水线（含并入的名称混淆 pass）。optimize() 内部按等级门控：
        // 行/函数级 pass 仅 -O2；名称混淆 pass 为 optLevel>=1 且非 -g（历史行为不变）。
        if (config.getOptLevel() >= 1) {
            auto postOptimizer = PostOptimizer(mcFunctions, context, config);
            postOptimizer.optimize();
        }

#ifndef NDEBUG
        logger->debug("pre build");
#endif
        auto builder = Builder(config, std::move(mcFunctions), context);
        // building
#ifndef NDEBUG
        logger->debug("pre call build");
#endif
        builder.build();

        if (config.getCompileOnly()) {
#ifndef NDEBUG
            logger->debug("exited normally.");
#endif
            return;
        }


#ifndef NDEBUG
        logger->debug("pre link");
#endif
        // linking
        builder.link();

#ifndef NDEBUG
        logger->debug("exited normally.");
#endif
        return;
    } catch (const IOException &e) {
        logger->error(e.what());
    } catch (const ParseException &e) {
        logger->error(e.what());
    }

    logger->error(i18n("general.unable_to_build"));
    exit();
}

[[noreturn]] void ClangMc::exit(const int code) {
    spdlog::drop_all();
    std::exit(code);
    UNREACHABLE();
}

void ClangMc::ensureEnvironment() const {
    if (initResources()) return;
    logger->error(i18n("general.environment_error"));
    exit();
}

void ClangMc::ensureValidConfig() {
    if (config.getInput().empty()) {
        std::cout << string::removeFromLast(getExecutableName(getArgv0()), ".") << ": ";
        logger->error(i18n("general.no_input_files"));
        exit();
    }
    if (std::any_of(config.getInput().begin(), config.getInput().end(), [&](const Path &item) {
        return item.extension() != ".mcasm";
    })) {
        logger->error(i18n("general.invalid_input"));
        exit();
    }
}

void ClangMc::ensureBuildDir() {
    const Path &dir = config.getBuildDir();
    try {
        if (exists(dir)) {
            remove_all(dir);
        }
        create_directory(dir);
    } catch (const std::filesystem::filesystem_error &e) {
        logger->error(i18n("general.failed_init_build"));
        logger->error(e.what());
    }
}
