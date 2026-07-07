#include <minecraft.h>

/*
 * End-to-end coverage for command bindings added on top of the flat
 * single-line generator: the `bool` scalar type, the positional `literal`
 * pseudo-param (trailing keywords), and multi-variant string params.
 *
 * Only server-state-free commands are exercised here so the case is
 * deterministic in a headless, player-less VM context: `gamerule` never
 * targets an entity and always executes to completion (no aborted macro
 * line -> no rsp leak). Target/world dependent commands (give, effect,
 * advancement, ...) are validated at assemble time instead.
 */
int main(void) {
    String keep_inventory;
    String random_tick;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;

    keep_inventory = String_FromLiteral("keepInventory");
    random_tick = String_FromLiteral("randomTickSpeed");
    if (keep_inventory == 0 || random_tick == 0) {
        return 1;
    }

    /* bool param type -> "true"/"false" literal via _Command_FormatBoolRef. */
    r1 = gamerule_set_bool(keep_inventory, 1);
    r2 = gamerule_set_bool(keep_inventory, 0);
    /* string rule + int value. */
    r3 = gamerule_set_int(random_tick, 3);
    /* query variants (string param only). */
    r4 = gamerule_query(keep_inventory);
    r5 = gamerule_query(random_tick);

    /* Like libmc_weather_time, Minecraft's own result values here are not a
     * stable pass/fail signal; the harness verifies the calls compile, run,
     * and produce no datapack/server errors (log scan) and that rsp is
     * balanced. */
    (void)r1;
    (void)r2;
    (void)r3;
    (void)r4;
    (void)r5;

    String_Release(keep_inventory);
    String_Release(random_tick);
    return 0;
}
