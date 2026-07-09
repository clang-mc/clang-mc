#include <minecraft.h>

/*
 * Exercises the runtime NBT heap end-to-end:
 *   New -> SetInt -> Get -> slot-to-slot copy -> Retain/Release.
 * Returns 0 on success; a distinct non-zero code marks the first failing step
 * (surfaced as rax by the datapack harness). rsp must stay 16384 throughout —
 * a macro line aborting mid-function would skip the epilogue and leak rsp.
 */
int main(void) {
    Nbt a;
    Nbt b;

    a = Nbt_New();
    if (a == 0)
        return 100;

    if (Nbt_SetInt(a, 42) != 0)
        return 101;
    if (Nbt_Get(a) != 42)
        return 102;

    /* second slot, native slot->slot copy */
    b = Nbt_New();
    if (b == 0)
        return 103;
    if (Nbt_SetFromSlot(b, a) != 0)
        return 104;
    if (Nbt_Get(b) != 42)
        return 105;

    /* refcount round-trip must not free the live slot */
    Nbt_Retain(a);
    if (Nbt_Get(a) != 42)
        return 106;
    Nbt_Release(a);
    if (Nbt_Get(a) != 42)
        return 107;

    Nbt_Release(a);
    Nbt_Release(b);
    return 0;
}
