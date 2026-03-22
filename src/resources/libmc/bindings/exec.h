#pragma once

#include "stdlib.h"
#include "assert.h"

static inline int exec(const char *cmd) {
    assert(cmd != NULL);
    __asm volatile (
        "inline data modify storage std:vm s1 set value %{str: \"\", next: \"\"%}\n"
        "inline data modify storage std:vm s1.str set from storage std:vm char2str_map[%0]"
        :
        : "r"(*cmd)
    );

    char c;
    while ((c = *++cmd) != NULL) {
        __asm volatile (
            "inline data modify storage std:vm s1.next set from storage std:vm char2str_map[%0]"
            :
            : "r"(c)
        );
    }

    int ret;
    __asm volatile (
        "inline execute store result score %0 vm_regs run function std:_internal/exec with storage std:vm s1"
        : "=r"(ret)
    );
    return ret;
}
