#pragma once

#include "block/Block.h"
#include "util/math/vec.h"

typedef enum {
    DESTROY,
    KEEP,
    REPLACE
} SetBlockMode;

#ifdef __cplusplus
extern "C" {
#endif

int setblock(Vec3i pos, Block block, SetBlockMode mode);

#ifdef __cplusplus
}
#endif
