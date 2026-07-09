#include <minecraft.h>
#include <commands.h>

int main(void) {
    Identifier sharpness_id = {"minecraft", "sharpness"};
    Target player;
    int r1;
    int r2;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r1 = enchant(player, &sharpness_id);
    r2 = enchant_level(player, &sharpness_id, 1);

    Target_Release(player);

    /* Enchanting only succeeds if CodexBot happens to be holding an
     * enchantable item; only guard against an internal conversion
     * failure (-1) rather than an exact gameplay result. */
    if (r1 == -1)
        return 101;
    if (r2 == -1)
        return 102;

    return 0;
}
