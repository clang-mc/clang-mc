#include <minecraft.h>

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
    Target player;
    McfStrRef player_name;
    McfStrRef x;
    McfStrRef y;
    McfStrRef z;
    McfStrRef yaw;
    McfStrRef pitch;
    int player_slot;
    int x_slot;
    int y_slot;
    int z_slot;
    int yaw_slot;
    int pitch_slot;
    int r1;
    int r2;
    int r3;

    player = Target_FromLiteral("CodexBot");
    if (player == 0)
        return 100;

    r1 = summon(&TEST_ARMOR_STAND, (Vec3d){2.5, 82.0, 2.5});
    r2 = tp(player, (Vec3d){4.5, 82.0, 4.5});

    player_name = Target_GetMcfStrRef(player);
    player_slot = McfStrRef_SlotId(player_name);
    x = McfStrRef_FromDouble(6.5);
    x_slot = McfStrRef_SlotId(x);
    y = McfStrRef_FromDouble(82.0);
    y_slot = McfStrRef_SlotId(y);
    z = McfStrRef_FromDouble(6.5);
    z_slot = McfStrRef_SlotId(z);
    yaw = McfStrRef_FromFloat(90.0f);
    yaw_slot = McfStrRef_SlotId(yaw);
    pitch = McfStrRef_FromFloat(0.0f);
    pitch_slot = McfStrRef_SlotId(pitch);
    if (player_slot < 0 || x_slot < 0 || y_slot < 0 || z_slot < 0 ||
        yaw_slot < 0 || pitch_slot < 0) {
        McfStrRef_Release(x);
        McfStrRef_Release(y);
        McfStrRef_Release(z);
        McfStrRef_Release(yaw);
        McfStrRef_Release(pitch);
        Target_Release(player);
        return 110;
    }

    r3 = tp_rot_unsafe(player_name, x, y, z, yaw, pitch);

    McfStrRef_Release(x);
    McfStrRef_Release(y);
    McfStrRef_Release(z);
    McfStrRef_Release(yaw);
    McfStrRef_Release(pitch);
    Target_Release(player);

    if (r1 != 1)
        return 101;
    if (r2 != 1)
        return 102;
    if (r3 != 1)
        return 103;

    return 0;
}
