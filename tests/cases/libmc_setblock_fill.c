#include <minecraft.h>

static _Block TEST_BLOCK_STONE = {
    {"minecraft", "stone"},
    0,
    "block.minecraft.stone",
    6.0f,
    0.6f,
    0,
};

static _Block TEST_BLOCK_DIRT = {
    {"minecraft", "dirt"},
    0,
    "block.minecraft.dirt",
    0.5f,
    0.6f,
    0,
};

static _Block TEST_BLOCK_OAK_PLANKS = {
    {"minecraft", "oak_planks"},
    0,
    "block.minecraft.oak_planks",
    3.0f,
    0.6f,
    0,
};

static _Block TEST_BLOCK_GLASS = {
    {"minecraft", "glass"},
    0,
    "block.minecraft.glass",
    0.3f,
    0.6f,
    0,
};

int main(void) {
    int r1;
    int r2;
    int r3;
    int r4;

    r1 = setblock((Vec3i){0, 80, 0}, &TEST_BLOCK_STONE, REPLACE);
    r2 = setblock_unsafe(0, 80, 0, Block_EnsureMcfName(&TEST_BLOCK_DIRT), REPLACE);
    r3 = fill((Vec3i){0, 81, 0}, (Vec3i){0, 81, 0}, &TEST_BLOCK_OAK_PLANKS, FILL_REPLACE);
    r4 = fill_unsafe(0, 81, 0, 0, 81, 0, Block_EnsureMcfName(&TEST_BLOCK_GLASS), FILL_REPLACE);

    if (r1 != 1)
        return 101;
    if (r2 != 1)
        return 102;
    if (r3 != 1)
        return 103;
    if (r4 != 1)
        return 104;

    return 0;
}
