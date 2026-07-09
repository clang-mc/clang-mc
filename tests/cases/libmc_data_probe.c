#include <minecraft.h>

/*
 * Exercises the hand-written /data binding against a storage target (fully
 * headless/deterministic — no world block or entity needed). Covers:
 *   modify set from an NBT heap slot, get, merge (macro helper), remove,
 *   and modify set from another storage path (DataSrc_From).
 * Returns 0 on success; a distinct non-zero code marks the first failure.
 * rsp must stay 16384 (a macro abort would leak it).
 */
int main(void) {
    Identifier id;
    DataTarget store;
    Nbt v;
    Nbt compound;
    int sid;

    if (!Identifier_TryParse("libmc:probe", &id))
        return 90;
    store = DataTarget_Storage(&id);

    /* value 42 lives in an NBT heap slot; modify references it natively */
    v = Nbt_New();
    if (v == 0)
        return 100;
    if (Nbt_SetInt(v, 42) != 0)
        return 101;

    if (data_modify(store, NbtPath_Lit("x"), DataMod_Set(), DataSrc_Value(v)) < 0)
        return 102;
    if (data_get_path(store, NbtPath_Lit("x")) != 42)
        return 103;

    /* merge a compound {y:7} into the storage root (macro-substitution helper) */
    compound = Nbt_New();
    if (compound == 0)
        return 104;
    sid = Nbt_SlotId(compound);
    if (sid < 0)
        return 105;
    __asm volatile (
        "inline $data modify storage std:vm nbt.slots[%0].value set value %{y: 7%}"
        :
        : "r"(sid)
    );
    if (data_merge(store, compound) < 0)
        return 106;
    if (data_get_path(store, NbtPath_Lit("y")) != 7)
        return 107;

    /* copy from another storage path: z <- y */
    if (data_modify(store, NbtPath_Lit("z"), DataMod_Set(),
                    DataSrc_From(store, NbtPath_Lit("y"))) < 0)
        return 108;
    if (data_get_path(store, NbtPath_Lit("z")) != 7)
        return 109;

    /* remove reports the number of removed nodes (1) */
    if (data_remove(store, NbtPath_Lit("x")) != 1)
        return 110;

    Nbt_Release(v);
    Nbt_Release(compound);
    Identifier_Clear(&id);
    return 0;
}
