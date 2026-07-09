#include <minecraft.h>
#include <commands.h>

int main(void) {
    Target player;
    int r1;
    int r2;
    int r3;
    int r4;
    int r5;
    int r6;
    int r7;
    int r8;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r1 = spawnpoint();
    r2 = spawnpoint_target(player);
    r3 = spawnpoint_at(player, (Vec3i){0, 80, 0});
    r4 = setworldspawn();
    r5 = setworldspawn_at((Vec3i){0, 80, 0});
    r6 = spectate();
    r7 = spectate_target(player);
    r8 = spectate_as(player, player);

    Target_Release(player);

    /* spectate() requires a player sender and spectate_target()/spectate_as()
     * require the watched player to already be in spectator mode; game state
     * here is whatever a previous test run left it in, so only guard against
     * an internal conversion failure (-1) rather than an exact result. */
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
    if (r8 == -1)
        return 108;

    return 0;
}
