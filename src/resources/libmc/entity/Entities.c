#include "entity/Entities.h"

#define X(id, ns, path, translationKey, spawnGroup, width, height, eyeHeight) \
    _Entity id##_IMPL = {                                                    \
        { ns, path },                                                        \
        NULL,                                                                \
        translationKey,                                                      \
        spawnGroup,                                                          \
        width,                                                               \
        height,                                                              \
        eyeHeight                                                            \
    };
ENTITY_LIST(X)
#undef X
