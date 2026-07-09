#include <minecraft.h>
#include <commands.h>

int main(void) {
    Target player;
    int r1;
    int r2;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;
    r1 = tp(player, (Vec3d){4.5, 82.0, 4.5});
    r2 = tp_rot(player, (Vec3d){6.5, 82.0, 6.5}, (Vec2f){90.0f, 0.0f});
    Target_Release(player);
    if (r1 != 1)
        return 110 + r1;
    if (r2 != 1)
        return 120 + r2;
    return 0;
}
