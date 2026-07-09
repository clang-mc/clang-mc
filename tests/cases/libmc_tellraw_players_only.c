#include <minecraft.h>
#include <commands.h>

int main(void) {
    String json;
    int r;

    json = String_FromLiteral("{\"text\":\"clang-mc tellraw players\"}");
    if (json == 0)
        return 100;
    r = tellraw(TARGET_PLAYERS, json);
    String_Release(json);
    return r == 1 ? 0 : 110 + r;
}
