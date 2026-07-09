#include <minecraft.h>

/*
 * Deterministic /item runtime probe: place a chest, fill two slots via
 * item replace, cross-check the resulting Items list with the /data binding,
 * then clean up. Returns 0 on success; distinct codes mark failures.
 * (loot is assemble-only — its runtime needs loot tables / entities that would
 * pollute a headless world.)
 *
 * Block singletons (BLOCK_*) live in Blocks.c, which single-file test
 * compilation doesn't link, so we define local _Block values (as
 * libmc_setblock_fill.c does).
 */
static _Block TEST_BLOCK_CHEST = {
    {"minecraft", "chest"}, 0, "block.minecraft.chest", 2.5f, 0.6f, 0,
};
static _Block TEST_BLOCK_AIR = {
    {"minecraft", "air"}, 0, "block.minecraft.air", 0.0f, 0.6f, 0,
};

int main(void) {
    Identifier diamond;
    Identifier stone;
    DataTarget chest;
    Vec3i pos = {0, 100, 0};
    int rc;

    if (!Identifier_TryParse("minecraft:diamond", &diamond))
        return 90;
    if (!Identifier_TryParse("minecraft:stone", &stone))
        return 91;

    if (setblock(pos, &TEST_BLOCK_CHEST, SETBLOCK_REPLACE) < 0)
        return 100;

    chest = DataTarget_Block(pos);
    rc = item_replace_with(chest, ItemSlot_Lit("container.0"), &diamond);
    if (rc != 1)
        return 101;
    rc = item_replace_with_count(chest, ItemSlot_Lit("container.1"), &stone, 5);
    if (rc != 1)
        return 102;

    /* the chest's Items list should now hold exactly the two stacks */
    if (data_get_path(chest, NbtPath_Lit("Items")) != 2)
        return 103;

    setblock(pos, &TEST_BLOCK_AIR, SETBLOCK_REPLACE);

    Identifier_Clear(&diamond);
    Identifier_Clear(&stone);
    return 0;
}
