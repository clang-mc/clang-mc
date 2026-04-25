#pragma once

/*
 * Header-only C implementation of Minecraft's Identifier semantics
 * based on Yarn 1.21.4 net.minecraft.util.Identifier.
 *
 * Ownership:
 * - Functions returning Identifier allocate ns/path with malloc().
 * - Call Identifier_Clear() when done.
 * - Functions returning char * also allocate with malloc().
 *   Call free() on the returned string.
 */

#include <ctype.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    const char *ns;
    const char *path;
} Identifier;

typedef enum {
    IDENTIFIER_OK = 0,
    IDENTIFIER_ERROR_OOM = -1,
    IDENTIFIER_ERROR_INVALID_NAMESPACE = -2,
    IDENTIFIER_ERROR_INVALID_PATH = -3,
    IDENTIFIER_ERROR_INVALID_ID = -4
} IdentifierStatus;

#define IDENTIFIER_DEFAULT_NAMESPACE "minecraft"
#define IDENTIFIER_REALMS_NAMESPACE "realms"
#define IDENTIFIER_NAMESPACE_SEPARATOR ':'

static inline size_t
_Identifier_strlen(const char *s)
{
    return s ? strlen(s) : 0u;
}

static inline char *
_Identifier_strdup_range(const char *src, size_t len)
{
    char *dst;

    dst = (char *)malloc(len + 1u);
    if (dst == NULL) {
        return NULL;
    }
    if (len != 0u) {
        memcpy(dst, src, len);
    }
    dst[len] = '\0';
    return dst;
}

static inline char *
_Identifier_strdup_full(const char *src)
{
    if (src == NULL) {
        return _Identifier_strdup_range("", 0u);
    }
    return _Identifier_strdup_range(src, strlen(src));
}

static inline int
Identifier_IsCharValid(char c)
{
    return ((c >= '0' && c <= '9') ||
            (c >= 'a' && c <= 'z') ||
            c == '_' || c == ':' || c == '/' || c == '.' || c == '-');
}

static inline int
Identifier_IsPathCharacterValid(char c)
{
    return (c == '_' || c == '-' ||
            (c >= 'a' && c <= 'z') ||
            (c >= '0' && c <= '9') ||
            c == '/' || c == '.');
}

static inline int
_Identifier_IsNamespaceCharacterValid(char c)
{
    return (c == '_' || c == '-' ||
            (c >= 'a' && c <= 'z') ||
            (c >= '0' && c <= '9') ||
            c == '.');
}

static inline int
Identifier_IsPathValid(const char *path)
{
    size_t i;

    if (path == NULL) {
        return 0;
    }
    for (i = 0; path[i] != '\0'; i++) {
        if (!Identifier_IsPathCharacterValid(path[i])) {
            return 0;
        }
    }
    return 1;
}

static inline int
Identifier_IsNamespaceValid(const char *ns)
{
    size_t i;

    if (ns == NULL) {
        return 0;
    }
    for (i = 0; ns[i] != '\0'; i++) {
        if (!_Identifier_IsNamespaceCharacterValid(ns[i])) {
            return 0;
        }
    }
    return 1;
}

static inline void
Identifier_Clear(Identifier *id)
{
    if (id == NULL) {
        return;
    }
    free((void *)id->ns);
    free((void *)id->path);
    id->ns = NULL;
    id->path = NULL;
}

static inline Identifier
Identifier_Empty(void)
{
    Identifier id;

    id.ns = NULL;
    id.path = NULL;
    return id;
}

static inline int
Identifier_IsInitialized(const Identifier *id)
{
    return id != NULL && id->ns != NULL && id->path != NULL;
}

static inline IdentifierStatus
Identifier_New(const char *ns, const char *path, Identifier *out)
{
    char *ns_copy;
    char *path_copy;

    if (out == NULL) {
        return IDENTIFIER_ERROR_INVALID_ID;
    }
    *out = Identifier_Empty();

    if (!Identifier_IsNamespaceValid(ns)) {
        return IDENTIFIER_ERROR_INVALID_NAMESPACE;
    }
    if (!Identifier_IsPathValid(path)) {
        return IDENTIFIER_ERROR_INVALID_PATH;
    }

    ns_copy = _Identifier_strdup_full(ns);
    if (ns_copy == NULL) {
        return IDENTIFIER_ERROR_OOM;
    }
    path_copy = _Identifier_strdup_full(path);
    if (path_copy == NULL) {
        free(ns_copy);
        return IDENTIFIER_ERROR_OOM;
    }

    out->ns = ns_copy;
    out->path = path_copy;
    return IDENTIFIER_OK;
}

static inline IdentifierStatus
Identifier_FromVanillaPath(const char *path, Identifier *out)
{
    return Identifier_New(IDENTIFIER_DEFAULT_NAMESPACE, path, out);
}

static inline IdentifierStatus
Identifier_FromStringAndDelimiter(const char *id, char delimiter, Identifier *out)
{
    const char *sep;
    const char *path;
    char *ns_copy;
    char *path_copy;
    size_t ns_len;

    if (out == NULL || id == NULL) {
        return IDENTIFIER_ERROR_INVALID_ID;
    }
    *out = Identifier_Empty();

    sep = strchr(id, (unsigned char)delimiter);
    if (sep == NULL) {
        return Identifier_FromVanillaPath(id, out);
    }

    path = sep + 1;
    if (!Identifier_IsPathValid(path)) {
        return IDENTIFIER_ERROR_INVALID_PATH;
    }

    if (sep == id) {
        return Identifier_FromVanillaPath(path, out);
    }

    ns_len = (size_t)(sep - id);
    ns_copy = _Identifier_strdup_range(id, ns_len);
    if (ns_copy == NULL) {
        return IDENTIFIER_ERROR_OOM;
    }
    if (!Identifier_IsNamespaceValid(ns_copy)) {
        free(ns_copy);
        return IDENTIFIER_ERROR_INVALID_NAMESPACE;
    }

    path_copy = _Identifier_strdup_full(path);
    if (path_copy == NULL) {
        free(ns_copy);
        return IDENTIFIER_ERROR_OOM;
    }

    out->ns = ns_copy;
    out->path = path_copy;
    return IDENTIFIER_OK;
}

static inline IdentifierStatus
Identifier_FromString(const char *id, Identifier *out)
{
    return Identifier_FromStringAndDelimiter(id, IDENTIFIER_NAMESPACE_SEPARATOR, out);
}

static inline int
Identifier_TryParse(const char *id, Identifier *out)
{
    return Identifier_FromString(id, out) == IDENTIFIER_OK;
}

static inline int
Identifier_TryParseParts(const char *ns, const char *path, Identifier *out)
{
    return Identifier_New(ns, path, out) == IDENTIFIER_OK;
}

static inline const char *
Identifier_GetNamespace(const Identifier *id)
{
    return (id != NULL) ? id->ns : NULL;
}

static inline const char *
Identifier_GetPath(const Identifier *id)
{
    return (id != NULL) ? id->path : NULL;
}

static inline IdentifierStatus
Identifier_WithPath(const Identifier *id, const char *path, Identifier *out)
{
    if (!Identifier_IsInitialized(id)) {
        return IDENTIFIER_ERROR_INVALID_ID;
    }
    return Identifier_New(id->ns, path, out);
}

static inline char *
_Identifier_join2(const char *a, const char *b)
{
    size_t a_len;
    size_t b_len;
    char *buf;

    a_len = _Identifier_strlen(a);
    b_len = _Identifier_strlen(b);
    buf = (char *)malloc(a_len + b_len + 1u);
    if (buf == NULL) {
        return NULL;
    }
    if (a_len != 0u) {
        memcpy(buf, a, a_len);
    }
    if (b_len != 0u) {
        memcpy(buf + a_len, b, b_len);
    }
    buf[a_len + b_len] = '\0';
    return buf;
}

static inline char *
_Identifier_join3(const char *a, const char *b, const char *c)
{
    size_t a_len;
    size_t b_len;
    size_t c_len;
    char *buf;

    a_len = _Identifier_strlen(a);
    b_len = _Identifier_strlen(b);
    c_len = _Identifier_strlen(c);
    buf = (char *)malloc(a_len + b_len + c_len + 1u);
    if (buf == NULL) {
        return NULL;
    }
    if (a_len != 0u) {
        memcpy(buf, a, a_len);
    }
    if (b_len != 0u) {
        memcpy(buf + a_len, b, b_len);
    }
    if (c_len != 0u) {
        memcpy(buf + a_len + b_len, c, c_len);
    }
    buf[a_len + b_len + c_len] = '\0';
    return buf;
}

static inline IdentifierStatus
Identifier_WithPrefixedPath(const Identifier *id, const char *prefix, Identifier *out)
{
    char *path;
    IdentifierStatus status;

    if (!Identifier_IsInitialized(id)) {
        return IDENTIFIER_ERROR_INVALID_ID;
    }
    path = _Identifier_join2(prefix, id->path);
    if (path == NULL) {
        return IDENTIFIER_ERROR_OOM;
    }
    status = Identifier_WithPath(id, path, out);
    free(path);
    return status;
}

static inline IdentifierStatus
Identifier_WithSuffixedPath(const Identifier *id, const char *suffix, Identifier *out)
{
    char *path;
    IdentifierStatus status;

    if (!Identifier_IsInitialized(id)) {
        return IDENTIFIER_ERROR_INVALID_ID;
    }
    path = _Identifier_join2(id->path, suffix);
    if (path == NULL) {
        return IDENTIFIER_ERROR_OOM;
    }
    status = Identifier_WithPath(id, path, out);
    free(path);
    return status;
}

static inline char *
Identifier_Str(const Identifier *id)
{
    size_t ns_len;
    size_t path_len;
    char *buf;

    if (!Identifier_IsInitialized(id)) {
        return NULL;
    }
    ns_len = strlen(id->ns);
    path_len = strlen(id->path);
    buf = (char *)malloc(ns_len + 1u + path_len + 1u);
    if (buf == NULL) {
        return NULL;
    }
    memcpy(buf, id->ns, ns_len);
    buf[ns_len] = IDENTIFIER_NAMESPACE_SEPARATOR;
    memcpy(buf + ns_len + 1u, id->path, path_len);
    buf[ns_len + 1u + path_len] = '\0';
    return buf;
}

static inline int
Identifier_Equals(const Identifier *a, const Identifier *b)
{
    return Identifier_IsInitialized(a) &&
           Identifier_IsInitialized(b) &&
           strcmp(a->ns, b->ns) == 0 &&
           strcmp(a->path, b->path) == 0;
}

static inline unsigned long
Identifier_Hash(const Identifier *id)
{
    const unsigned char *p;
    unsigned long h_ns = 2166136261u;
    unsigned long h_path = 2166136261u;

    if (!Identifier_IsInitialized(id)) {
        return 0u;
    }

    for (p = (const unsigned char *)id->ns; *p != '\0'; p++) {
        h_ns ^= (unsigned long)(*p);
        h_ns *= 16777619u;
    }
    for (p = (const unsigned char *)id->path; *p != '\0'; p++) {
        h_path ^= (unsigned long)(*p);
        h_path *= 16777619u;
    }

    return 31u * h_ns + h_path;
}

static inline int
Identifier_Compare(const Identifier *a, const Identifier *b)
{
    int result;

    if (!Identifier_IsInitialized(a) || !Identifier_IsInitialized(b)) {
        return 0;
    }
    result = strcmp(a->path, b->path);
    if (result == 0) {
        result = strcmp(a->ns, b->ns);
    }
    return result;
}

static inline char *
Identifier_ToUnderscoreSeparatedString(const Identifier *id)
{
    size_t i;
    char *buf;

    buf = Identifier_Str(id);
    if (buf == NULL) {
        return NULL;
    }
    for (i = 0; buf[i] != '\0'; i++) {
        if (buf[i] == '/' || buf[i] == ':') {
            buf[i] = '_';
        }
    }
    return buf;
}

static inline char *
Identifier_ToTranslationKey(const Identifier *id)
{
    if (!Identifier_IsInitialized(id)) {
        return NULL;
    }
    return _Identifier_join3(id->ns, ".", id->path);
}

static inline char *
Identifier_ToShortTranslationKey(const Identifier *id)
{
    if (!Identifier_IsInitialized(id)) {
        return NULL;
    }
    if (strcmp(id->ns, IDENTIFIER_DEFAULT_NAMESPACE) == 0) {
        return _Identifier_strdup_full(id->path);
    }
    return Identifier_ToTranslationKey(id);
}

static inline char *
Identifier_ToTranslationKeyWithPrefix(const Identifier *id, const char *prefix)
{
    char *base;
    char *out;

    base = Identifier_ToTranslationKey(id);
    if (base == NULL) {
        return NULL;
    }
    out = _Identifier_join3(prefix, ".", base);
    free(base);
    return out;
}

static inline char *
Identifier_ToTranslationKeyWithPrefixSuffix(const Identifier *id,
                                            const char *prefix,
                                            const char *suffix)
{
    char *tmp;
    char *out;

    tmp = Identifier_ToTranslationKeyWithPrefix(id, prefix);
    if (tmp == NULL) {
        return NULL;
    }
    out = _Identifier_join3(tmp, ".", suffix);
    free(tmp);
    return out;
}
