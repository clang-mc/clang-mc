#include <minecraft.h>
#include <commands.h>

int main(void) {
    String json;
    Target raw;
    int r;

    json = String_FromLiteral("{\"text\":\"clang-mc tellraw raw\"}");
    raw = Target_FromLiteral("@a");
    if (json == 0 || raw == 0)
        return 100;
    r = tellraw(raw, json);
    String_Release(json);
    Target_Release(raw);
    return r == 1 ? 0 : 110 + r;
}
