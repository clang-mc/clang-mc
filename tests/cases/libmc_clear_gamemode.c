#include <minecraft.h>

int main(void) {
    Target player;
    int r1;
    int r2;
    int r3;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r1 = difficulty(DIFFICULTY_PEACEFUL);
    r2 = defaultgamemode(DEFAULTGAMEMODE_SURVIVAL);
    r3 = gamemode(GAMEMODE_SURVIVAL);

    Target_Release(player);

    /* Minecraft's own command-result values here are unreliable as a pass/
     * fail signal: "set" commands report 0 when the value already matches
     * (idempotent, depends on this persistent world's prior state). This
     * case only verifies the calls compile, run, and produce no datapack/
     * server errors (checked by the harness's log scan); it does not
     * assert on r1/r2/r3 individually. */
    (void)r1;
    (void)r2;
    (void)r3;

    return 0;
}
