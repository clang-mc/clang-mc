#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>

int
sprintf(char *s, const char *fmt, ...)
{
    va_list ap;
    int     ret;

    va_start(ap, fmt);
    ret = vsnprintf(s, (size_t)-1, fmt, ap);
    va_end(ap);
    return ret;
}
