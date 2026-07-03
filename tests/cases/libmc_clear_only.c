#include <minecraft.h>

int main(void) {
    Target player;
    int r1;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r1 = clear(player);

    Target_Release(player);

    (void)r1;

    return 0;
}
