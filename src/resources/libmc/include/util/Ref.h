#pragma once

/*
 * Shared intrusive reference-counting support for libmc heap objects.
 *
 * Contract:
 * - Every ref-counted object must place McRefHeader as its first field.
 * - Dynamic objects initialize refcnt to 1.
 * - Static singletons initialize refcnt to MC_REF_STATIC and ignore
 *   Retain/Release operations.
 */

#include <assert.h>
#include <stddef.h>

typedef ptrdiff_t McRefCount;

#define MC_REF_STATIC ((McRefCount)-1)

typedef struct McRefOps {
    void (*destroy)(void *obj);
    const char *type_name;
} McRefOps;

typedef struct McRefHeader {
    McRefCount refcnt;
    const McRefOps *ops;
} McRefHeader;

static inline int
McRef_IsStatic(const void *obj)
{
    const McRefHeader *header;

    header = (const McRefHeader *)obj;
    return header != NULL && header->refcnt < 0;
}

static inline void *
McRef_Retain(void *obj)
{
    McRefHeader *header;

    header = (McRefHeader *)obj;
    if (header == NULL || header->refcnt < 0) {
        return obj;
    }

    assert(header->ops != NULL);
    header->refcnt++;
    return obj;
}

static inline void
McRef_Release(void *obj)
{
    McRefHeader *header;

    header = (McRefHeader *)obj;
    if (header == NULL || header->refcnt < 0) {
        return;
    }

    assert(header->ops != NULL);
    assert(header->refcnt > 0);
    header->refcnt--;
    if (header->refcnt == 0) {
        header->ops->destroy(obj);
    }
}

#define MC_REF_INIT_DYNAMIC(obj, ops_ptr) \
    do { \
        (obj)->rc.refcnt = 1; \
        (obj)->rc.ops = (ops_ptr); \
    } while (0)

#define MC_REF_INIT_STATIC(obj, ops_ptr) \
    do { \
        (obj)->rc.refcnt = MC_REF_STATIC; \
        (obj)->rc.ops = (ops_ptr); \
    } while (0)
