#include <minecraft.h>

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
    McfStrRef yaw;
    McfStrRef pitch;
    int r1;
    int r2;
    int slot;
    int pitch_slot;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    r1 = summon(&TEST_ARMOR_STAND, (Vec3d){2.5, 82.0, 2.5});
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    r2 = tp(player, (Vec3d){4.5, 82.0, 4.5});
    __asm volatile ("inline data modify storage std:vm trace set value \"d\"");

    yaw = McfStrRef_FromFloat(90.0f);
    __asm volatile ("inline data modify storage std:vm trace set value \"e\"");
    if (yaw == 0) {
        Target_Release(player);
        return 101;
    }
    slot = McfStrRef_SlotId(yaw);
    __asm volatile (
        "inline data modify storage std:vm trace_yaw_slot set value %0"
        :
        : "r"(slot)
    );
    __asm volatile ("inline data modify storage std:vm trace set value \"f\"");
    pitch = McfStrRef_FromFloat(0.0f);
    __asm volatile ("inline data modify storage std:vm trace set value \"g\"");
    if (pitch == 0) {
        McfStrRef_Release(yaw);
        Target_Release(player);
        return 102;
    }
    pitch_slot = McfStrRef_SlotId(pitch);
    __asm volatile (
        "inline data modify storage std:vm trace_pitch_slot set value %0"
        :
        : "r"(pitch_slot)
    );
    McfStrRef_Release(yaw);
    McfStrRef_Release(pitch);
    Target_Release(player);

    if (r1 != 1)
        return 110 + r1;
    if (r2 != 1)
        return 120 + r2;
    if (slot < 0)
        return 130;
    if (pitch_slot < 0)
        return 131;
    return 0;
}
