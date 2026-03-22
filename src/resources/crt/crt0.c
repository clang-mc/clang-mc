//
// Created by xia__mc on 2026/3/6.
//

#include "stdlib.h"

int main(int, char**);

void _start(void) {
    int ret = main(0, NULL);

    __asm volatile (
        "inline return %0"
        :
        : "r"(ret)
    );
    __builtin_unreachable();
}
