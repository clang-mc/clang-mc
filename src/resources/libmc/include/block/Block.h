#pragma once

#include "util/Identifier.h"

typedef struct _Block {
    Identifier identifier;
    McfStrRef mcfName;
    const char *translationKey;
    float resistance;
    float slipperiness;
    int randomTicks;
} _Block;

typedef const struct _Block *Block;

static inline McfStrRef
Block_EnsureMcfName(Block block)
{
    _Block *mutable_block;

    if (block == NULL) {
        return NULL;
    }

    mutable_block = (_Block *)block;
    if (mutable_block->mcfName == NULL) {
        mutable_block->mcfName = McfStrRef_FromIdentifier(&block->identifier);
        if (mutable_block->mcfName == NULL) {
            return NULL;
        }
    }
    if (McfStrRef_SlotId(mutable_block->mcfName) < 0) {
        return NULL;
    }
    return mutable_block->mcfName;
}

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

static inline String
Block_GetRegistryName(Block block)
{
    return block ? Identifier_Str(&block->identifier) : NULL;
}

