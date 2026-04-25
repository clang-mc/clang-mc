#pragma once

#include "util/Identifier.h"

typedef struct _Block {
    Identifier identifier;
    const char *translationKey;
    float resistance;
    float slipperiness;
    int randomTicks;
} _Block;

typedef const struct _Block *Block;

static inline const Identifier *
Block_GetIdentifier(Block block)
{
    return block ? &block->identifier : NULL;
}

static inline const char *
Block_GetTranslationKey(Block block)
{
    return block ? block->translationKey : NULL;
}

static inline float
Block_GetResistance(Block block)
{
    return block ? block->resistance : 0.0f;
}

static inline float
Block_GetSlipperiness(Block block)
{
    return block ? block->slipperiness : 0.0f;
}

static inline int
Block_GetRandomTicks(Block block)
{
    return block ? block->randomTicks : 0;
}

static inline int
Block_HasRandomTicks(Block block)
{
    return block ? block->randomTicks != 0 : 0;
}

static inline char *
Block_GetRegistryName(Block block)
{
    return block ? Identifier_Str(&block->identifier) : NULL;
}

