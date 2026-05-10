#include <minecraft.h>

int main(void) {
    McfStrRef x;
    McfStrRef y;
    McfStrRef z;
    McfStrRef yaw;
    McfStrRef pitch;

    __asm volatile ("inline data modify storage std:vm trace set value \"a\"");
    x = McfStrRef_FromDouble(2.5);
    __asm volatile ("inline data modify storage std:vm trace set value \"b\"");
    if (x == 0)
        return 100;

    y = McfStrRef_FromDouble(82.0);
    __asm volatile ("inline data modify storage std:vm trace set value \"c\"");
    if (y == 0)
        return 101;

    z = McfStrRef_FromDouble(6.5);
    __asm volatile ("inline data modify storage std:vm trace set value \"d\"");
    if (z == 0)
        return 102;

    yaw = McfStrRef_FromFloat(90.0f);
    __asm volatile ("inline data modify storage std:vm trace set value \"e\"");
    if (yaw == 0)
        return 103;

    pitch = McfStrRef_FromFloat(0.0f);
    __asm volatile ("inline data modify storage std:vm trace set value \"f\"");
    if (pitch == 0)
        return 104;

    return 0;
}
