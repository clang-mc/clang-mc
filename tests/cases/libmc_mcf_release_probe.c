#include <minecraft.h>

int main(void) {
    McfStrRef s;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    s = McfStrRef_FromLiteral("clang-mc libmc say test");
    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    if (s == 0)
        return 100;

    McfStrRef_Release(s);
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    return 0;
}
