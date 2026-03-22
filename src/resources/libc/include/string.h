#ifndef _LIBC_STRING_H_
#define _LIBC_STRING_H_

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void  *memcpy(void *restrict dst, const void *restrict src, size_t n);
void  *memmove(void *dst, const void *src, size_t n);
void  *memset(void *dst, int c, size_t n);
int    memcmp(const void *s1, const void *s2, size_t n);
void  *memchr(const void *s, int c, size_t n);
void  *memccpy(void *restrict dst, const void *restrict src, int c, size_t n);
void  *memmem(const void *haystack, size_t haystack_len, const void *needle, size_t needle_len);
void  *mempcpy(void *dst, const void *src, size_t n);
void  *memrchr(const void *s, int c, size_t n);
void  *rawmemchr(const void *s, int c);

char  *strcpy(char *restrict dst, const char *restrict src);
char  *stpcpy(char *restrict dst, const char *restrict src);
char  *strncpy(char *restrict dst, const char *restrict src, size_t n);
char  *stpncpy(char *restrict dst, const char *restrict src, size_t n);
char  *strcat(char *restrict dst, const char *restrict src);
char  *strncat(char *restrict dst, const char *restrict src, size_t n);
int    strcmp(const char *s1, const char *s2);
int    strncmp(const char *s1, const char *s2, size_t n);
size_t strlen(const char *s);
size_t strnlen(const char *s, size_t n);
char  *strchr(const char *s, int c);
char  *strchrnul(const char *s, int c);
char  *strrchr(const char *s, int c);
char  *strstr(const char *haystack, const char *needle);
char  *strnstr(const char *haystack, const char *needle, size_t haystack_len);
size_t strcspn(const char *s, const char *reject);
size_t strspn(const char *s, const char *accept);
char  *strpbrk(const char *s, const char *accept);
char  *strdup(const char *s);
char  *strndup(const char *s, size_t n);
char  *strtok(char *restrict s, const char *restrict delim);
char  *strtok_r(char *restrict s, const char *restrict delim, char **restrict lasts);
char  *strsep(char **stringp, const char *delim);

#ifdef __cplusplus
}
#endif

#endif
