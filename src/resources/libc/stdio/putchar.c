#include <stdio.h>

#include "stdout_linebuf.h"

int
putchar(int c)
{
    return __stdout_linebuf_putc(c);
}
