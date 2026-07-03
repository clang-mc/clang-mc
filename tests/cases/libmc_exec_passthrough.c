#include <minecraft.h>

int main(void) {
    String cmd1;
    String cmd2;
    int r1;
    int r2;

    cmd1 = String_FromLiteral("say clang-mc exec passthrough test");
    cmd2 = String_FromLiteral("scoreboard players set exec_passthrough_probe vm_regs 42");
    if (cmd1 == 0 || cmd2 == 0)
        return 100;

    r1 = exec(cmd1);
    r2 = exec(cmd2);

    String_Release(cmd1);
    String_Release(cmd2);

    /* exec()'s result reflects Minecraft's own command-success reporting
     * (not necessarily the scoreboard value), which varies by command; only
     * guard against an internal conversion failure (-1). */
    if (r1 == -1)
        return 101;
    if (r2 == -1)
        return 102;
    return 0;
}
