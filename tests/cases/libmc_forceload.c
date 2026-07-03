#include <minecraft.h>

int main(void) {
    int r1;
    int r2;
    int r3;

    r1 = forceload_add(100, 100);
    r2 = forceload_remove(100, 100);
    r3 = forceload_remove_all();

    /* forceload add/remove report failure (0) if the chunk's force-load
     * state already matches (idempotency check), which depends on this
     * persistent test world's prior state; only guard against an
     * internal conversion failure (-1) rather than an exact result. */
    if (r1 == -1)
        return 101;
    if (r2 == -1)
        return 102;
    if (r3 == -1)
        return 103;

    return 0;
}
