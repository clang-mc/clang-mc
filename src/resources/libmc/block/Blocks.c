#include "Blocks.h"

#define X(id, ns, path, translationKey, resistance, slipperiness, randomTicks) \
    const _Block id##_IMPL = {                                              \
        { ns, path },                                                       \
        translationKey,                                                     \
        resistance,                                                         \
        slipperiness,                                                       \
        randomTicks                                                         \
    };
BLOCK_LIST(X)
#undef X
