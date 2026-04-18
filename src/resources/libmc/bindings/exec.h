#pragma once

#include "stdlib.h"
#include "stdint.h"
#include "assert.h"

static inline int exec(const char *cmd) {
    uintptr_t ptr;
    unsigned char c;

    assert(cmd != NULL);
    ptr = ((uintptr_t)cmd) << 2;
    c = *(const unsigned char *)ptr;
    __asm volatile (
        "inline data modify storage std:vm s1 set value %{str: \"\", next: \"\"%}\n"
        "inline data modify storage std:vm s1.str set from storage std:vm char2str_map.\"%0\""
        :
        : "r"(c)
    );

    while ((c = *(const unsigned char *)++ptr) != 0) {
        __asm volatile (
            "inline data modify storage std:vm s1.next set from storage std:vm char2str_map.\"%0\"\n"
            "inline data modify storage std:vm s3 set value %{left: \"\", right: \"\"%}\n"
            "inline data modify storage std:vm s3.left set from storage std:vm s1.str\n"
            "inline data modify storage std:vm s3.right set from storage std:vm s1.next\n"
            "inline function std:_internal/merge_string2 with storage std:vm s3\n"
            "inline data modify storage std:vm s1.str set from storage std:vm s3.string"
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
