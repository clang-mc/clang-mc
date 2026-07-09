#pragma once

#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "String.h"

typedef struct _Target _Target;
typedef _Target *Target;

struct _Target {
    McRefHeader rc;
    const char *expr;
    int       owns_expr;
    McfStrRef mcf;
};

/* Target_From* returns owned targets. TARGET_* constants are borrowed singletons. */
static void _Target_Destroy(void *obj);

static const McRefOps _TARGET_REF_OPS = {
    _Target_Destroy,
    "Target",
};

static inline Target
_Target_NewWithExpr(const char *expr, int owns_expr)
{
    Target target;

    if (expr == NULL || expr[0] == '\0') {
        return NULL;
    }

    target = (Target)malloc(sizeof(_Target));
    if (target == NULL) {
        if (owns_expr) {
            free((void *)expr);
        }
        return NULL;
    }

    MC_REF_INIT_DYNAMIC(target, &_TARGET_REF_OPS);
    target->expr = expr;
    target->owns_expr = owns_expr;
    target->mcf = NULL;
    return target;
}

static inline Target
Target_FromCString(const char *expr)
{
    char *copy;
    size_t len;

    if (expr == NULL || expr[0] == '\0') {
        return NULL;
    }

    len = strlen(expr);
    copy = (char *)malloc(len + 1u);
    if (copy == NULL) {
        return NULL;
    }
    memcpy(copy, expr, len + 1u);
    return _Target_NewWithExpr(copy, 1);
}

static inline Target
Target_FromLiteral(const char *expr)
{
    Target target;

    target = _Target_NewWithExpr(expr, 0);
    if (target == NULL) {
        return NULL;
    }
    target->mcf = McfStrRef_FromLiteral(expr);
    if (target->mcf == NULL) {
        free(target);
        return NULL;
    }
    return target;
}

static inline Target
Target_FromString(String expr)
{
    return Target_FromCString(String_CStr(expr));
}

static inline Target
Target_Retain(Target target)
{
    return (Target)McRef_Retain(target);
}

static inline void
Target_Release(Target target)
{
    McRef_Release(target);
}

static void
_Target_Destroy(void *obj)
{
    Target target;

    target = (Target)obj;
    if (target->mcf != NULL) {
        McfStrRef_Release(target->mcf);
        target->mcf = NULL;
    }
    if (target->owns_expr) {
        free((void *)target->expr);
    }
    free(target);
}

static inline const char *
Target_CStr(Target target)
{
    return target ? target->expr : NULL;
}

static inline int
Target_EnsureMcf(Target target)
{
    if (target == NULL) {
        return -1;
    }
    if (target->mcf == NULL) {
        if (target->owns_expr) {
            target->mcf = McfStrRef_FromCString(target->expr);
        } else {
            target->mcf = McfStrRef_FromLiteral(target->expr);
        }
        if (target->mcf == NULL) {
            return -1;
        }
    }
    return McfStrRef_SlotId(target->mcf) < 0 ? -1 : 0;
}

static inline McfStrRef
Target_GetMcfStrRef(Target target)
{
    if (Target_EnsureMcf(target) != 0) {
        return NULL;
    }
    return target->mcf;
}

static _Target TARGET_ENTITIES_IMPL = {{MC_REF_STATIC, &_TARGET_REF_OPS}, "@e", 0, NULL};
static _Target TARGET_PLAYERS_IMPL = {{MC_REF_STATIC, &_TARGET_REF_OPS}, "@a", 0, NULL};
static _Target TARGET_RANDOM_PLAYER_IMPL = {{MC_REF_STATIC, &_TARGET_REF_OPS}, "@r", 0, NULL};
static _Target TARGET_NEAREST_ENTITY_IMPL = {{MC_REF_STATIC, &_TARGET_REF_OPS}, "@n", 0, NULL};
static _Target TARGET_THIS_IMPL = {{MC_REF_STATIC, &_TARGET_REF_OPS}, "@s", 0, NULL};

static Target const TARGET_ENTITIES = &TARGET_ENTITIES_IMPL;
static Target const TARGET_PLAYERS = &TARGET_PLAYERS_IMPL;
static Target const TARGET_RANDOM_PLAYER = &TARGET_RANDOM_PLAYER_IMPL;
static Target const TARGET_NEAREST_ENTITY = &TARGET_NEAREST_ENTITY_IMPL;
static Target const TARGET_THIS = &TARGET_THIS_IMPL;
