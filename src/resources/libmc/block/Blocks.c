#include "block/Blocks.h"

#define X(id, ns, path, translationKey, resistance, slipperiness, randomTicks) \
    _Block id##_IMPL = {                                                    \
        { ns, path },                                                       \
        NULL,                                                               \
        translationKey,                                                     \
        resistance,                                                         \
        slipperiness,                                                       \
        randomTicks                                                         \
    };
BLOCK_LIST(X)
#undef X
