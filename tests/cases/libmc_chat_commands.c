#include <minecraft.h>

int main(void) {
    String action;
    String dm;
    String team_msg;
    Target player;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;

    action = String_FromLiteral("waves");
    dm = String_FromLiteral("clang-mc msg test");
    team_msg = String_FromLiteral("clang-mc teammsg test");
    player = Target_FromLiteral("CodexBot");
    if (action == 0 || dm == 0 || team_msg == 0 || player == 0)
        return 100;

    r1 = me(action);
    r2 = msg(player, dm);
    r3 = tell(player, dm);
    r4 = teammsg(team_msg);
    r5 = tm(team_msg);

    String_Release(action);
    String_Release(dm);
    String_Release(team_msg);
    Target_Release(player);

    /* me()/teammsg() require a player command sender; these test functions
     * run from the datapack's #minecraft:load hook (console context), so
     * only check they don't hit an internal conversion failure (-1). */
    if (r1 == -1)
        return 101;
    if (r2 != 1)
        return 102;
    if (r3 != 1)
        return 103;
    if (r4 == -1)
        return 104;
    if (r5 == -1)
        return 105;

    return 0;
}
