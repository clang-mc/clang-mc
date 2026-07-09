#pragma once

#include <stddef.h>

#include "McfStrRef.h"

/*
 * String: a growable, ref-counted UTF-8 string. Implementations live in
 * libmc/util/String.c and are compiled once into _ll_libmc.mch; this header
 * exposes prototypes only.
 *
 * `struct _String` is kept public (not opaque) and String_EnsureCapacity is a
 * published API: callers that build a String by reserving space and writing
 * the backing buffer directly (e.g. String_FromIdentifier in Identifier.h) rely
 * on both. The remaining internals (vtable, _String_Destroy, cache
 * invalidation) stay private to String.c.
 */

typedef struct _String _String;
typedef _String *String;

struct _String {
    McRefHeader rc;
    size_t      len;
    size_t      cap;
    char       *data;
    int         flags;
    McfStrRef   mcf;
};

#define STRING_FLAG_BORROWED_DATA 1

/*
 * Reserve at least `want` bytes of writable backing storage (including room for
 * the caller's NUL terminator). Detaches borrowed literals into an owned heap
 * buffer. Public because direct-buffer builders need it.
 */
int String_EnsureCapacity(String s, size_t want);

/* String_New/From* return owned objects. Pair them with String_Release(). */
String String_New(void);
String String_FromCString(const char *src);
String String_FromLiteral(const char *src);

String String_Retain(String s);
void   String_Release(String s);

const char *String_CStr(String s);
size_t      String_Length(String s);

int String_Clear(String s);
int String_AssignCString(String s, const char *src);
int String_AppendCString(String s, const char *suffix);
int String_AppendLiteral(String s, const char *suffix);

/* Materialize/refresh the cached McfStrRef backing this String. */
int       String_EnsureMcfStrRef(String s);
McfStrRef String_GetMcfStrRef(String s);

/* Build an owned McfStrRef from a String's current contents. */
McfStrRef McfStrRef_FromString(String src);
