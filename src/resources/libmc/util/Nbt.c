#include "util/Nbt.h"
#include "util/McfStrRef.h"

#include <stddef.h>
#include <stdlib.h>

/*
 * Nbt implementation. See util/Nbt.h for the model. As with McfStrRef, the
 * public API is defined out-of-line here so it is compiled exactly once into
 * _ll_libmc.mch; the `_`-prefixed helpers stay `static inline` and never leak
 * as standalone symbols.
 */

struct _Nbt {
    McRefHeader rc;
    int         slot_id;
};

static void _Nbt_Destroy(void *obj);

static const McRefOps _NBT_REF_OPS = {
    _Nbt_Destroy,
    "Nbt",
};

static inline int
_Nbt_RuntimeNextSlotId(void)
{
    int next_id;

    __asm volatile (
        "inline execute store result score %0 vm_regs run data get storage std:vm nbt.next_id 1"
        : "=r"(next_id)
    );
    return next_id;
}

static inline int
_Nbt_HasValidSlot(Nbt ref)
{
    int next_id;

    if (ref == NULL || ref->slot_id < 0) {
        return 0;
    }
    next_id = _Nbt_RuntimeNextSlotId();
    if (ref->slot_id >= 0 && ref->slot_id < next_id) {
        return 1;
    }
    ref->slot_id = -1;
    return 0;
}

static inline int
_Nbt_AllocSlot(Nbt ref)
{
    int slot_id;

    if (ref == NULL) {
        return -1;
    }
    if (_Nbt_HasValidSlot(ref)) {
        return 0;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1%}\n"
        "inline function std:_internal/nbt_alloc with storage std:vm s6\n"
        "inline scoreboard players operation %0 vm_regs = rax vm_regs"
        : "=r"(slot_id)
    );
    ref->slot_id = slot_id;
    return 0;
}

static inline int
_Nbt_SetSlotRefcntById(int slot_id, int refcnt)
{
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1, refcnt: -1%}\n"
        "inline data modify storage std:vm s6.id set value %0\n"
        "inline data modify storage std:vm s6.refcnt set value %1\n"
        "inline function std:_internal/nbt_set_slot_refcnt with storage std:vm s6"
        :
        : "r"(slot_id), "r"(refcnt)
    );
    return 0;
}

static inline int
_Nbt_SetSlotRefcnt(Nbt ref)
{
    if (ref == NULL || ref->slot_id < 0) {
        return 0;
    }
    return _Nbt_SetSlotRefcntById(ref->slot_id, (int)ref->rc.refcnt);
}

Nbt
Nbt_New(void)
{
    Nbt ref;

    ref = (Nbt)malloc(sizeof(_Nbt));
    if (ref == NULL) {
        return NULL;
    }
    MC_REF_INIT_DYNAMIC(ref, &_NBT_REF_OPS);
    ref->slot_id = -1;
    if (_Nbt_AllocSlot(ref) != 0) {
        free(ref);
        return NULL;
    }
    /* Mirror the initial refcount (1) into the freshly allocated slot, the
     * same way McfStrRef_New commits refcnt on its first assign. */
    (void)_Nbt_SetSlotRefcnt(ref);
    return ref;
}

Nbt
Nbt_Retain(Nbt ref)
{
    if (ref != NULL && !McRef_IsStatic(ref)) {
        (void)McRef_Retain(ref);
        (void)_Nbt_SetSlotRefcnt(ref);
    }
    return ref;
}

void
Nbt_Release(Nbt ref)
{
    if (ref == NULL || ref->rc.refcnt < 0) {
        return;
    }
    if (ref->rc.refcnt <= 0) {
        return;
    }
    if (ref->rc.refcnt == 1) {
        ref->rc.refcnt = 0;
        _Nbt_Destroy(ref);
        return;
    }
    ref->rc.refcnt--;
    (void)_Nbt_SetSlotRefcnt(ref);
}

static void
_Nbt_Destroy(void *obj)
{
    Nbt ref;
    int slot_id;

    ref = (Nbt)obj;
    slot_id = ref->slot_id;
    if (slot_id >= 0) {
        __asm volatile (
            "inline data modify storage std:vm s6 set value %{id: -1%}\n"
            "inline data modify storage std:vm s6.id set value %0\n"
            "inline function std:_internal/nbt_free_slot with storage std:vm s6"
            :
            : "r"(slot_id)
        );
    }
    free(ref);
}

int
Nbt_SlotId(Nbt ref)
{
    if (!_Nbt_HasValidSlot(ref)) {
        return -1;
    }
    return ref->slot_id;
}

/* --- Value operations (native NBT, no C string building) ------------------ */

/* NOTE: this is not yet a full typed NBT builder. The nbt heap runtime
 * (std:_internal/nbt_merge/append/insert/prepend/remove/set_path) is in place to
 * back a proper compound/list/typed-scalar builder, which is future work. */

/* Set the slot's whole value to a plain integer (built at runtime from a
 * register). Primarily exercises the heap end-to-end; richer builders arrive
 * with the data.h phase. */
int
Nbt_SetInt(Nbt ref, int value)
{
    int slot_id;

    slot_id = Nbt_SlotId(ref);
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1, val: -1%}\n"
        "inline data modify storage std:vm s6.id set value %0\n"
        "inline data modify storage std:vm s6.val set value %1\n"
        "inline function std:_internal/nbt_set_int with storage std:vm s6"
        :
        : "r"(slot_id), "r"(value)
    );
    return 0;
}

int
Nbt_SetFloat(Nbt ref, float value)
{
    int slot_id;

    slot_id = Nbt_SlotId(ref);
    if (slot_id < 0) {
        return -1;
    }

    // convert float to string
    McfStrRef valueStr = McfStrRef_FromFloat(value);

    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1, val: -1%}\n"
        "inline data modify storage std:vm s6.id set value %0\n"
        "inline data modify storage std:vm s6.val set from storage mc_str slots[%1]\n"
        "inline function std:_internal/nbt_set_int with storage std:vm s6"
        :
        : "r"(slot_id), "r"(McfStrRef_SlotId(valueStr))
    );
    McfStrRef_Release(valueStr);
    return 0;
}

/* Copy another slot's value into this one (native slot->slot copy). */
int
Nbt_SetFromSlot(Nbt dst, Nbt src)
{
    int dst_slot;
    int src_slot;

    dst_slot = Nbt_SlotId(dst);
    src_slot = Nbt_SlotId(src);
    if (dst_slot < 0 || src_slot < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{dst: -1, src: -1%}\n"
        "inline data modify storage std:vm s6.dst set value %0\n"
        "inline data modify storage std:vm s6.src set value %1\n"
        "inline function std:_internal/nbt_set_from_slot with storage std:vm s6"
        :
        : "r"(dst_slot), "r"(src_slot)
    );
    return 0;
}

/* Read the slot's value as an integer into the return register (data get). */
int
Nbt_Get(Nbt ref)
{
    int ret;
    int slot_id;

    slot_id = Nbt_SlotId(ref);
    if (slot_id < 0) {
        return -1;
    }
    __asm volatile (
        "inline data modify storage std:vm s6 set value %{id: -1%}\n"
        "inline data modify storage std:vm s6.id set value %1\n"
        "inline function std:_internal/nbt_get with storage std:vm s6\n"
        "inline scoreboard players operation %0 vm_regs = rax vm_regs"
        : "=r"(ret)
        : "r"(slot_id)
    );
    return ret;
}
