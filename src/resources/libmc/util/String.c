#include "util/String.h"

#include <stddef.h>
#include <stdlib.h>
#include <string.h>

/*
 * String implementation.
 *
 * Like McfStrRef/Nbt, the public API is defined out-of-line here so it is
 * compiled exactly once into _ll_libmc.mch and user code only emits calls.
 * `struct _String` and String_EnsureCapacity are intentionally public (see
 * String.h): builders such as String_FromIdentifier construct a String by
 * reserving capacity and writing the backing buffer directly, mirroring how
 * CPython exposes a handful of internal-but-useful string helpers.
 *
 * The remaining `_`-prefixed helpers (_String_InvalidateMcf / _String_Destroy)
 * and the ref-ops vtable stay `static` to this file.
 */

static void _String_Destroy(void *obj);

static const McRefOps _STRING_REF_OPS = {
    _String_Destroy,
    "String",
};

int
String_EnsureCapacity(String s, size_t want)
{
    char  *buf;
    size_t cap;

    if (s == NULL) {
        return -1;
    }
    if ((s->flags & STRING_FLAG_BORROWED_DATA) != 0) {
        cap = want;
        if (cap < s->len + 1u) {
            cap = s->len + 1u;
        }
        if (cap == 0u) {
            cap = 1u;
        }
        buf = (char *)malloc(cap);
        if (buf == NULL) {
            return -1;
        }
        if (s->data != NULL && s->len != 0u) {
            memcpy(buf, s->data, s->len);
        }
        buf[s->len] = '\0';
        s->data = buf;
        s->cap = cap;
        s->flags &= ~STRING_FLAG_BORROWED_DATA;
        return 0;
    }
    if (want <= s->cap) {
        return 0;
    }

    cap = s->cap ? s->cap : 1u;
    while (cap < want) {
        size_t next = cap << 1u;
        if (next <= cap) {
            cap = want;
            break;
        }
        cap = next;
    }

    buf = (char *)realloc(s->data, cap);
    if (buf == NULL) {
        return -1;
    }
    s->data = buf;
    s->cap = cap;
    return 0;
}

static inline void
_String_InvalidateMcf(String s)
{
    if (s != NULL && s->mcf != NULL) {
        McfStrRef_Release(s->mcf);
        s->mcf = NULL;
    }
}

String
String_New(void)
{
    String s;

    s = (String)malloc(sizeof(_String));
    if (s == NULL) {
        return NULL;
    }

    s->data = (char *)malloc(1u);
    if (s->data == NULL) {
        free(s);
        return NULL;
    }

    MC_REF_INIT_DYNAMIC(s, &_STRING_REF_OPS);
    s->len = 0u;
    s->cap = 1u;
    s->data[0] = '\0';
    s->flags = 0;
    s->mcf = NULL;
    return s;
}

String
String_FromCString(const char *src)
{
    String s;
    size_t len;

    s = String_New();
    if (s == NULL) {
        return NULL;
    }

    len = src ? strlen(src) : 0u;
    if (String_EnsureCapacity(s, len + 1u) != 0) {
        free(s->data);
        free(s);
        return NULL;
    }

    if (len != 0u) {
        memcpy(s->data, src, len);
    }
    s->data[len] = '\0';
    s->len = len;
    return s;
}

String
String_FromLiteral(const char *src)
{
    String s;
    size_t len;
    McfStrRef mcf;

    s = (String)malloc(sizeof(_String));
    if (s == NULL) {
        return NULL;
    }

    len = src ? strlen(src) : 0u;
    MC_REF_INIT_DYNAMIC(s, &_STRING_REF_OPS);
    s->len = len;
    s->cap = 0u;
    s->data = (char *)(src ? src : "");
    s->flags = STRING_FLAG_BORROWED_DATA;
    mcf = McfStrRef_FromLiteral(src);
    if (mcf == NULL && src != NULL) {
        free(s);
        return NULL;
    }
    s->mcf = mcf;
    return s;
}

String
String_Retain(String s)
{
    return (String)McRef_Retain(s);
}

void
String_Release(String s)
{
    McRef_Release(s);
}

static void
_String_Destroy(void *obj)
{
    String s;

    s = (String)obj;
    _String_InvalidateMcf(s);
    if ((s->flags & STRING_FLAG_BORROWED_DATA) == 0) {
        free(s->data);
    }
    free(s);
}

const char *
String_CStr(String s)
{
    return s ? s->data : NULL;
}

McfStrRef
McfStrRef_FromString(String src)
{
    return McfStrRef_FromCString(String_CStr(src));
}

size_t
String_Length(String s)
{
    return s ? s->len : 0u;
}

int
String_Clear(String s)
{
    if (s == NULL) {
        return -1;
    }
    _String_InvalidateMcf(s);
    s->len = 0u;
    if (s->data != NULL) {
        s->data[0] = '\0';
    }
    return 0;
}

int
String_AssignCString(String s, const char *src)
{
    size_t len;

    if (s == NULL) {
        return -1;
    }

    len = src ? strlen(src) : 0u;
    if (String_EnsureCapacity(s, len + 1u) != 0) {
        return -1;
    }

    _String_InvalidateMcf(s);
    if (len != 0u) {
        memcpy(s->data, src, len);
    }
    s->data[len] = '\0';
    s->len = len;
    return 0;
}

int
String_AppendCString(String s, const char *suffix)
{
    size_t suffix_len;
    size_t total_len;

    if (s == NULL) {
        return -1;
    }
    if (suffix == NULL || suffix[0] == '\0') {
        return 0;
    }

    suffix_len = strlen(suffix);
    total_len = s->len + suffix_len;
    if (String_EnsureCapacity(s, total_len + 1u) != 0) {
        return -1;
    }

    _String_InvalidateMcf(s);
    memcpy(s->data + s->len, suffix, suffix_len + 1u);
    s->len = total_len;
    return 0;
}

int
String_AppendLiteral(String s, const char *suffix)
{
    /* TODO: switch to compiler-backed literal pool when available. */
    return String_AppendCString(s, suffix);
}

int
String_EnsureMcfStrRef(String s)
{
    if (s == NULL) {
        return -1;
    }
    if (s->mcf == NULL) {
        if ((s->flags & STRING_FLAG_BORROWED_DATA) != 0) {
            s->mcf = McfStrRef_FromLiteral(s->data);
        } else {
            s->mcf = McfStrRef_FromCString(s->data);
        }
        if (s->mcf == NULL) {
            return -1;
        }
    }
    return McfStrRef_SlotId(s->mcf) < 0 ? -1 : 0;
}

McfStrRef
String_GetMcfStrRef(String s)
{
    return s ? s->mcf : NULL;
}
