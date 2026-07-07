#include <minecraft.h>

static _Block TEST_BLOCK_STONE = {
    {"minecraft", "stone"},
    0,
    "block.minecraft.stone",
    6.0f,
    0.6f,
    0,
};

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
    Vec3i block_pos = {1, 2, 3};
    Vec3d entity_pos = {4.5, 5.5, 6.5};
    Vec2f rot = {90.0f, 0.0f};
    String text;
    McfStrRef ref;
    Target target;
    UUID uuid;
    McfStrRef block_name;
    McfStrRef entity_name;

    if (TARGET_PLAYERS == 0)
        return 101;
    if (block_pos.x != 1 || block_pos.y != 2 || block_pos.z != 3)
        return 102;
    if (!(entity_pos.x > 4.0 && entity_pos.y > 5.0 && entity_pos.z > 6.0))
        return 103;
    if (!(rot.x > 89.0f && rot.y < 1.0f))
        return 104;

    text = String_FromLiteral("hello");
    if (text == 0 || String_EnsureMcfStrRef(text) != 0)
        return 105;
    ref = String_GetMcfStrRef(text);
    if (McfStrRef_SlotId(ref) < 0)
        return 106;

    ref = McfStrRef_FromLiteral("say header smoke");
    if (ref == 0 || McfStrRef_SlotId(ref) < 0)
        return 107;
    McfStrRef_Release(ref);

    target = Target_FromLiteral("@s");
    if (target == 0 || McfStrRef_SlotId(Target_GetMcfStrRef(target)) < 0)
        return 108;

    uuid = UUID_FromLiteral("00000000-0000-0000-0000-000000000000");
    if (uuid == 0 || McfStrRef_SlotId(UUID_GetMcfStrRef(uuid)) < 0)
        return 109;

    block_name = Block_EnsureMcfName(&TEST_BLOCK_STONE);
    if (block_name == 0 || McfStrRef_SlotId(block_name) < 0)
        return 110;
    entity_name = Entity_EnsureMcfName(&TEST_ARMOR_STAND);
    if (entity_name == 0 || McfStrRef_SlotId(entity_name) < 0)
        return 111;

    UUID_Release(uuid);
    Target_Release(target);
    String_Release(text);
    return 0;
}
