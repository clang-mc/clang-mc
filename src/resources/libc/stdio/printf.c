#include <stdarg.h>
#include <stdio.h>

int
printf(const char *fmt, ...)
{
    va_list ap;
    int     ret;

    va_start(ap, fmt);
    ret = vprintf(fmt, ap);
    va_end(ap);
    return ret;
}
