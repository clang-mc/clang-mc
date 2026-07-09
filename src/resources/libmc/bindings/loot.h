#pragma once

/* Hand-written binding (schema marks 'loot' as hand_written). /loot is a full
 * product of a target form (give/insert/spawn/replace block|entity) and a source
 * form (fish/loot/kill/mine); each form is a by-value POD tag union whose
 * constructor captures exactly that arm's payload. loot(target, source) then has
 * a fixed two-argument shape. Commands are assembled as concrete text and run via
 * _Command_ExecResultAndRelease. */

#include "bindings/CommandSupport.h"
#include "util/ItemSlot.h"

#ifdef __cplusplus
extern "C" {
#endif

/* --- loot target (POD tag union) ------------------------------------------ */
typedef enum {
    LOOT_TGT_GIVE,
    LOOT_TGT_INSERT,
    LOOT_TGT_SPAWN,
    LOOT_TGT_REPLACE_BLOCK,
    LOOT_TGT_REPLACE_ENTITY
} LootTargetKind;

typedef struct {
    LootTargetKind kind;
    Target         players;   /* GIVE, REPLACE_ENTITY (borrowed) */
    Vec3i          iblock;    /* INSERT, REPLACE_BLOCK */
    Vec3d          dpos;      /* SPAWN */
    ItemSlot       slot;      /* REPLACE_* */
    int            has_count; /* REPLACE_* */
    int            count;     /* REPLACE_* */
} LootTarget;

static inline LootTarget
LootTarget_Give(Target players)
{
    LootTarget t = {LOOT_TGT_GIVE, players, {0, 0, 0}, {0, 0, 0}, {NULL}, 0, 0};
    return t;
}

static inline LootTarget
LootTarget_Insert(Vec3i pos)
{
    LootTarget t = {LOOT_TGT_INSERT, NULL, pos, {0, 0, 0}, {NULL}, 0, 0};
    return t;
}

static inline LootTarget
LootTarget_Spawn(Vec3d pos)
{
    LootTarget t = {LOOT_TGT_SPAWN, NULL, {0, 0, 0}, pos, {NULL}, 0, 0};
    return t;
}

static inline LootTarget
LootTarget_ReplaceBlock(Vec3i pos, ItemSlot slot)
{
    LootTarget t = {LOOT_TGT_REPLACE_BLOCK, NULL, pos, {0, 0, 0}, slot, 0, 0};
    return t;
}

static inline LootTarget
LootTarget_ReplaceBlockCount(Vec3i pos, ItemSlot slot, int count)
{
    LootTarget t = {LOOT_TGT_REPLACE_BLOCK, NULL, pos, {0, 0, 0}, slot, 1, count};
    return t;
}

static inline LootTarget
LootTarget_ReplaceEntity(Target entities, ItemSlot slot)
{
    LootTarget t = {LOOT_TGT_REPLACE_ENTITY, entities, {0, 0, 0}, {0, 0, 0}, slot, 0, 0};
    return t;
}

static inline LootTarget
LootTarget_ReplaceEntityCount(Target entities, ItemSlot slot, int count)
{
    LootTarget t = {LOOT_TGT_REPLACE_ENTITY, entities, {0, 0, 0}, {0, 0, 0}, slot, 1, count};
    return t;
}

/* --- loot source (POD tag union) ------------------------------------------ */
typedef enum {
    LOOT_SRC_FISH,
    LOOT_SRC_LOOT,
    LOOT_SRC_KILL,
    LOOT_SRC_MINE
} LootSourceKind;

typedef struct {
    LootSourceKind    kind;
    const Identifier *table;    /* FISH, LOOT (borrowed) */
    Vec3i             pos;       /* FISH, MINE */
    Target            entity;    /* KILL (borrowed) */
    const Identifier *tool;      /* FISH, MINE optional (borrowed; NULL = none) */
    int               has_tool;
} LootSource;

static inline LootSource
LootSource_Fish(const Identifier *table, Vec3i pos)
{
    LootSource s = {LOOT_SRC_FISH, table, pos, NULL, NULL, 0};
    return s;
}

static inline LootSource
LootSource_FishTool(const Identifier *table, Vec3i pos, const Identifier *tool)
{
    LootSource s = {LOOT_SRC_FISH, table, pos, NULL, tool, 1};
    return s;
}

static inline LootSource
LootSource_Loot(const Identifier *table)
{
    LootSource s = {LOOT_SRC_LOOT, table, {0, 0, 0}, NULL, NULL, 0};
    return s;
}

static inline LootSource
LootSource_Kill(Target entity)
{
    LootSource s = {LOOT_SRC_KILL, NULL, {0, 0, 0}, entity, NULL, 0};
    return s;
}

static inline LootSource
LootSource_Mine(Vec3i pos)
{
    LootSource s = {LOOT_SRC_MINE, NULL, pos, NULL, NULL, 0};
    return s;
}

static inline LootSource
LootSource_MineTool(Vec3i pos, const Identifier *tool)
{
    LootSource s = {LOOT_SRC_MINE, NULL, pos, NULL, tool, 1};
    return s;
}

/* --- assembly ------------------------------------------------------------- */
static inline int
_Loot_AppendTarget(McfStrRef cmd, LootTarget t)
{
    switch (t.kind) {
        case LOOT_TGT_GIVE:
            if (t.players == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "give ") != 0) return -1;
            return McfStrRef_AppendCString(cmd, Target_CStr(t.players));
        case LOOT_TGT_INSERT:
            if (McfStrRef_AppendLiteral(cmd, "insert ") != 0) return -1;
            return _Command_AppendVec3i(cmd, t.iblock);
        case LOOT_TGT_SPAWN:
            if (McfStrRef_AppendLiteral(cmd, "spawn ") != 0) return -1;
            return _Command_AppendVec3d(cmd, t.dpos);
        case LOOT_TGT_REPLACE_BLOCK:
            if (McfStrRef_AppendLiteral(cmd, "replace block ") != 0) return -1;
            if (_Command_AppendVec3i(cmd, t.iblock) != 0) return -1;
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
            if (ItemSlot_AppendTo(cmd, t.slot) != 0) return -1;
            break;
        case LOOT_TGT_REPLACE_ENTITY:
            if (t.players == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "replace entity ") != 0) return -1;
            if (McfStrRef_AppendCString(cmd, Target_CStr(t.players)) != 0) return -1;
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
            if (ItemSlot_AppendTo(cmd, t.slot) != 0) return -1;
            break;
        default:
            return -1;
    }
    if (t.has_count) {
        if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
        return McfStrRef_AppendInt(cmd, t.count);
    }
    return 0;
}

static inline int
_Loot_AppendTool(McfStrRef cmd, const Identifier *tool)
{
    if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
    return McfStrRef_AppendIdentifier(cmd, tool);
}

static inline int
_Loot_AppendSource(McfStrRef cmd, LootSource s)
{
    switch (s.kind) {
        case LOOT_SRC_FISH:
            if (McfStrRef_AppendLiteral(cmd, "fish ") != 0) return -1;
            if (McfStrRef_AppendIdentifier(cmd, s.table) != 0) return -1;
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
            if (_Command_AppendVec3i(cmd, s.pos) != 0) return -1;
            if (s.has_tool) return _Loot_AppendTool(cmd, s.tool);
            return 0;
        case LOOT_SRC_LOOT:
            if (McfStrRef_AppendLiteral(cmd, "loot ") != 0) return -1;
            return McfStrRef_AppendIdentifier(cmd, s.table);
        case LOOT_SRC_KILL:
            if (s.entity == NULL) return -1;
            if (McfStrRef_AppendLiteral(cmd, "kill ") != 0) return -1;
            return McfStrRef_AppendCString(cmd, Target_CStr(s.entity));
        case LOOT_SRC_MINE:
            if (McfStrRef_AppendLiteral(cmd, "mine ") != 0) return -1;
            if (_Command_AppendVec3i(cmd, s.pos) != 0) return -1;
            if (s.has_tool) return _Loot_AppendTool(cmd, s.tool);
            return 0;
        default:
            return -1;
    }
}

/* loot <target> <source> */
static inline int
loot(LootTarget target, LootSource source)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("loot ");
    if (cmd == NULL) {
        return -1;
    }
    if (_Loot_AppendTarget(cmd, target) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        _Loot_AppendSource(cmd, source) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

#ifdef __cplusplus
}
#endif
