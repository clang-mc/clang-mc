#include <minecraft.h>
#include <commands.h>

int main(void) {
    String json;
    String msg;
    int r;

    json = String_FromLiteral("{\"text\":\"clang-mc tellraw prior msg\"}");
    msg = String_FromLiteral("unused message");
    if (json == 0 || msg == 0)
        return 100;
    r = tellraw(TARGET_PLAYERS, json);
    String_Release(json);
    String_Release(msg);
    return r == 1 ? 0 : 110 + r;
}
