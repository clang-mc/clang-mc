#include <minecraft.h>
#include <commands.h>

int main(void) {
    String msg;
    int ret;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    msg = String_FromLiteral("clang-mc libmc say test");
    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    if (msg == 0)
        return 100;

    ret = say(msg);
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    String_Release(msg);
    __asm volatile ("inline data modify storage std:vm trace set value \"d\"");

    if (ret != 1)
        return 101;
    return 0;
}
