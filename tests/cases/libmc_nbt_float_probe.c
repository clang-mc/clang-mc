#include <minecraft.h>

/*
 * Exercises Nbt_SetFloat end-to-end. The float is converted to its decimal
 * text (McfStrRef_FromFloat) and suffixed with 'f' in Nbt.c, so the runtime
 * macro `set value $(val)` in nbt_set_int stores a Minecraft float literal
 * (e.g. 42f) rather than a double. Nbt_Get reads it back via `data get`
 * (scale 1), which truncates toward zero to an int.
 *
 * Returns 0 on success; a distinct non-zero code marks the first failing step
 * (surfaced as rax by the datapack harness). rsp must stay 16384 throughout —
 * a macro line aborting mid-function would skip the epilogue and leak rsp.
 */
int main(void) {
    Nbt a;

    a = Nbt_New();
    if (a == 0)
        return 100;

    /* whole-number float round-trips exactly through data get */
    if (Nbt_SetFloat(a, 42.0f) != 0)
        return 101;
    if (Nbt_Get(a) != 42)
        return 102;

    /* fractional float: data get (scale 1) truncates 7.75 -> 7 */
    if (Nbt_SetFloat(a, 7.75f) != 0)
        return 103;
    if (Nbt_Get(a) != 7)
        return 104;

    /* negative whole-number float */
    if (Nbt_SetFloat(a, -13.0f) != 0)
        return 105;
    if (Nbt_Get(a) != -13)
        return 106;

    /* overwrite back to an integer-valued float to confirm reuse */
    if (Nbt_SetFloat(a, 5.0f) != 0)
        return 107;
    if (Nbt_Get(a) != 5)
        return 108;

    Nbt_Release(a);
    return 0;
}
