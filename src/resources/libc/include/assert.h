#ifndef _LIBC_ASSERT_H_
#define _LIBC_ASSERT_H_

#ifdef NDEBUG
#define assert(expr) ((void)0)
#else
#define assert(expr) ((expr) ? (void)0 : __builtin_trap())
#endif

#endif
