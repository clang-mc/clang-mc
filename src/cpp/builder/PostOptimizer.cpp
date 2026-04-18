//
// Created by xia__mc on 2025/3/14.
//

#include "PostOptimizer.h"

constexpr auto REPLACES = std::array{
        std::pair{"return run return", "return"},
        std::pair{"char2str_map[$(a)]", "char2str_map.\"$(a)\""}
};

static inline constexpr std::string_view LABEL_BIT_SHR = "# label: \"__bit_shr\"";
static inline constexpr std::string_view LABEL_BIT_SHR_B31 = "# label: \"__bit_shr.isB31\"";

static inline constexpr std::string_view FIXED_BIT_SHR = R"(execute if score r1 vm_regs matches 0 run return run function a:o
execute if score r1 vm_regs matches 31 run return run function a:p
scoreboard players operation t0 vm_regs = r0 vm_regs
scoreboard players operation r0 vm_regs = r1 vm_regs
function a:a
scoreboard players operation t1 vm_regs = rax vm_regs
return run function a:n)";

static inline constexpr std::string_view FIXED_BIT_SHR_B31 = R"(execute if score r0 vm_regs matches 0..2147483647 run return 0
scoreboard players set rax vm_regs 1
return 1)";

void PostOptimizer::doSingleOptimize(std::string &code) {
    if (code.empty()) return;
    if (code.find(LABEL_BIT_SHR) != std::string::npos) {
        code = FIXED_BIT_SHR;
        return;
    }
    if (code.find(LABEL_BIT_SHR_B31) != std::string::npos) {
        code = FIXED_BIT_SHR_B31;
        return;
    }
    auto splits = string::split(code, '\n');

    bool first = true;
    auto builder = StringBuilder();
    for (const auto &line : splits) {
        if (line.empty() || line.front() == '#') continue;

        if (!first) builder.append('\n');
        auto fixedLine = string::trim(line);
        if (!fixedLine.empty() && fixedLine.front() == '$' && !string::contains(fixedLine, "$(")) {
            fixedLine.remove_prefix(1);
        }
        std::string newLine;
        for (const auto &p : REPLACES) {
            if (string::replaceFast(fixedLine, newLine, p.first, p.second)) {
                fixedLine = newLine;
            }
        }
        builder.append(fixedLine);
        first = false;
    }

    code = builder.toString();
}

void PostOptimizer::optimize() {
    for (size_t i = 0; i < mcFunctions.size(); i++) {  // NOLINT(modernize-loop-convert)
        auto &mcFunction = mcFunctions[i].values();

        for (size_t j = 0; j < mcFunction.size(); j++) {  // NOLINT(modernize-loop-convert)
            doSingleOptimize(mcFunction[j].second);
        }
    }
}
