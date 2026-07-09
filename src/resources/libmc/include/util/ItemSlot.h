#pragma once

/*
 * ItemSlot: a thin value wrapper around an item-slot token
 * (e.g. "container.0", "weapon.mainhand", "hotbar.4"). Like NbtPath it is a
 * plain command token carried as text; it does not touch the NBT heap. The
 * wrapped pointer is borrowed and must outlive any command call consuming it.
 */

#include "McfStrRef.h"

typedef struct {
    const char *text;
} ItemSlot;

static inline ItemSlot
ItemSlot_Lit(const char *text)
{
    ItemSlot slot;

    slot.text = text;
    return slot;
}

static inline int
ItemSlot_AppendTo(McfStrRef cmd, ItemSlot slot)
{
    if (slot.text == NULL || slot.text[0] == '\0') {
        return -1;
    }
    return McfStrRef_AppendCString(cmd, slot.text);
}
