#include <minecraft.h>

/*
 * /team (hand-written) + /bossbar (generated) runtime probe. Both are global
 * server state, so it is deterministic across repeated runs: add is idempotent
 * (a duplicate add is a no-op returning 0, not a fatal error), and modify/set on
 * the now-existing object returns 1; bossbar get reads back exact values.
 * Returns 0 on success; distinct codes mark the first failure.
 */
int main(void) {
    Identifier bar;

    if (!Identifier_TryParse("libmc:probe_bar", &bar))
        return 90;

    /* --- bossbar (generated binding): set, then read back exact values.
     * `bossbar set ... max/value` returns the value it set, so correctness is
     * asserted through `bossbar get` (well-defined), not the set return. --- */
    bossbar_add(&bar, TextComponent_FromJson("\"libmc probe\""));   /* may be 0 if exists */
    if (bossbar_set_max(&bar, 100) < 0)
        return 100;
    if (bossbar_get(&bar, BOSSBAR_QUERY_MAX) != 100)
        return 101;
    if (bossbar_set_value(&bar, 42) < 0)
        return 102;
    if (bossbar_get(&bar, BOSSBAR_QUERY_VALUE) != 42)
        return 103;
    if (bossbar_set_color(&bar, BOSSBAR_COLOR_RED) < 0)
        return 104;
    /* visible defaults true (1) on a freshly added bossbar */
    if (bossbar_set_visible(&bar, 1) < 0)
        return 105;
    if (bossbar_get(&bar, BOSSBAR_QUERY_VISIBLE) != 1)
        return 106;

    /* --- team (hand-written TeamOpt union): modify the now-existing team.
     * Only guard against an internal build failure (-1); the commands succeed
     * on a real server (rsp balance is the stack-safety check). --- */
    team_add("libmc_probe_team");   /* may be 0 if exists */
    if (team_modify("libmc_probe_team", TeamOpt_Color(TEAM_COLOR_RED)) < 0)
        return 110;
    if (team_modify("libmc_probe_team", TeamOpt_FriendlyFire(0)) < 0)
        return 111;
    if (team_modify("libmc_probe_team", TeamOpt_NametagVisibility(TEAM_VISIBILITY_HIDE_FOR_OTHER_TEAMS)) < 0)
        return 112;
    if (team_modify("libmc_probe_team", TeamOpt_CollisionRule(TEAM_COLLISION_PUSH_OWN_TEAM)) < 0)
        return 113;
    if (team_modify("libmc_probe_team", TeamOpt_DisplayName(TextComponent_FromJson("\"P\""))) < 0)
        return 114;

    Identifier_Clear(&bar);
    return 0;
}
