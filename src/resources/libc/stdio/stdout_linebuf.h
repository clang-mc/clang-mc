#ifndef LIBC_STDOUT_LINEBUF_H
#define LIBC_STDOUT_LINEBUF_H

#include <stddef.h>

int __stdout_linebuf_putc(int c);
int __stdout_linebuf_write(const char *s, size_t n);
int __stdout_linebuf_flush(void);

#endif
