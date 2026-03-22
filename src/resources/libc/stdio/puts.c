#include <stdio.h>
#include <assert.h>

int
puts(const char *str)
{
    assert(str != NULL);
    __asm volatile (
        "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}\n"
        "inline data modify storage std:vm s1.str set from storage std:vm char2str_map[%0]"
        :
        : "r"(*str)
    );

    char c;
    while ((c = *++str) != '\0') {
        __asm volatile (
            "inline data modify storage std:vm s1.next set from storage std:vm char2str_map[%0]"
            :
            : "r"(c)
        );
    }

    __asm volatile (
        "inline tellraw @a {\"storage\": \"std:vm\", \"nbt\": \"s1.str\"}"
    );
    return 1;
}
