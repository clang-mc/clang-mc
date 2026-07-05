//
// Created by Claude on 2026/7/5.
//

#include "Obfuscator.h"
#include "ir/obf/core/Pipeline.h"

void Obfuscator::obfuscate() {
    for (auto &ir : irs) {
        obf::runObfuscation(ir);
    }
}
