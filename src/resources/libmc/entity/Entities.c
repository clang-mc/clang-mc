#include "Entities.h"

#define X(id, ns, path, translationKey, spawnGroup, width, height, eyeHeight) \
    const _Entity id##_IMPL = {                                              \
        { ns, path },                                                        \
        translationKey,                                                      \
        spawnGroup,                                                          \
        width,                                                               \
        height,                                                              \
        eyeHeight                                                            \
    };
ENTITY_LIST(X)
#undef X
