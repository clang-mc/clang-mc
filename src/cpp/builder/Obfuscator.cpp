//
// Created by Claude on 2026/7/4.
//

#include "Obfuscator.h"
#include "builder/obfuscate/core/Pipeline.h"

void Obfuscator::obfuscate() {
    auto ctx = obfuscate::ObfuscateContext{mcFunctions, context, config};
    obfuscate::runObfuscation(ctx);
}
