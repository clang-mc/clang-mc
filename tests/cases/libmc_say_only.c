#include <minecraft.h>
#include <commands.h>

int main(void) {
    String msg;
    int ret;

    msg = String_FromLiteral("clang-mc libmc say test");
    if (msg == 0)
        return 100;

    ret = say(msg);
    String_Release(msg);

    if (ret != 1)
        return 101;
    return 0;
}
