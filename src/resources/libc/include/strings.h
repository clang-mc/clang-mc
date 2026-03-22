#ifndef _LIBC_STRINGS_H_
#define _LIBC_STRINGS_H_

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

int   bcmp(const void *s1, const void *s2, size_t n);
void  bcopy(const void *src, void *dst, size_t n);
void  bzero(void *s, size_t n);
char *index(const char *s, int c);
char *rindex(const char *s, int c);

#ifdef __cplusplus
}
#endif

#endif
