#include <minecraft.h>

/*
 * /execute fluent-builder runtime probe — headless and deterministic via
 * score-based conditions (no entities needed). Exercises if/unless score,
 * multi-clause chaining, store result, and the run_str terminal. Returns 0 on
 * success; distinct codes mark the first failure. rsp must stay 16384.
 */
int main(void) {
    Target g;
    Target r;
    Target o;

    scoreboard_objectives_add("libmc_ex", "dummy");   /* may be 0 if exists */

    g = Target_FromLiteral("#ex_g");
    r = Target_FromLiteral("#ex_r");
    o = Target_FromLiteral("#ex_o");
    if (g == 0 || r == 0 || o == 0)
        return 90;

    scoreboard_players_set(g, "libmc_ex", 5);
    scoreboard_players_set(r, "libmc_ex", 0);

    /* execute if score #ex_g libmc_ex matches 5 run <set #ex_r 1> — condition
     * holds, so the inner command runs. */
    {
        Execute e = execute_begin();
        execute_if_score_matches(e, g, "libmc_ex", "5");
        if (execute_run_str(e, "scoreboard players set #ex_r libmc_ex 1") < 0)
            return 100;
    }
    if (scoreboard_players_get(r, "libmc_ex") != 1)
        return 101;

    /* unless score matches 5 — condition holds, so unless is false: not run. */
    scoreboard_players_set(r, "libmc_ex", 0);
    {
        Execute e = execute_begin();
        execute_unless_score_matches(e, g, "libmc_ex", "5");
        execute_run_str(e, "scoreboard players set #ex_r libmc_ex 7");
    }
    if (scoreboard_players_get(r, "libmc_ex") != 0)
        return 102;

    /* multi-clause chain: two conditions that both hold. */
    {
        Execute e = execute_begin();
        execute_if_score_matches(e, g, "libmc_ex", "1..10");
        execute_if_score_matches(e, r, "libmc_ex", "0");
        execute_run_str(e, "scoreboard players set #ex_r libmc_ex 3");
    }
    if (scoreboard_players_get(r, "libmc_ex") != 3)
        return 103;

    /* store result score #ex_o libmc_ex run <get #ex_g> — captures 5 into #ex_o. */
    {
        Execute e = execute_begin();
        execute_store_result_score(e, o, "libmc_ex");
        execute_run_str(e, "scoreboard players get #ex_g libmc_ex");
    }
    if (scoreboard_players_get(o, "libmc_ex") != 5)
        return 104;

    /* an abandoned builder must free cleanly without running. */
    execute_end(execute_at(execute_begin(), TARGET_THIS));

    scoreboard_players_reset(g, "libmc_ex");
    scoreboard_players_reset(r, "libmc_ex");
    scoreboard_players_reset(o, "libmc_ex");
    Target_Release(g);
    Target_Release(r);
    Target_Release(o);
    return 0;
}
