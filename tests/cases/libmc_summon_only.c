#include <minecraft.h>
#include <commands.h>

static _Entity TEST_ARMOR_STAND = {
    {"minecraft", "armor_stand"},
    0,
    "entity.minecraft.armor_stand",
    ENTITY_SPAWN_GROUP_MISC,
    0.5f,
    1.975f,
    1.7775f,
};

int main(void) {
    int r;

    r = summon(&TEST_ARMOR_STAND, (Vec3d){2.5, 82.0, 2.5});
    return r == 1 ? 0 : 100 + r;
}
