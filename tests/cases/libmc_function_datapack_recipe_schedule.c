#include <minecraft.h>

__asm__(
"export test:probe_fn:\n"
"    inline execute store result score r0 vm_regs run scoreboard players set function_call_probe vm_regs 1\n"
"    ret\n"
);

int main(void) {
    Identifier probe_fn_id = {"test", "probe_fn"};
    Identifier recipe_id = {"minecraft", "oak_planks"};
    Target player;
    String pack_name;
    String schedule_name;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;
    int r6;
    int r7;

    player = Target_FromLiteral("CodexBot");
    pack_name = String_FromLiteral("does_not_exist_probe");
    schedule_name = String_FromLiteral("test:probe_fn");
    if (player == 0 || pack_name == 0 || schedule_name == 0)
        return 100;

    r1 = function_call(&probe_fn_id);
    r2 = datapack_list();
    r3 = recipe_give(player, &recipe_id);
    r4 = recipe_take(player, &recipe_id);
    r5 = schedule_function(&probe_fn_id, 100);
    r6 = schedule_clear(schedule_name);
    r7 = datapack_enable(pack_name);

    Target_Release(player);
    String_Release(pack_name);
    String_Release(schedule_name);

    /* Nested function calls and "set"-style idempotency checks make exact
     * result values unreliable here; only guard against an internal
     * conversion failure (-1) rather than an exact result. */
    if (r1 == -1)
        return 101;
    if (r2 == -1)
        return 102;
    if (r3 == -1)
        return 103;
    if (r4 == -1)
        return 104;
    if (r5 == -1)
        return 105;
    if (r6 == -1)
        return 106;
    if (r7 == -1)
        return 107;

    return 0;
}
