#include <stddef.h>
#include <stdio.h>
#include <string.h>

#include "stdout_linebuf.h"

#define STDOUT_LINEBUF_CAP 1024

static char   g_stdout_linebuf[STDOUT_LINEBUF_CAP];
static size_t g_stdout_linebuf_len;

static int
stdout_emit_line(void)
{
    g_stdout_linebuf[g_stdout_linebuf_len] = '\0';
    if (puts(g_stdout_linebuf) < 0) {
        g_stdout_linebuf_len = 0;
        return -1;
    }
    g_stdout_linebuf_len = 0;
    return 0;
}

int
__stdout_linebuf_flush(void)
{
    if (g_stdout_linebuf_len == 0)
        return 0;
    return stdout_emit_line();
}

int
__stdout_linebuf_putc(int c)
{
    char ch = (char)c;

    if (ch == '\n') {
        if (stdout_emit_line() < 0)
            return EOF;
        return (unsigned char)ch;
    }

    if (g_stdout_linebuf_len >= STDOUT_LINEBUF_CAP - 1) {
        if (stdout_emit_line() < 0)
            return EOF;
    }

    g_stdout_linebuf[g_stdout_linebuf_len++] = ch;
    return (unsigned char)ch;
}

int
__stdout_linebuf_write(const char *s, size_t n)
{
    while (n > 0) {
        const char *nl = (const char *)memchr(s, '\n', n);
        size_t      chunk = nl ? (size_t)(nl - s) : n;

        while (chunk > 0) {
            size_t space = (STDOUT_LINEBUF_CAP - 1) - g_stdout_linebuf_len;
            size_t take = chunk < space ? chunk : space;
            memcpy(g_stdout_linebuf + g_stdout_linebuf_len, s, take);
            g_stdout_linebuf_len += take;
            s += take;
            n -= take;
            chunk -= take;

            if (g_stdout_linebuf_len >= STDOUT_LINEBUF_CAP - 1) {
                if (stdout_emit_line() < 0)
                    return -1;
            }
        }

        if (nl) {
            s++;
            n--;
            if (stdout_emit_line() < 0)
                return -1;
        }
    }
    return 0;
}
