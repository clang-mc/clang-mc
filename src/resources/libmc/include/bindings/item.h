#pragma once

/* Hand-written binding (schema marks 'item' as hand_written). /item combines the
 * block|entity holder union (shared DataTarget, storage excluded), an item-slot
 * token, item / item-modifier identifiers and optional counts — beyond the flat
 * variant model. Commands are assembled as fully-concrete text and run for their
 * result via _Command_ExecResultAndRelease (see CommandSupport.h). */

#include "bindings/CommandSupport.h"
#include "util/DataTarget.h"
#include "util/ItemSlot.h"

#ifdef __cplusplus
extern "C" {
#endif

/* /item holders are block|entity only (never storage). */
static inline int
_Item_AppendHolder(McfStrRef cmd, DataTarget holder)
{
    if (holder.kind == DATA_TARGET_STORAGE) {
        return -1;
    }
    return DataTarget_AppendTo(cmd, holder);
}

static inline int
_Item_Begin(McfStrRef *cmd_out, const char *lead, DataTarget holder, ItemSlot slot)
{
    McfStrRef cmd;

    cmd = McfStrRef_FromLiteral(lead);
    if (cmd == NULL) {
        return -1;
    }
    if (_Item_AppendHolder(cmd, holder) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        ItemSlot_AppendTo(cmd, slot) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    *cmd_out = cmd;
    return 0;
}

/* item modify (block|entity) <slot> <modifier> */
static inline int
item_modify(DataTarget holder, ItemSlot slot, const Identifier *modifier)
{
    McfStrRef cmd;

    if (_Item_Begin(&cmd, "item modify ", holder, slot) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        McfStrRef_AppendIdentifier(cmd, modifier) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* item replace (block|entity) <slot> with <item> */
static inline int
item_replace_with(DataTarget holder, ItemSlot slot, const Identifier *item)
{
    McfStrRef cmd;

    if (_Item_Begin(&cmd, "item replace ", holder, slot) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " with ") != 0 ||
        McfStrRef_AppendIdentifier(cmd, item) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* item replace (block|entity) <slot> with <item> <count> */
static inline int
item_replace_with_count(DataTarget holder, ItemSlot slot, const Identifier *item, int count)
{
    McfStrRef cmd;

    if (_Item_Begin(&cmd, "item replace ", holder, slot) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " with ") != 0 ||
        McfStrRef_AppendIdentifier(cmd, item) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        McfStrRef_AppendInt(cmd, count) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* item replace (block|entity) <slot> from (block|entity) <slot> */
static inline int
item_replace_from(DataTarget dst, ItemSlot dst_slot, DataTarget src, ItemSlot src_slot)
{
    McfStrRef cmd;

    if (_Item_Begin(&cmd, "item replace ", dst, dst_slot) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " from ") != 0 ||
        _Item_AppendHolder(cmd, src) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        ItemSlot_AppendTo(cmd, src_slot) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

/* item replace (block|entity) <slot> from (block|entity) <slot> <modifier> */
static inline int
item_replace_from_modified(DataTarget dst, ItemSlot dst_slot,
                           DataTarget src, ItemSlot src_slot,
                           const Identifier *modifier)
{
    McfStrRef cmd;

    if (_Item_Begin(&cmd, "item replace ", dst, dst_slot) != 0) {
        return -1;
    }
    if (McfStrRef_AppendLiteral(cmd, " from ") != 0 ||
        _Item_AppendHolder(cmd, src) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        ItemSlot_AppendTo(cmd, src_slot) != 0 ||
        McfStrRef_AppendLiteral(cmd, " ") != 0 ||
        McfStrRef_AppendIdentifier(cmd, modifier) != 0) {
        McfStrRef_Release(cmd);
        return -1;
    }
    return _Command_ExecResultAndRelease(cmd);
}

#ifdef __cplusplus
}
#endif
