//
// Created by xia__mc on 2025/2/13.
//

#include "Main.h"
#include <iostream>
#include <exception>
#include "config/Config.h"
#include "config/ArgParser.h"
#include "ClangMc.h"
#include "utils/Native.h"
#include "utils/CLIUtils.h"
#include "i18n/I18n.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunsafe-buffer-usage"

static inline Config parseArgs(const int argc, const char *argv[]) {
    auto config = Config();
    if (argc <= 1) {
        return config;
    }

    auto parser = ArgParser(config);

    for (int i = 1; i < argc; ++i) {
        parser.next(argv[i]);
    }
    parser.end();

    return config;
}

extern "C" int init(const int argc, const char *argv[]) {
    ARGC = argc;
    ARGV = argv;

    std::set_new_handler(onOOM);
    try {
        std::set_terminate(onTerminate);
        initNative();
        initI18n();

        assert(argc >= 1);
        if (argc == 2) {
            switch (hash(argv[1])) {
                case hash("--help"):
                    std::cout << getHelpMessage(getArgv0()) << std::flush;
                    return 0;
                case hash("--version"):
                    std::cout << getVersionMessage(getArgv0()) << std::flush;
                    return 0;
                default:
                    break;
            }
        }

        Config config;
        try {
            config = parseArgs(argc, argv);
        } catch (const ParseException &e) {
            std::cerr << "error: " << e.what() << std::endl;
            return 1;
        }

        auto instance = ClangMc(config);
        instance.start();
        return 0;
    } catch (const std::bad_alloc &) {
        onOOM();
    } catch (const std::exception &e) {
        std::cerr << "error: " << i18nFormat("general.internal_error", e.what()) << std::endl;
        return 1;
    } catch (...) {
        std::cerr << "error: " << i18n("general.unknown_error") << std::endl;
        return 1;
    }
}

#pragma clang diagnostic pop
