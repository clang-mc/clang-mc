//
// Created by xia__mc on 2025/2/13.
//

#include "ClangMc.h"
#include "utils/FileUtils.h"
#include "ir/verify/Verifier.h"
#include "objects/LogFormatter.h"
#include "builder/Builder.h"
#include "builder/PostOptimizer.h"
#include "extern/ResourceManager.h"
#include "parse/ParseManager.h"
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

        // post optimize
        if (!config.getDebugInfo()) {
            auto postOptimizer = PostOptimizer(mcFunctions);
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

[[noreturn]] void ClangMc::exit() {
    spdlog::drop_all();
    std::exit(0);
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
