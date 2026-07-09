#include <minecraft.h>
#include <commands.h>

int main(void) {
    Target player;
    int r;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r = tp_rot(player, (Vec3d){6.5, 82.0, 6.5}, (Vec2f){90.0f, 0.0f});
    Target_Release(player);
    return r == 1 ? 0 : 110 + r;
}
