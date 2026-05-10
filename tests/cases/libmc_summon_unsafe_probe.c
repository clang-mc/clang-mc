#include <minecraft.h>

int main(void) {
    McfStrRef entity_type;
    McfStrRef x;
    McfStrRef y;
    McfStrRef z;
    int entity_type_slot;
    int x_slot;
    int y_slot;
    int z_slot;
    int r;

    entity_type = McfStrRef_FromLiteral("minecraft:armor_stand");
    entity_type_slot = McfStrRef_SlotId(entity_type);
    x = McfStrRef_FromLiteral("2.5");
    x_slot = McfStrRef_SlotId(x);
    y = McfStrRef_FromLiteral("82");
    y_slot = McfStrRef_SlotId(y);
    z = McfStrRef_FromLiteral("2.5");
    z_slot = McfStrRef_SlotId(z);
    if (entity_type_slot < 0 || x_slot < 0 || y_slot < 0 || z_slot < 0)
        return 100;

    r = summon_unsafe(entity_type, x, y, z);
    return r == 1 ? 0 : 110 + r;
}
