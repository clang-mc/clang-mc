//
// Created by Claude on 2026/7/4.
//

#include "Pipeline.h"
#include "builder/obfuscate/passes/RenameInternalFunctionsPass.h"

namespace obfuscate {

void runObfuscation(ObfuscateContext &ctx) {
    renameInternalFunctions(ctx);
    // 未来的混淆 pass 依次加在此处
}

}  // namespace obfuscate
