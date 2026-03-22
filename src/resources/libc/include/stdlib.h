#ifndef _LIBC_STDLIB_H_
#define _LIBC_STDLIB_H_

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

static inline int
abs(int i)
{
    return (i < 0) ? -i : i;
}

long          labs(long x);
int           atoi(const char *s);
long          atol(const char *s);
char         *gcvt(double value, int ndigit, char *buf);
char         *gcvt_fast(double value, int ndigit, char *buf);
char         *itoa(int value, char *str, int base);
long          strtol(const char *restrict nptr, char **restrict endptr, int base);
unsigned long strtoul(const char *restrict nptr, char **restrict endptr, int base);

void         *malloc(size_t size);
void          free(void *ptr);
void         *realloc(void *ptr, size_t size);
void         *calloc(size_t nmemb, size_t size);

#ifdef __cplusplus
}
#endif

#endif
