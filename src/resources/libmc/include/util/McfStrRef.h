#pragma once

#include <stddef.h>

#include "Ref.h"

/*
 * McfStrRef: a handle to a string slot in the runtime mcstr heap.
 *
 * This header exposes only the opaque handle type and the public API as
 * prototypes; the implementations live in libmc/util/McfStrRef.c and are
 * compiled once into _ll_libmc.mch. User code therefore emits plain calls and
 * never re-emits the function bodies (which would collide with the precompiled
 * copies as duplicate mcasm labels).
 */

typedef struct _String *String;
const char *String_CStr(String s);                      /* defined in String.c */

typedef struct _McfStrRef _McfStrRef;
typedef _McfStrRef *McfStrRef;

McfStrRef McfStrRef_FromString(String src);             /* defined in String.c */

/* McfStrRef_New/From* return owned objects. Pair them with McfStrRef_Release(). */
McfStrRef McfStrRef_New(void);
McfStrRef McfStrRef_FromCString(const char *src);
McfStrRef McfStrRef_FromLiteral(const char *src);
McfStrRef McfStrRef_FromInt(int value);
McfStrRef McfStrRef_FromDouble(double value);
McfStrRef McfStrRef_FromFloat(float value);

McfStrRef McfStrRef_Retain(McfStrRef ref);
void      McfStrRef_Release(McfStrRef ref);

int       McfStrRef_SlotId(McfStrRef ref);
int       McfStrRef_Clear(McfStrRef ref);
int       McfStrRef_AssignCString(McfStrRef ref, const char *src);
int       McfStrRef_AppendCString(McfStrRef ref, const char *suffix);
int       McfStrRef_AppendLiteral(McfStrRef ref, const char *suffix);
int       McfStrRef_AppendInt(McfStrRef ref, int value);
int       McfStrRef_AppendDouble(McfStrRef ref, double value);
int       McfStrRef_AppendFloat(McfStrRef ref, float value);
int       McfStrRef_Exec(McfStrRef ref);
