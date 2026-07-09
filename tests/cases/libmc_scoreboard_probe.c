#include <minecraft.h>

/*
 * /scoreboard (generated) runtime probe — fully deterministic and headless:
 * a dummy objective plus fake score holders (#-prefixed names). Exercises
 * objectives add, players set/add/get and players operation (ScoreOp enum),
 * asserting exact score values via players get. Returns 0 on success.
 * (attribute is assemble-only — it needs a live entity with attributes.)
 */
int main(void) {
    Target a;
    Target b;

    scoreboard_objectives_add("libmc_obj", "dummy");   /* may be 0 if exists */

    a = Target_FromLiteral("#libmc_a");
    b = Target_FromLiteral("#libmc_b");
    if (a == 0 || b == 0)
        return 90;

    scoreboard_players_set(a, "libmc_obj", 10);
    if (scoreboard_players_get(a, "libmc_obj") != 10)
        return 100;

    scoreboard_players_add(a, "libmc_obj", 5);
    if (scoreboard_players_get(a, "libmc_obj") != 15)
        return 101;

    scoreboard_players_remove(a, "libmc_obj", 2);
    if (scoreboard_players_get(a, "libmc_obj") != 13)
        return 102;

    /* operation: a *= b  (13 * 3 = 39) */
    scoreboard_players_set(b, "libmc_obj", 3);
    scoreboard_players_operation(a, "libmc_obj", SCORE_OP_MUL, b, "libmc_obj");
    if (scoreboard_players_get(a, "libmc_obj") != 39)
        return 103;

    /* operation: swap a <> b, then a holds 3 */
    scoreboard_players_operation(a, "libmc_obj", SCORE_OP_SWAP, b, "libmc_obj");
    if (scoreboard_players_get(a, "libmc_obj") != 3)
        return 104;

    scoreboard_players_reset(a, "libmc_obj");
    scoreboard_players_reset(b, "libmc_obj");
    Target_Release(a);
    Target_Release(b);
    return 0;
}
