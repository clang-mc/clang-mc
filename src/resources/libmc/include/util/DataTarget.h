#pragma once

/*
 * DataTarget: the discriminated `block <pos> | entity <selector> | storage <id>`
 * target shared by /data, /item, /loot and /execute store. It is a by-value POD
 * tag union: the constructor captures exactly the arm's payload, so the outer
 * command keeps a fixed, single-argument shape while the "which kind" choice is
 * resolved at the construction site (no _Generic, no arity overloading).
 *
 * The target renders to the two command tokens `<kind> <value>` (e.g.
 * "block 1 2 3", "entity @s", "storage foo:bar") — plain command text, not NBT.
 * The embedded Target / Identifier pointers are borrowed; the caller owns them
 * and must keep them alive across any command call that consumes the DataTarget.
 */

#include "Identifier.h"
#include "McfStrRef.h"
#include "Target.h"
#include "math/vec.h"

typedef enum {
    DATA_TARGET_BLOCK,
    DATA_TARGET_ENTITY,
    DATA_TARGET_STORAGE
} DataTargetKind;

typedef struct {
    DataTargetKind    kind;
    Vec3i             block;   /* DATA_TARGET_BLOCK */
    Target            entity;  /* DATA_TARGET_ENTITY (borrowed) */
    const Identifier *storage; /* DATA_TARGET_STORAGE (borrowed) */
} DataTarget;

static inline DataTarget
DataTarget_Block(Vec3i pos)
{
    DataTarget t;

    t.kind = DATA_TARGET_BLOCK;
    t.block = pos;
    t.entity = NULL;
    t.storage = NULL;
    return t;
}

static inline DataTarget
DataTarget_Entity(Target entity)
{
    DataTarget t;

    t.kind = DATA_TARGET_ENTITY;
    t.block.x = 0;
    t.block.y = 0;
    t.block.z = 0;
    t.entity = entity;
    t.storage = NULL;
    return t;
}

static inline DataTarget
DataTarget_Storage(const Identifier *storage)
{
    DataTarget t;

    t.kind = DATA_TARGET_STORAGE;
    t.block.x = 0;
    t.block.y = 0;
    t.block.z = 0;
    t.entity = NULL;
    t.storage = storage;
    return t;
}

/* Append "block x y z" / "entity <selector>" / "storage <ns:path>" to cmd. */
static inline int
DataTarget_AppendTo(McfStrRef cmd, DataTarget t)
{
    switch (t.kind) {
        case DATA_TARGET_BLOCK:
            if (McfStrRef_AppendLiteral(cmd, "block ") != 0) {
                return -1;
            }
            if (McfStrRef_AppendInt(cmd, t.block.x) != 0) {
                return -1;
            }
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) {
                return -1;
            }
            if (McfStrRef_AppendInt(cmd, t.block.y) != 0) {
                return -1;
            }
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) {
                return -1;
            }
            return McfStrRef_AppendInt(cmd, t.block.z);
        case DATA_TARGET_ENTITY:
            if (t.entity == NULL) {
                return -1;
            }
            if (McfStrRef_AppendLiteral(cmd, "entity ") != 0) {
                return -1;
            }
            return McfStrRef_AppendCString(cmd, Target_CStr(t.entity));
        case DATA_TARGET_STORAGE:
            if (McfStrRef_AppendLiteral(cmd, "storage ") != 0) {
                return -1;
            }
            return McfStrRef_AppendIdentifier(cmd, t.storage);
        default:
            return -1;
    }
}
