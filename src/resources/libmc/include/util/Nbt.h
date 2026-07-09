#pragma once

/*
 * Nbt: a handle to a structured-NBT slot in the runtime "NBT heap"
 * (storage std:vm nbt.slots[]). It mirrors McfStrRef exactly at the slot
 * lifecycle level (alloc/free/refcnt via std:_internal/nbt_*), but the slot's
 * `value` field holds a *structured NBT value* (compound/list/scalar), not a
 * string. NBT is therefore never serialized into command text on the C side:
 * commands that consume an Nbt reference its slot directly via
 *   ... set from storage std:vm nbt.slots[N].value
 * and the value is built with native `data modify` operations (see nbt_* ops),
 * never by C string concatenation.
 *
 * The nbt heap is independent from both the mcstr string heap and the linear
 * `std:vm heap` (int array). All three share only their code shape.
 *
 * Ownership: Nbt_New/From* return owned objects; pair them with Nbt_Release().
 * The C refcount is mirrored into the runtime slot's `refcnt` field so the
 * runtime string/NBT arena can account for live references.
 *
 * This header exposes only the opaque handle and the public API as prototypes;
 * the implementations live in libmc/util/Nbt.c and are compiled once into
 * _ll_libmc.mch.
 */

#include <stddef.h>

#include "Ref.h"

typedef struct _Nbt _Nbt;
typedef _Nbt *Nbt;

/* Nbt_New/From* return owned objects; pair them with Nbt_Release(). */
Nbt  Nbt_New(void);
Nbt  Nbt_Retain(Nbt ref);
void Nbt_Release(Nbt ref);
int  Nbt_SlotId(Nbt ref);

/* --- Value operations (native NBT, no C string building) ------------------ */

/* NOTE: this is not yet a full typed NBT builder. The nbt heap runtime
 * (std:_internal/nbt_merge/append/insert/prepend/remove/set_path) is in place to
 * back a proper compound/list/typed-scalar builder, which is future work. */

int Nbt_SetInt(Nbt ref, int value);
int Nbt_SetFloat(Nbt ref, float value);
int Nbt_SetFromSlot(Nbt dst, Nbt src);
int Nbt_Get(Nbt ref);
