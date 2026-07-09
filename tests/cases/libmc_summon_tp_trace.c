#include <minecraft.h>
#include <commands.h>

static _Entity TEST_ARMOR_STAND = {
    {"minecraft", "armor_stand"},
    0,
    "entity.minecraft.armor_stand",
    ENTITY_SPAWN_GROUP_MISC,
    0.5f,
    1.975f,
    1.7775f,
};

int main(void) {
    Target player;
    int r1;
    int r2;
    int r3;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    r1 = summon(&TEST_ARMOR_STAND, (Vec3d){2.5, 82.0, 2.5});
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    r2 = tp(player, (Vec3d){4.5, 82.0, 4.5});
    __asm volatile ("inline data modify storage std:vm trace set value \"d\"");
    r3 = tp_rot(player, (Vec3d){6.5, 82.0, 6.5}, (Vec2f){90.0f, 0.0f});
    __asm volatile ("inline data modify storage std:vm trace set value \"e\"");

    Target_Release(player);
    __asm volatile ("inline data modify storage std:vm trace set value \"f\"");

    if (r1 != 1)
        return 101;
    if (r2 != 1)
        return 102;
    if (r3 != 1)
        return 103;

    return 0;
}
