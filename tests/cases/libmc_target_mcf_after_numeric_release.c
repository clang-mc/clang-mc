#include <minecraft.h>

int main(void) {
    Target player;
    McfStrRef name;
    McfStrRef x;
    McfStrRef y;
    McfStrRef z;
    int before;
    int after;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;
    name = Target_GetMcfStrRef(player);
    before = McfStrRef_SlotId(name);
    __asm volatile (
        "inline data modify storage std:vm trace_ptrs_before set value %{player: %0, ref: %1, slot: %2%}"
        :
        : "r"(player), "r"(name), "r"(name->slot_id)
    );

    x = McfStrRef_FromDouble(2.5);
    y = McfStrRef_FromDouble(82.0);
    z = McfStrRef_FromDouble(2.5);
    name = Target_GetMcfStrRef(player);
    __asm volatile (
        "inline data modify storage std:vm trace_ptrs_created set value %{player: %0, ref: %1, slot: %2%}"
        :
        : "r"(player), "r"(name), "r"(name->slot_id)
    );
    McfStrRef_Release(x);
    McfStrRef_Release(y);
    McfStrRef_Release(z);

    name = Target_GetMcfStrRef(player);
    after = McfStrRef_SlotId(name);
    __asm volatile (
        "inline data modify storage std:vm trace_ptrs_after set value %{player: %0, ref: %1, slot: %2%}"
        :
        : "r"(player), "r"(name), "r"(name->slot_id)
    );
    Target_Release(player);

    if (before != 0)
        return 110 + before;
    if (after != 0)
        return 120 + after;
    return 0;
}
