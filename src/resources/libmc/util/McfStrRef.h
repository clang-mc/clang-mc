#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mcstr.h>

#include "Ref.h"

typedef struct _String *String;
static inline const char *String_CStr(String s);

typedef struct _McfStrRef _McfStrRef;
typedef _McfStrRef *McfStrRef;
static inline McfStrRef McfStrRef_FromString(String src);

struct _McfStrRef {
    McRefHeader rc;
    int         slot_id;
};

/* McfStrRef_New/From* return owned objects. Pair them with McfStrRef_Release(). */
static void _McfStrRef_Destroy(void *obj);
static inline int McfStrRef_SlotId(McfStrRef ref);

static const McRefOps _MCFSTRREF_REF_OPS = {
    _McfStrRef_Destroy,
    "McfStrRef",
};

static inline int
_McfStrRef_RuntimeNextSlotId(void)
{
    int next_id;

    __asm volatile (
        "inline execute store result score %0 vm_regs run data get storage std:vm mcstr.next_id 1"
        : "=r"(next_id)
    );
    return next_id;
}

static inline int
_McfStrRef_HasValidSlot(McfStrRef ref)
{
    int next_id;

    if (ref == NULL || ref->slot_id < 0) {
        return 0;
    }
    next_id = _McfStrRef_RuntimeNextSlotId();
    if (ref->slot_id >= 0 && ref->slot_id < next_id) {
        return 1;
    }
    ref->slot_id = -1;
    return 0;
}

static inline int
_McfStrRef_AllocSlot(McfStrRef ref)
{
    int slot_id;

    if (ref == NULL) {
        return -1;
    }
    if (_McfStrRef_HasValidSlot(ref)) {
        return 0;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1%}\n"
        "inline function std:_internal/mcstr_alloc with storage std:vm s6\n"
        "inline scoreboard players operation %0 vm_regs = rax vm_regs"
        : "=r"(slot_id)
    );
    ref->slot_id = slot_id;
    return 0;
}

static inline int
_McfStrRef_SetSlotRefcntById(int slot_id, int refcnt)
{
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1, refcnt: -1%}\n"
        "inline data modify storage std:vm s6.id set value %0\n"
        "inline data modify storage std:vm s6.refcnt set value %1\n"
        "inline function std:_internal/mcstr_set_slot_refcnt with storage std:vm s6"
        :
        : "r"(slot_id), "r"(refcnt)
    );
    return 0;
}

static inline int
_McfStrRef_SetSlotRefcnt(McfStrRef ref)
{
    if (ref == NULL || ref->slot_id < 0) {
        return 0;
    }
    return _McfStrRef_SetSlotRefcntById(ref->slot_id, (int)ref->rc.refcnt);
}

static inline int
_McfStrRef_PrepareSlotUpdateById(int slot_id)
{
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1, value: \"\", next: \"\"%}\n"
        "inline data modify storage std:vm s6.id set value %0"
        :
        : "r"(slot_id)
    );
    return 0;
}

static inline int
_McfStrRef_CommitScratchToSlotById(int slot_id, int refcnt)
{
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6.value set from storage std:vm s1.str\n"
        "inline function std:_internal/mcstr_set_slot_value with storage std:vm s6"
    );
    return _McfStrRef_SetSlotRefcntById(slot_id, refcnt);
}

static inline __attribute__((always_inline)) void
_McfStrRef_BeginScratchValueFromCString(const char *src, size_t len)
{
    if (src == NULL || len == 0u) {
        __asm volatile (
            "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}"
        );
        return;
    }
    __mc_string_begin(src);
}

static inline __attribute__((always_inline)) void
_McfStrRef_AppendScratchValueFromCString(const char *src, size_t len)
{
    if (src == NULL || len == 0u) {
        return;
    }
    __mc_string_append(src);
}

static inline int
_McfStrRef_LoadSlotToScratch(int slot_id)
{
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s1 set value {str: \"\", next: \"\"}\n"
        "inline data modify storage std:vm s1.str set from storage std:vm mcstr.slots[%0].value"
        :
        : "r"(slot_id)
    );
    return 0;
}

static inline int
_McfStrRef_AssignSource(McfStrRef ref, const char *src, size_t len)
{
    if (ref == NULL) {
        return -1;
    }
    if (_McfStrRef_AllocSlot(ref) != 0) {
        return -1;
    }
    if (_McfStrRef_PrepareSlotUpdateById(ref->slot_id) != 0) {
        return -1;
    }
    _McfStrRef_BeginScratchValueFromCString(src, len);
    return _McfStrRef_CommitScratchToSlotById(ref->slot_id, (int)ref->rc.refcnt);
}

static inline McfStrRef
McfStrRef_New(void)
{
    McfStrRef ref;

    ref = (McfStrRef)malloc(sizeof(_McfStrRef));
    if (ref == NULL) {
        return NULL;
    }
    MC_REF_INIT_DYNAMIC(ref, &_MCFSTRREF_REF_OPS);
    ref->slot_id = -1;
    if (_McfStrRef_AssignSource(ref, "", 0u) != 0) {
        free(ref);
        return NULL;
    }
    return ref;
}

static inline McfStrRef
McfStrRef_FromCString(const char *src)
{
    McfStrRef ref;

    ref = (McfStrRef)malloc(sizeof(_McfStrRef));
    if (ref == NULL) {
        return NULL;
    }
    MC_REF_INIT_DYNAMIC(ref, &_MCFSTRREF_REF_OPS);
    ref->slot_id = -1;
    if (_McfStrRef_AssignSource(ref, src, src ? strlen(src) : 0u) != 0) {
        free(ref);
        return NULL;
    }
    return ref;
}

static inline McfStrRef
McfStrRef_FromLiteral(const char *src)
{
    return McfStrRef_FromCString(src);
}

static inline McfStrRef
McfStrRef_Retain(McfStrRef ref)
{
    if (ref != NULL && !McRef_IsStatic(ref)) {
        (void)McRef_Retain(ref);
        (void)_McfStrRef_SetSlotRefcnt(ref);
    }
    return ref;
}

static inline void
McfStrRef_Release(McfStrRef ref)
{
    if (ref == NULL || ref->rc.refcnt < 0) {
        return;
    }
    if (ref->rc.refcnt <= 0) {
        return;
    }
    if (ref->rc.refcnt == 1) {
        ref->rc.refcnt = 0;
        _McfStrRef_Destroy(ref);
        return;
    }
    ref->rc.refcnt--;
    (void)_McfStrRef_SetSlotRefcnt(ref);
}

static void
_McfStrRef_Destroy(void *obj)
{
    McfStrRef ref;
    int       slot_id;

    ref = (McfStrRef)obj;
    slot_id = ref->slot_id;
    if (slot_id >= 0) {
        __asm volatile (
            "inline data modify storage std:vm s6 set value %{id: -1%}\n"
            "inline data modify storage std:vm s6.id set value %0\n"
            "inline function std:_internal/mcstr_free_slot with storage std:vm s6"
            :
            : "r"(slot_id)
        );
    }
    free(ref);
}

static inline int
McfStrRef_SlotId(McfStrRef ref)
{
    if (!_McfStrRef_HasValidSlot(ref)) {
        return -1;
    }
    return ref->slot_id;
}

static inline int
McfStrRef_Clear(McfStrRef ref)
{
    return _McfStrRef_AssignSource(ref, "", 0u);
}

static inline int
McfStrRef_AssignCString(McfStrRef ref, const char *src)
{
    return _McfStrRef_AssignSource(ref, src, src ? strlen(src) : 0u);
}

static inline int
McfStrRef_AppendCString(McfStrRef ref, const char *suffix)
{
    if (ref == NULL) {
        return -1;
    }
    if (suffix == NULL || suffix[0] == '\0') {
        return 0;
    }
    if (!_McfStrRef_HasValidSlot(ref)) {
        return -1;
    }
    if (_McfStrRef_PrepareSlotUpdateById(ref->slot_id) != 0) {
        return -1;
    }
    if (_McfStrRef_LoadSlotToScratch(ref->slot_id) != 0) {
        return -1;
    }
    _McfStrRef_AppendScratchValueFromCString(suffix, strlen(suffix));
    return _McfStrRef_CommitScratchToSlotById(ref->slot_id, (int)ref->rc.refcnt);
}

static inline int
McfStrRef_AppendLiteral(McfStrRef ref, const char *suffix)
{
    return McfStrRef_AppendCString(ref, suffix);
}

static inline int
McfStrRef_AppendInt(McfStrRef ref, int value)
{
    char buf[16];

    if (itoa(value, buf, 10) == NULL) {
        return -1;
    }
    return McfStrRef_AppendCString(ref, buf);
}

static inline int
McfStrRef_AppendDouble(McfStrRef ref, double value)
{
    char buf[64];

    if (gcvt_fast(value, 17, buf) == NULL) {
        return -1;
    }
    return McfStrRef_AppendCString(ref, buf);
}

static inline int
McfStrRef_AppendFloat(McfStrRef ref, float value)
{
    char buf[32];

    if (gcvt_fast((double)value, 9, buf) == NULL) {
        return -1;
    }
    return McfStrRef_AppendCString(ref, buf);
}

static inline McfStrRef
McfStrRef_FromInt(int value)
{
    McfStrRef ref;
    char buf[16];

    if (itoa(value, buf, 10) == NULL) {
        return NULL;
    }
    ref = McfStrRef_FromCString(buf);
    return ref;
}

static inline McfStrRef
McfStrRef_FromDouble(double value)
{
    McfStrRef ref;
    char buf[64];

    if (gcvt_fast(value, 17, buf) == NULL) {
        return NULL;
    }
    ref = McfStrRef_FromCString(buf);
    return ref;
}

static inline McfStrRef
McfStrRef_FromFloat(float value)
{
    McfStrRef ref;
    char buf[32];

    if (gcvt_fast((double)value, 9, buf) == NULL) {
        return NULL;
    }
    ref = McfStrRef_FromCString(buf);
    return ref;
}

static inline int
McfStrRef_Exec(McfStrRef ref)
{
    int ret;
    int slot_id;

    slot_id = McfStrRef_SlotId(ref);
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1%}\n"
        "inline data modify storage std:vm s6.id set value %1\n"
        "inline function std:_internal/mcstr_exec with storage std:vm s6\n"
        "inline scoreboard players operation %0 vm_regs = rax vm_regs"
        : "=r"(ret)
        : "r"(slot_id)
    );
    return ret;
}
