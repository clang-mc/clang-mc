#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

#include "stdout_linebuf.h"

#define VPRINTF_STACK_BUF 512

int
vprintf(const char *fmt, va_list ap)
{
    va_list ap2;
    int     got;
    int     got2;
    char    stack_buf[VPRINTF_STACK_BUF];
    char   *buf = stack_buf;

    va_copy(ap2, ap);
    got = vsnprintf(stack_buf, sizeof(stack_buf), fmt, ap2);
    va_end(ap2);
    if (got < 0)
        return -1;

    if ((size_t)got >= sizeof(stack_buf)) {
        buf = (char *)malloc((size_t)got + 1);
        if (!buf) {
            errno = ENOMEM;
            return -1;
        }

        va_copy(ap2, ap);
        got2 = vsnprintf(buf, (size_t)got + 1, fmt, ap2);
        va_end(ap2);
        if (got2 < 0) {
            free(buf);
            return -1;
        }
        got = got2;
    }

    if (__stdout_linebuf_write(buf, (size_t)got) != 0) {
        if (buf != stack_buf)
            free(buf);
        return EOF;
    }

    if (buf != stack_buf)
        free(buf);
    return got;
}
