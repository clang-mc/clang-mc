#pragma once

/* Hand-written binding (schema marks 'data' as hand_written; the generator does
 * not touch this file). See minecraft-libmc plan: /data needs an NBT-value type,
 * an NBT-path type and a block|entity|storage target union, none of which the
 * schema/generator type system can express. */

#include "bindings/CommandSupport.h"
#include "util/DataTarget.h"
#include "util/Nbt.h"
#include "util/NbtPath.h"

#ifdef __cplusplus
extern "C" {
#endif

/* --- data modify operation (POD tag union) -------------------------------- */
/* The operation keyword; `insert` additionally carries a list index. Kept
 * separate from the source (DataSrc) so data_modify mirrors the vanilla
 * `<path> <operation> <source>` argument order. */
typedef enum {
    DATA_MOD_SET,
    DATA_MOD_MERGE,
    DATA_MOD_APPEND,
    DATA_MOD_PREPEND,
    DATA_MOD_INSERT
} DataModKind;

typedef struct {
    DataModKind kind;
    int         index; /* DATA_MOD_INSERT */
} DataMod;

static inline DataMod DataMod_Set(void)     { DataMod m; m.kind = DATA_MOD_SET;     m.index = 0; return m; }
static inline DataMod DataMod_Merge(void)   { DataMod m; m.kind = DATA_MOD_MERGE;   m.index = 0; return m; }
static inline DataMod DataMod_Append(void)  { DataMod m; m.kind = DATA_MOD_APPEND;  m.index = 0; return m; }
static inline DataMod DataMod_Prepend(void) { DataMod m; m.kind = DATA_MOD_PREPEND; m.index = 0; return m; }
static inline DataMod DataMod_Insert(int index) { DataMod m; m.kind = DATA_MOD_INSERT; m.index = index; return m; }

/* --- data modify source (POD tag union) ----------------------------------- */
/* value: an NBT heap slot referenced natively (`from storage nbt.slots[N].value`)
 *        — the NBT value is never serialized into command text.
 * from:  copy from another block/entity/storage path.
 * string: substring of a stringified source, with an optional [start end] range.
 * The embedded Nbt / DataTarget are borrowed; the caller owns them and must keep
 * them alive across the data_modify call. */
typedef enum {
    DATA_SRC_VALUE,
    DATA_SRC_FROM,
    DATA_SRC_STRING
} DataSrcKind;

typedef struct {
    DataSrcKind kind;
    Nbt         value;       /* DATA_SRC_VALUE (borrowed) */
    DataTarget  from_target; /* DATA_SRC_FROM / DATA_SRC_STRING */
    NbtPath     from_path;   /* DATA_SRC_FROM / DATA_SRC_STRING */
    int         has_range;   /* DATA_SRC_STRING: [start end] present */
    int         start;       /* DATA_SRC_STRING */
    int         end;         /* DATA_SRC_STRING */
} DataSrc;

static inline DataSrc
DataSrc_Value(Nbt value)
{
    DataSrc s;

    s.kind = DATA_SRC_VALUE;
    s.value = value;
    s.from_target = DataTarget_Block((Vec3i){0, 0, 0});
    s.from_path = NbtPath_Root();
    s.has_range = 0;
    s.start = 0;
    s.end = 0;
    return s;
}

static inline DataSrc
DataSrc_From(DataTarget target, NbtPath path)
{
    DataSrc s;

    s.kind = DATA_SRC_FROM;
    s.value = NULL;
    s.from_target = target;
    s.from_path = path;
    s.has_range = 0;
    s.start = 0;
    s.end = 0;
    return s;
}

static inline DataSrc
DataSrc_String(DataTarget target, NbtPath path)
{
    DataSrc s;

    s.kind = DATA_SRC_STRING;
    s.value = NULL;
    s.from_target = target;
    s.from_path = path;
    s.has_range = 0;
    s.start = 0;
    s.end = 0;
    return s;
}

static inline DataSrc
DataSrc_StringRange(DataTarget target, NbtPath path, int start, int end)
{
    DataSrc s;

    s.kind = DATA_SRC_STRING;
    s.value = NULL;
    s.from_target = target;
    s.from_path = path;
    s.has_range = 1;
    s.start = start;
    s.end = end;
    return s;
}

/* --- command-text assembly ------------------------------------------------ */
/* get/remove/modify assemble a fully-concrete command string (all tokens known,
 * including the source slot's *index number*) and run it with McfStrRef_Exec;
 * the NBT value stays in its heap slot, referenced by nbt.slots[N].value. Only
 * data merge (root, literal-NBT-only grammar) needs a macro helper (below). */

static inline int
_Data_AppendSlotRef(McfStrRef cmd, Nbt value)
{
    int slot_id;

    slot_id = Nbt_SlotId(value);
    if (slot_id < 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, "from storage std:vm nbt.slots[") != 0) {
        return -1;
    }
    if (McfStrRef_AppendInt(cmd, slot_id) != 0) {
        return -1;
    }
    return McfStrRef_AppendLiteral(cmd, "].value");
}

static inline int
_Data_AppendModify(McfStrRef cmd, NbtPath path, DataMod op, DataSrc src)
{
    if (McfStrRef_AppendLiteral(cmd, " ") != 0) {
        return -1;
    }
    if (NbtPath_AppendTo(cmd, path) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " ") != 0) {
        return -1;
    }

    switch (op.kind) {
        case DATA_MOD_SET:
            if (McfStrRef_AppendLiteral(cmd, "set ") != 0) return -1;
            break;
        case DATA_MOD_MERGE:
            if (McfStrRef_AppendLiteral(cmd, "merge ") != 0) return -1;
            break;
        case DATA_MOD_APPEND:
            if (McfStrRef_AppendLiteral(cmd, "append ") != 0) return -1;
            break;
        case DATA_MOD_PREPEND:
            if (McfStrRef_AppendLiteral(cmd, "prepend ") != 0) return -1;
            break;
        case DATA_MOD_INSERT:
            if (McfStrRef_AppendLiteral(cmd, "insert ") != 0) return -1;
            if (McfStrRef_AppendInt(cmd, op.index) != 0) return -1;
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
            break;
        default:
            return -1;
    }

    switch (src.kind) {
        case DATA_SRC_VALUE:
            return _Data_AppendSlotRef(cmd, src.value);
        case DATA_SRC_FROM:
            if (McfStrRef_AppendLiteral(cmd, "from ") != 0) return -1;
            if (DataTarget_AppendTo(cmd, src.from_target) != 0) return -1;
            if (NbtPath_IsEmpty(src.from_path)) return 0;
            if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
            return NbtPath_AppendTo(cmd, src.from_path);
        case DATA_SRC_STRING:
            if (McfStrRef_AppendLiteral(cmd, "string ") != 0) return -1;
            if (DataTarget_AppendTo(cmd, src.from_target) != 0) return -1;
            if (!NbtPath_IsEmpty(src.from_path)) {
                if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
                if (NbtPath_AppendTo(cmd, src.from_path) != 0) return -1;
            }
            if (src.has_range) {
                if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
                if (McfStrRef_AppendInt(cmd, src.start) != 0) return -1;
                if (McfStrRef_AppendLiteral(cmd, " ") != 0) return -1;
                if (McfStrRef_AppendInt(cmd, src.end) != 0) return -1;
            }
            return 0;
        default:
            return -1;
    }
}

/* Run a fully-built command and capture its numeric result (data get's queried
 * value, or data modify/remove's node count). Uses _Command_ExecResult, whose
 * `return run` path propagates the real result — McfStrRef_Exec would report
 * only the command-success flag. See CommandSupport.h. */
static inline int
_Data_ExecBuilt(McfStrRef cmd)
{
    return _Command_ExecResultAndRelease(cmd);
}

/* --- public API ----------------------------------------------------------- */

/* data get <target> */
static inline int
data_get(DataTarget target)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("data get ");
    if (cmd == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(cmd, target) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Data_ExecBuilt(cmd);
}

/* data get <target> <path> */
static inline int
data_get_path(DataTarget target, NbtPath path)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("data get ");
    if (cmd == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(cmd, target) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        NbtPath_AppendTo(cmd, path) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Data_ExecBuilt(cmd);
}

/* data get <target> <path> <scale> */
static inline int
data_get_scaled(DataTarget target, NbtPath path, double scale)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("data get ");
    if (cmd == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(cmd, target) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        NbtPath_AppendTo(cmd, path) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        McfStrRef_AppendDouble(cmd, scale) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Data_ExecBuilt(cmd);
}

/* data remove <target> <path> */
static inline int
data_remove(DataTarget target, NbtPath path)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("data remove ");
    if (cmd == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(cmd, target) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        NbtPath_AppendTo(cmd, path) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Data_ExecBuilt(cmd);
}

/* data modify <target> <path> <operation> <source> */
static inline int
data_modify(DataTarget target, NbtPath path, DataMod op, DataSrc src)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral("data modify ");
    if (cmd == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(cmd, target) != 0 ||
        _Data_AppendModify(cmd, path, op, src) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Data_ExecBuilt(cmd);
}

/* data merge <target> <nbt>
 *
 * `data merge` takes only a *literal* compound (no `from storage`), so the NBT
 * slot value is macro-substituted into the command via a hoisted helper. The
 * target text and the slot value are marshalled into s6.cmd and $(...)-expanded
 * by _ll_shared:z/libmc_data_merge, mirroring the generated Template-A shape. */
__asm__(
"export _ll_shared:z/libmc_data_merge:\n"
"    inline $execute store result score r0 vm_regs run data merge $(target) $(value)\n"
"    ret\n"
);

static inline int
data_merge(DataTarget target, Nbt nbt)
{
    McfStrRef target_ref;
    int       target_slot;
    int       nbt_slot;
    int       ret;

    target_ref = McfStrRef_New();
    if (target_ref == NULL) {
        return -1;
    }
    if (DataTarget_AppendTo(target_ref, target) != 0) {
        McfStrRef_Release(target_ref);
        return -1;
    }
    target_slot = McfStrRef_SlotId(target_ref);
    nbt_slot = Nbt_SlotId(nbt);
    if (target_slot < 0 || nbt_slot < 0) {
        McfStrRef_Release(target_ref);
        return -1;
    }

    __asm volatile (
        "inline data modify storage std:vm s6.cmd set value %{target: \"\", value: 0%}\n"
        "inline $data modify storage std:vm s6.cmd.target set from storage std:vm mcstr.slots[%1].value\n"
        "inline $data modify storage std:vm s6.cmd.value set from storage std:vm nbt.slots[%2].value\n"
        "inline function _ll_shared:z/libmc_data_merge with storage std:vm s6.cmd\n"
        "inline scoreboard players operation %0 vm_regs = r0 vm_regs"
        : "=r"(ret)
        : "r"(target_slot), "r"(nbt_slot)
    );
    McfStrRef_Release(target_ref);
    return ret;
}

#ifdef __cplusplus
}
#endif
