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
    McfStrRef player_name;
    int before_slot;
    int after_summon_slot;
    McfStrRef x;
    int slot;
    int r1;
    int r2;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;
    player_name = Target_GetMcfStrRef(player);
    before_slot = McfStrRef_SlotId(player_name);
    __asm volatile (
        "inline data modify storage std:vm trace_before_slot set value %0"
        :
        : "r"(before_slot)
    );

    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    r1 = summon(&TEST_ARMOR_STAND, (Vec3d){2.5, 82.0, 2.5});
    player_name = Target_GetMcfStrRef(player);
    after_summon_slot = McfStrRef_SlotId(player_name);
    __asm volatile (
        "inline data modify storage std:vm trace_after_summon_slot set value %0"
        :
        : "r"(after_summon_slot)
    );
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    r2 = tp(player, (Vec3d){4.5, 82.0, 4.5});
    __asm volatile (
        "inline data modify storage std:vm trace_r2 set value %0\n"
        "inline data modify storage std:vm trace_tp_ls0 set from storage std:vm ls0\n"
        "inline data modify storage std:vm trace_tp_cmd set from storage std:vm s6.cmd\n"
        "inline data modify storage std:vm trace_tp_ret set from storage std:vm s6.ret"
        :
        : "r"(r2)
    );
    __asm volatile ("inline data modify storage std:vm trace set value \"d\"");

    x = McfStrRef_FromDouble(6.5);
    __asm volatile ("inline data modify storage std:vm trace set value \"e\"");
    slot = McfStrRef_SlotId(x);
    __asm volatile ("inline data modify storage std:vm trace set value \"f\"");
    McfStrRef_Release(x);
    Target_Release(player);

    if (r1 != 1)
        return 101;
    if (r2 != 1)
        return 120 + r2;
    if (slot < 0)
        return 103;
    return 0;
}
