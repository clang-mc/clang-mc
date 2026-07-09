#include <minecraft.h>
#include <commands.h>

int main(void) {
    int r1;
    int r2;
    int r3;
    int r4;

    r1 = worldborder_set(60000000.0);
    r2 = worldborder_add(0.0);
    r3 = worldborder_set_time(60000000.0, 1);
    r4 = worldborder_center(0.0, 0.0);

    /* worldborder "set" commands can report failure (0) if the border is
     * already at that size; only guard against an internal conversion
     * failure (-1) rather than an exact result. */
    if (r1 == -1)
        return 101;
    if (r2 == -1)
        return 102;
    if (r3 == -1)
        return 103;
    if (r4 == -1)
        return 104;

    return 0;
}
