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

typedef struct {
    int quot;
    int rem;
} div_t;

typedef struct {
    long quot;
    long rem;
} ldiv_t;

typedef struct {
    long long quot;
    long long rem;
} lldiv_t;

long          labs(long x);
long long     llabs(long long x);
div_t         div(int numer, int denom);
ldiv_t        ldiv(long numer, long denom);
lldiv_t       lldiv(long long numer, long long denom);
int           atoi(const char *s);
long          atol(const char *s);
long long     atoll(const char *s);
char         *gcvt(double value, int ndigit, char *buf);
char         *gcvt_fast(double value, int ndigit, char *buf);
/*
 * Runtime fallback for the clang __builtin_mcf_ftoa builtin: returns the decimal
 * string of v (no type suffix) in a reusable static buffer, valid until the next
 * call. Only referenced when the builtin's argument is not a compile-time
 * constant; constant arguments are folded to a string literal at compile time.
 */
const char   *__mcf_ftoa(double v);
char         *itoa(int value, char *str, int base);
long          strtol(const char *restrict nptr, char **restrict endptr, int base);
unsigned long strtoul(const char *restrict nptr, char **restrict endptr, int base);
long long     strtoll(const char *restrict nptr, char **restrict endptr, int base);
unsigned long long strtoull(const char *restrict nptr, char **restrict endptr, int base);

void         *malloc(size_t size);
void          free(void *ptr);
void         *realloc(void *ptr, size_t size);
void         *calloc(size_t nmemb, size_t size);

void          abort(void);
int           atexit(void (*func)(void));

#ifdef __cplusplus
}
#endif

#endif
