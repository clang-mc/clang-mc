#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>

int
vsprintf(char *s, const char *fmt, va_list ap)
{
    return vsnprintf(s, (size_t)-1, fmt, ap);
}
