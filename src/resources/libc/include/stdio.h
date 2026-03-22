#ifndef _LIBC_STDIO_H_
#define _LIBC_STDIO_H_

#include <stdarg.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct __libc_FILE FILE;

#ifndef EOF
#define EOF (-1)
#endif

int putchar(int c);
int puts(const char *s);

int printf(const char *fmt, ...);
int vprintf(const char *fmt, va_list ap);

int sprintf(char *s, const char *fmt, ...);
int vsprintf(char *s, const char *fmt, va_list ap);
int snprintf(char *s, size_t n, const char *fmt, ...);
int vsnprintf(char *s, size_t n, const char *fmt, va_list ap);

#ifdef __cplusplus
}
#endif

#endif
