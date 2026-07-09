#include <minecraft.h>
#include <commands.h>

int main(void) {
    String json;
    String msg;
    Target raw;
    int r1;
    int r2;
    int r3;

    json = String_FromLiteral("{\"text\":\"clang-mc libmc target test\"}");
    msg = String_FromLiteral("clang-mc libmc say test");
    raw = Target_FromLiteral("@a");
    if (json == 0 || msg == 0 || raw == 0)
        return 100;

    r1 = tellraw(TARGET_PLAYERS, json);
    r2 = tellraw(raw, json);
    r3 = say(msg);

    String_Release(json);
    String_Release(msg);
    Target_Release(raw);

    if (r1 != 1)
        return 101;
    if (r2 != 1)
        return 102;
    if (r3 != 1)
        return 103;

    return 0;
}
