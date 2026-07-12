/* Hand-written companion to bindings/data.h (schema marks 'data' as
 * hand_written; the generator does not touch it). */

/*
 * File-scope command-helper label definition for 'data', split out of
 * bindings/data.h so that a user translation unit which #includes that header
 * does NOT re-emit this `export` label (it is already provided, exactly once,
 * by the LTO-built _ll_libmc.mch that every mcasm program includes). This file
 * is compiled once into the libmc stdlib bundle.
 *
 * See the generated companion .c files under bindings/ for the same split
 * applied schema-wide.
 */

__asm__(
"export _ll_shared:z/libmc_data_merge:\n"
"    inline $execute store result score r0 vm_regs run data merge $(target) $(value)\n"
"    ret\n"
);

#include "util/McfStrRef.h"
#include "util/Nbt.h"

/*
 * Out-of-line body for the _Data_AppendSlotRef helper declared in data.h. Kept
 * here (single definition in the stdlib bundle) rather than as a `static inline`
 * in the header so that a user TU using data_modify at -O0 references this one
 * copy instead of emitting a colliding `_Data_AppendSlotRef` label. Whole-program
 * LTO still inlines it into constant-folding callers (foo stays 4032).
 */
int _Data_AppendSlotRef(McfStrRef cmd, Nbt value)
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
