//
// Created by xia__mc on 2025/2/16.
//

#ifndef CLANG_MC_IR_H
#define CLANG_MC_IR_H

#include <deque>
#include "config/Config.h"
#include "vector"
#include "ir/ops/Label.h"
#include "IRCommon.h"
#include "objects/NameGenerator.h"
#include "extern/ResourceManager.h"
#include "State.h"
#include "builder/BuildContext.h"

class ParseManager;

class IR {
private:
    const Logger &logger;
    const Config &config;
    Path file;
    std::string fileDisplay;
    std::string sourceCode;  // 维持sourceMap中的view
    HashMap<const Op *, std::string_view> sourceMap = HashMap<const Op *, std::string_view>();
    HashMap<const Op *, LineState> lineStateMap = HashMap<const Op *, LineState>();
    HashMap<std::string, std::string> defines;
    std::vector<OpPtr> values = std::vector<OpPtr>();

    std::vector<i32> staticData = std::vector<i32>();
    HashMap<Hash, u32> staticDataMap = HashMap<Hash, u32>();

    BuildContext &context;

    std::string createForCall(const Label *labelOp);

    void initLabels(LabelMap &labelMap);

    friend class ParseManager;
public:
    explicit IR(const Logger &logger, const Config &config, Path &&file,
                HashMap<std::string, std::string> &&defines, BuildContext &context) :
        logger(logger), config(config), file(std::move(file)),
        fileDisplay(string::getPrettyPath(this->file)), defines(defines), context(context) {
    }

    [[nodiscard]] FORCEINLINE std::string_view getFileDisplay() const {
        return fileDisplay;
    }

    GETTER(File, file);

    GETTER(Values, values);

    GETTER(StaticData, staticData);

    GETTER(StaticDataMap, staticDataMap);

    void parse(std::string &&code);

    void preCompile();

    [[nodiscard]] McFunctions compile();

    [[nodiscard]] std::string_view getSource(const Op *op) const {
        assert(!sourceMap.empty());

        const auto result = sourceMap.find(op);
        if (result != sourceMap.end()) {
            return result->second;
        }
        return "Unknown Source";
    }

    [[nodiscard]] LineState getLine(const Op *op) const {
        assert(!lineStateMap.empty());

        const auto result = lineStateMap.find(op);
        if (result != lineStateMap.end()) {
            return result->second;
        }
        return {};
    }

    static inline std::string generateName() {
        return NameGenerator::getInstance().generate();
    }
};

PURE static inline std::string createIRMessage(const LineState &line, const std::string_view &source, const std::string_view &message) {
    std::string lineNumber;
    if (line.lineNumber == -1) {
        lineNumber = "?";
    } else {
        lineNumber = std::to_string(line.lineNumber);
    }

    return fmt::format("{}:{}: {}\n    {} | {}",
                       line.filename, lineNumber, message, lineNumber, source);
}

std::string createIRMessage(const IR &ir, const Op *op, const std::string_view &message);

PURE static inline std::string createIRMessage(const LineState &line, const std::string_view &message) {
    return createIRMessage(line, "Unknown Source", message);
}

#endif //CLANG_MC_IR_H
