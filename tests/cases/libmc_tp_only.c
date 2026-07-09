#include <minecraft.h>
#include <commands.h>

int main(void) {
    Target player;
    int r;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r = tp(player, (Vec3d){4.5, 82.0, 4.5});
    Target_Release(player);
    return r == 1 ? 0 : 110 + r;
}
