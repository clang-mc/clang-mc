#pragma once

#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "String.h"

typedef struct _UUID _UUID;
typedef _UUID *UUID;

struct _UUID {
    McRefHeader rc;
    char      data[37];
    McfStrRef mcf;
};

/* UUID_New/From* return owned objects. Pair them with UUID_Release(). */
static void _UUID_Destroy(void *obj);

static const McRefOps _UUID_REF_OPS = {
    _UUID_Destroy,
    "UUID",
};

static inline int
_UUID_IsHexDigit(char c)
{
    return ((c >= '0' && c <= '9') ||
            (c >= 'a' && c <= 'f') ||
            (c >= 'A' && c <= 'F'));
}

static inline int
UUID_IsValidCString(const char *src)
{
    static const unsigned char hyphen_pos[] = {8u, 13u, 18u, 23u};
    size_t                     i;
    size_t                     j;

    if (src == NULL) {
        return 0;
    }
    if (strlen(src) != 36u) {
        return 0;
    }

    j = 0u;
    for (i = 0u; i < 36u; i++) {
        if (j < sizeof(hyphen_pos) / sizeof(hyphen_pos[0]) && i == hyphen_pos[j]) {
            if (src[i] != '-') {
                return 0;
            }
            j++;
            continue;
        }
        if (!_UUID_IsHexDigit(src[i])) {
            return 0;
        }
    }
    return 1;
}

static inline UUID
UUID_New(void)
{
    UUID uuid;

    uuid = (UUID)malloc(sizeof(_UUID));
    if (uuid == NULL) {
        return NULL;
    }

    MC_REF_INIT_DYNAMIC(uuid, &_UUID_REF_OPS);
    uuid->data[0] = '\0';
    uuid->mcf = NULL;
    return uuid;
}

static inline UUID
UUID_FromCString(const char *src)
{
    UUID uuid;

    if (!UUID_IsValidCString(src)) {
        return NULL;
    }

    uuid = UUID_New();
    if (uuid == NULL) {
        return NULL;
    }

    memcpy(uuid->data, src, 37u);
    return uuid;
}

static inline UUID
UUID_FromLiteral(const char *src)
{
    return UUID_FromCString(src);
}

static inline UUID
UUID_FromString(String src)
{
    return UUID_FromCString(String_CStr(src));
}

static inline UUID
UUID_Retain(UUID uuid)
{
    return (UUID)McRef_Retain(uuid);
}

static inline void
UUID_Release(UUID uuid)
{
    McRef_Release(uuid);
}

static void
_UUID_Destroy(void *obj)
{
    UUID uuid;

    uuid = (UUID)obj;
    if (uuid->mcf != NULL) {
        McfStrRef_Release(uuid->mcf);
        uuid->mcf = NULL;
    }
    free(uuid);
}

static inline const char *
UUID_CStr(UUID uuid)
{
    return uuid ? uuid->data : NULL;
}

static inline int
UUID_Equals(UUID lhs, UUID rhs)
{
    if (lhs == rhs) {
        return 1;
    }
    if (lhs == NULL || rhs == NULL) {
        return 0;
    }
    return strcmp(lhs->data, rhs->data) == 0;
}

static inline int
UUID_EnsureMcf(UUID uuid)
{
    if (uuid == NULL) {
        return -1;
    }
    if (uuid->mcf == NULL) {
        uuid->mcf = McfStrRef_FromLiteral(uuid->data);
        if (uuid->mcf == NULL) {
            return -1;
        }
    }
    return McfStrRef_SlotId(uuid->mcf) < 0 ? -1 : 0;
}

static inline McfStrRef
UUID_GetMcfStrRef(UUID uuid)
{
    if (UUID_EnsureMcf(uuid) != 0) {
        return NULL;
    }
    return uuid->mcf;
}
