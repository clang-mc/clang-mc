#pragma once

#include "Entity.h"

#ifdef __cplusplus
extern "C" {
#endif

#define ENTITY_LIST(X) \
    X(ENTITY_ACACIA_BOAT, "minecraft", "acacia_boat", "entity.minecraft.acacia_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_ACACIA_CHEST_BOAT, "minecraft", "acacia_chest_boat", "entity.minecraft.acacia_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_ALLAY, "minecraft", "allay", "entity.minecraft.allay", ENTITY_SPAWN_GROUP_CREATURE, 0.35F, 0.6F, 0.36F) \
    X(ENTITY_AREA_EFFECT_CLOUD, "minecraft", "area_effect_cloud", "entity.minecraft.area_effect_cloud", ENTITY_SPAWN_GROUP_MISC, 6.0F, 0.5F, 0.425F) \
    X(ENTITY_ARMADILLO, "minecraft", "armadillo", "entity.minecraft.armadillo", ENTITY_SPAWN_GROUP_CREATURE, 0.7F, 0.65F, 0.26F) \
    X(ENTITY_ARMOR_STAND, "minecraft", "armor_stand", "entity.minecraft.armor_stand", ENTITY_SPAWN_GROUP_MISC, 0.5F, 1.975F, 1.7775F) \
    X(ENTITY_ARROW, "minecraft", "arrow", "entity.minecraft.arrow", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.13F) \
    X(ENTITY_AXOLOTL, "minecraft", "axolotl", "entity.minecraft.axolotl", ENTITY_SPAWN_GROUP_AXOLOTLS, 0.75F, 0.42F, 0.2751F) \
    X(ENTITY_BAMBOO_CHEST_RAFT, "minecraft", "bamboo_chest_raft", "entity.minecraft.bamboo_chest_raft", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_BAMBOO_RAFT, "minecraft", "bamboo_raft", "entity.minecraft.bamboo_raft", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_BAT, "minecraft", "bat", "entity.minecraft.bat", ENTITY_SPAWN_GROUP_AMBIENT, 0.5F, 0.9F, 0.45F) \
    X(ENTITY_BEE, "minecraft", "bee", "entity.minecraft.bee", ENTITY_SPAWN_GROUP_CREATURE, 0.7F, 0.6F, 0.3F) \
    X(ENTITY_BIRCH_BOAT, "minecraft", "birch_boat", "entity.minecraft.birch_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_BIRCH_CHEST_BOAT, "minecraft", "birch_chest_boat", "entity.minecraft.birch_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_BLAZE, "minecraft", "blaze", "entity.minecraft.blaze", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.8F, 1.53F) \
    X(ENTITY_BLOCK_DISPLAY, "minecraft", "block_display", "entity.minecraft.block_display", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_BOGGED, "minecraft", "bogged", "entity.minecraft.bogged", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.99F, 1.74F) \
    X(ENTITY_BREEZE, "minecraft", "breeze", "entity.minecraft.breeze", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.77F, 1.3452F) \
    X(ENTITY_BREEZE_WIND_CHARGE, "minecraft", "breeze_wind_charge", "entity.minecraft.breeze_wind_charge", ENTITY_SPAWN_GROUP_MISC, 0.3125F, 0.3125F, 0.0F) \
    X(ENTITY_CAMEL, "minecraft", "camel", "entity.minecraft.camel", ENTITY_SPAWN_GROUP_CREATURE, 1.7F, 2.375F, 2.275F) \
    X(ENTITY_CAT, "minecraft", "cat", "entity.minecraft.cat", ENTITY_SPAWN_GROUP_CREATURE, 0.6F, 0.7F, 0.35F) \
    X(ENTITY_CAVE_SPIDER, "minecraft", "cave_spider", "entity.minecraft.cave_spider", ENTITY_SPAWN_GROUP_MONSTER, 0.7F, 0.5F, 0.45F) \
    X(ENTITY_CHERRY_BOAT, "minecraft", "cherry_boat", "entity.minecraft.cherry_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_CHERRY_CHEST_BOAT, "minecraft", "cherry_chest_boat", "entity.minecraft.cherry_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_CHEST_MINECART, "minecraft", "chest_minecart", "entity.minecraft.chest_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_CHICKEN, "minecraft", "chicken", "entity.minecraft.chicken", ENTITY_SPAWN_GROUP_CREATURE, 0.4F, 0.7F, 0.644F) \
    X(ENTITY_COD, "minecraft", "cod", "entity.minecraft.cod", ENTITY_SPAWN_GROUP_WATER_AMBIENT, 0.5F, 0.3F, 0.195F) \
    X(ENTITY_COMMAND_BLOCK_MINECART, "minecraft", "command_block_minecart", "entity.minecraft.command_block_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_COW, "minecraft", "cow", "entity.minecraft.cow", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.4F, 1.3F) \
    X(ENTITY_CREAKING, "minecraft", "creaking", "entity.minecraft.creaking", ENTITY_SPAWN_GROUP_MONSTER, 0.9F, 2.7F, 2.3F) \
    X(ENTITY_CREEPER, "minecraft", "creeper", "entity.minecraft.creeper", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.7F, 1.445F) \
    X(ENTITY_DARK_OAK_BOAT, "minecraft", "dark_oak_boat", "entity.minecraft.dark_oak_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_DARK_OAK_CHEST_BOAT, "minecraft", "dark_oak_chest_boat", "entity.minecraft.dark_oak_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_DOLPHIN, "minecraft", "dolphin", "entity.minecraft.dolphin", ENTITY_SPAWN_GROUP_WATER_CREATURE, 0.9F, 0.6F, 0.3F) \
    X(ENTITY_DONKEY, "minecraft", "donkey", "entity.minecraft.donkey", ENTITY_SPAWN_GROUP_CREATURE, 1.3964844F, 1.5F, 1.425F) \
    X(ENTITY_DRAGON_FIREBALL, "minecraft", "dragon_fireball", "entity.minecraft.dragon_fireball", ENTITY_SPAWN_GROUP_MISC, 1.0F, 1.0F, 0.85F) \
    X(ENTITY_DROWNED, "minecraft", "drowned", "entity.minecraft.drowned", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.74F) \
    X(ENTITY_EGG, "minecraft", "egg", "entity.minecraft.egg", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_ELDER_GUARDIAN, "minecraft", "elder_guardian", "entity.minecraft.elder_guardian", ENTITY_SPAWN_GROUP_MONSTER, 1.9975F, 1.9975F, 0.99875F) \
    X(ENTITY_ENDERMAN, "minecraft", "enderman", "entity.minecraft.enderman", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 2.9F, 2.55F) \
    X(ENTITY_ENDERMITE, "minecraft", "endermite", "entity.minecraft.endermite", ENTITY_SPAWN_GROUP_MONSTER, 0.4F, 0.3F, 0.13F) \
    X(ENTITY_ENDER_DRAGON, "minecraft", "ender_dragon", "entity.minecraft.ender_dragon", ENTITY_SPAWN_GROUP_MONSTER, 16.0F, 8.0F, 6.8F) \
    X(ENTITY_ENDER_PEARL, "minecraft", "ender_pearl", "entity.minecraft.ender_pearl", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_END_CRYSTAL, "minecraft", "end_crystal", "entity.minecraft.end_crystal", ENTITY_SPAWN_GROUP_MISC, 2.0F, 2.0F, 1.7F) \
    X(ENTITY_EVOKER, "minecraft", "evoker", "entity.minecraft.evoker", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.6575F) \
    X(ENTITY_EVOKER_FANGS, "minecraft", "evoker_fangs", "entity.minecraft.evoker_fangs", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.8F, 0.68F) \
    X(ENTITY_EXPERIENCE_BOTTLE, "minecraft", "experience_bottle", "entity.minecraft.experience_bottle", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_EXPERIENCE_ORB, "minecraft", "experience_orb", "entity.minecraft.experience_orb", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.425F) \
    X(ENTITY_EYE_OF_ENDER, "minecraft", "eye_of_ender", "entity.minecraft.eye_of_ender", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_FALLING_BLOCK, "minecraft", "falling_block", "entity.minecraft.falling_block", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.98F, 0.833F) \
    X(ENTITY_FIREBALL, "minecraft", "fireball", "entity.minecraft.fireball", ENTITY_SPAWN_GROUP_MISC, 1.0F, 1.0F, 0.85F) \
    X(ENTITY_FIREWORK_ROCKET, "minecraft", "firework_rocket", "entity.minecraft.firework_rocket", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_FOX, "minecraft", "fox", "entity.minecraft.fox", ENTITY_SPAWN_GROUP_CREATURE, 0.6F, 0.7F, 0.4F) \
    X(ENTITY_FROG, "minecraft", "frog", "entity.minecraft.frog", ENTITY_SPAWN_GROUP_CREATURE, 0.5F, 0.5F, 0.425F) \
    X(ENTITY_FURNACE_MINECART, "minecraft", "furnace_minecart", "entity.minecraft.furnace_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_GHAST, "minecraft", "ghast", "entity.minecraft.ghast", ENTITY_SPAWN_GROUP_MONSTER, 4.0F, 4.0F, 2.6F) \
    X(ENTITY_GIANT, "minecraft", "giant", "entity.minecraft.giant", ENTITY_SPAWN_GROUP_MONSTER, 3.6F, 12.0F, 10.44F) \
    X(ENTITY_GLOW_ITEM_FRAME, "minecraft", "glow_item_frame", "entity.minecraft.glow_item_frame", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.0F) \
    X(ENTITY_GLOW_SQUID, "minecraft", "glow_squid", "entity.minecraft.glow_squid", ENTITY_SPAWN_GROUP_UNDERGROUND_WATER_CREATURE, 0.8F, 0.8F, 0.4F) \
    X(ENTITY_GOAT, "minecraft", "goat", "entity.minecraft.goat", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.3F, 1.105F) \
    X(ENTITY_GUARDIAN, "minecraft", "guardian", "entity.minecraft.guardian", ENTITY_SPAWN_GROUP_MONSTER, 0.85F, 0.85F, 0.425F) \
    X(ENTITY_HOGLIN, "minecraft", "hoglin", "entity.minecraft.hoglin", ENTITY_SPAWN_GROUP_MONSTER, 1.3964844F, 1.4F, 1.19F) \
    X(ENTITY_HOPPER_MINECART, "minecraft", "hopper_minecart", "entity.minecraft.hopper_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_HORSE, "minecraft", "horse", "entity.minecraft.horse", ENTITY_SPAWN_GROUP_CREATURE, 1.3964844F, 1.6F, 1.52F) \
    X(ENTITY_HUSK, "minecraft", "husk", "entity.minecraft.husk", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.74F) \
    X(ENTITY_ILLUSIONER, "minecraft", "illusioner", "entity.minecraft.illusioner", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.6575F) \
    X(ENTITY_INTERACTION, "minecraft", "interaction", "entity.minecraft.interaction", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_IRON_GOLEM, "minecraft", "iron_golem", "entity.minecraft.iron_golem", ENTITY_SPAWN_GROUP_MISC, 1.4F, 2.7F, 2.295F) \
    X(ENTITY_ITEM, "minecraft", "item", "entity.minecraft.item", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_ITEM_DISPLAY, "minecraft", "item_display", "entity.minecraft.item_display", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_ITEM_FRAME, "minecraft", "item_frame", "entity.minecraft.item_frame", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.0F) \
    X(ENTITY_JUNGLE_BOAT, "minecraft", "jungle_boat", "entity.minecraft.jungle_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_JUNGLE_CHEST_BOAT, "minecraft", "jungle_chest_boat", "entity.minecraft.jungle_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_LEASH_KNOT, "minecraft", "leash_knot", "entity.minecraft.leash_knot", ENTITY_SPAWN_GROUP_MISC, 0.375F, 0.5F, 0.0625F) \
    X(ENTITY_LIGHTNING_BOLT, "minecraft", "lightning_bolt", "entity.minecraft.lightning_bolt", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_LLAMA, "minecraft", "llama", "entity.minecraft.llama", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.87F, 1.7765F) \
    X(ENTITY_LLAMA_SPIT, "minecraft", "llama_spit", "entity.minecraft.llama_spit", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_MAGMA_CUBE, "minecraft", "magma_cube", "entity.minecraft.magma_cube", ENTITY_SPAWN_GROUP_MONSTER, 0.52F, 0.52F, 0.325F) \
    X(ENTITY_MANGROVE_BOAT, "minecraft", "mangrove_boat", "entity.minecraft.mangrove_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_MANGROVE_CHEST_BOAT, "minecraft", "mangrove_chest_boat", "entity.minecraft.mangrove_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_MARKER, "minecraft", "marker", "entity.minecraft.marker", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_MINECART, "minecraft", "minecart", "entity.minecraft.minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_MOOSHROOM, "minecraft", "mooshroom", "entity.minecraft.mooshroom", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.4F, 1.3F) \
    X(ENTITY_MULE, "minecraft", "mule", "entity.minecraft.mule", ENTITY_SPAWN_GROUP_CREATURE, 1.3964844F, 1.6F, 1.52F) \
    X(ENTITY_OAK_BOAT, "minecraft", "oak_boat", "entity.minecraft.oak_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_OAK_CHEST_BOAT, "minecraft", "oak_chest_boat", "entity.minecraft.oak_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_OCELOT, "minecraft", "ocelot", "entity.minecraft.ocelot", ENTITY_SPAWN_GROUP_CREATURE, 0.6F, 0.7F, 0.595F) \
    X(ENTITY_OMINOUS_ITEM_SPAWNER, "minecraft", "ominous_item_spawner", "entity.minecraft.ominous_item_spawner", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_PAINTING, "minecraft", "painting", "entity.minecraft.painting", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.425F) \
    X(ENTITY_PALE_OAK_BOAT, "minecraft", "pale_oak_boat", "entity.minecraft.pale_oak_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_PALE_OAK_CHEST_BOAT, "minecraft", "pale_oak_chest_boat", "entity.minecraft.pale_oak_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_PANDA, "minecraft", "panda", "entity.minecraft.panda", ENTITY_SPAWN_GROUP_CREATURE, 1.3F, 1.25F, 1.0625F) \
    X(ENTITY_PARROT, "minecraft", "parrot", "entity.minecraft.parrot", ENTITY_SPAWN_GROUP_CREATURE, 0.5F, 0.9F, 0.54F) \
    X(ENTITY_PHANTOM, "minecraft", "phantom", "entity.minecraft.phantom", ENTITY_SPAWN_GROUP_MONSTER, 0.9F, 0.5F, 0.175F) \
    X(ENTITY_PIG, "minecraft", "pig", "entity.minecraft.pig", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 0.9F, 0.765F) \
    X(ENTITY_PIGLIN, "minecraft", "piglin", "entity.minecraft.piglin", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.79F) \
    X(ENTITY_PIGLIN_BRUTE, "minecraft", "piglin_brute", "entity.minecraft.piglin_brute", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.79F) \
    X(ENTITY_PILLAGER, "minecraft", "pillager", "entity.minecraft.pillager", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.6575F) \
    X(ENTITY_POLAR_BEAR, "minecraft", "polar_bear", "entity.minecraft.polar_bear", ENTITY_SPAWN_GROUP_CREATURE, 1.4F, 1.4F, 1.19F) \
    X(ENTITY_POTION, "minecraft", "potion", "entity.minecraft.potion", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_PUFFERFISH, "minecraft", "pufferfish", "entity.minecraft.pufferfish", ENTITY_SPAWN_GROUP_WATER_AMBIENT, 0.7F, 0.7F, 0.455F) \
    X(ENTITY_RABBIT, "minecraft", "rabbit", "entity.minecraft.rabbit", ENTITY_SPAWN_GROUP_CREATURE, 0.4F, 0.5F, 0.425F) \
    X(ENTITY_RAVAGER, "minecraft", "ravager", "entity.minecraft.ravager", ENTITY_SPAWN_GROUP_MONSTER, 1.95F, 2.2F, 1.87F) \
    X(ENTITY_SALMON, "minecraft", "salmon", "entity.minecraft.salmon", ENTITY_SPAWN_GROUP_WATER_AMBIENT, 0.7F, 0.4F, 0.26F) \
    X(ENTITY_SHEEP, "minecraft", "sheep", "entity.minecraft.sheep", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.3F, 1.235F) \
    X(ENTITY_SHULKER, "minecraft", "shulker", "entity.minecraft.shulker", ENTITY_SPAWN_GROUP_MONSTER, 1.0F, 1.0F, 0.5F) \
    X(ENTITY_SHULKER_BULLET, "minecraft", "shulker_bullet", "entity.minecraft.shulker_bullet", ENTITY_SPAWN_GROUP_MISC, 0.3125F, 0.3125F, 0.265625F) \
    X(ENTITY_SILVERFISH, "minecraft", "silverfish", "entity.minecraft.silverfish", ENTITY_SPAWN_GROUP_MONSTER, 0.4F, 0.3F, 0.13F) \
    X(ENTITY_SKELETON, "minecraft", "skeleton", "entity.minecraft.skeleton", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.99F, 1.74F) \
    X(ENTITY_SKELETON_HORSE, "minecraft", "skeleton_horse", "entity.minecraft.skeleton_horse", ENTITY_SPAWN_GROUP_CREATURE, 1.3964844F, 1.6F, 1.52F) \
    X(ENTITY_SLIME, "minecraft", "slime", "entity.minecraft.slime", ENTITY_SPAWN_GROUP_MONSTER, 0.52F, 0.52F, 0.325F) \
    X(ENTITY_SMALL_FIREBALL, "minecraft", "small_fireball", "entity.minecraft.small_fireball", ENTITY_SPAWN_GROUP_MISC, 0.3125F, 0.3125F, 0.265625F) \
    X(ENTITY_SNIFFER, "minecraft", "sniffer", "entity.minecraft.sniffer", ENTITY_SPAWN_GROUP_CREATURE, 1.9F, 1.75F, 1.05F) \
    X(ENTITY_SNOWBALL, "minecraft", "snowball", "entity.minecraft.snowball", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F) \
    X(ENTITY_SNOW_GOLEM, "minecraft", "snow_golem", "entity.minecraft.snow_golem", ENTITY_SPAWN_GROUP_MISC, 0.7F, 1.9F, 1.7F) \
    X(ENTITY_SPAWNER_MINECART, "minecraft", "spawner_minecart", "entity.minecraft.spawner_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_SPECTRAL_ARROW, "minecraft", "spectral_arrow", "entity.minecraft.spectral_arrow", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.13F) \
    X(ENTITY_SPIDER, "minecraft", "spider", "entity.minecraft.spider", ENTITY_SPAWN_GROUP_MONSTER, 1.4F, 0.9F, 0.65F) \
    X(ENTITY_SPRUCE_BOAT, "minecraft", "spruce_boat", "entity.minecraft.spruce_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_SPRUCE_CHEST_BOAT, "minecraft", "spruce_chest_boat", "entity.minecraft.spruce_chest_boat", ENTITY_SPAWN_GROUP_MISC, 1.375F, 0.5625F, 0.5625F) \
    X(ENTITY_SQUID, "minecraft", "squid", "entity.minecraft.squid", ENTITY_SPAWN_GROUP_WATER_CREATURE, 0.8F, 0.8F, 0.4F) \
    X(ENTITY_STRAY, "minecraft", "stray", "entity.minecraft.stray", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.99F, 1.74F) \
    X(ENTITY_STRIDER, "minecraft", "strider", "entity.minecraft.strider", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.7F, 1.445F) \
    X(ENTITY_TADPOLE, "minecraft", "tadpole", "entity.minecraft.tadpole", ENTITY_SPAWN_GROUP_CREATURE, 0.4F, 0.3F, 0.19500001F) \
    X(ENTITY_TEXT_DISPLAY, "minecraft", "text_display", "entity.minecraft.text_display", ENTITY_SPAWN_GROUP_MISC, 0.0F, 0.0F, 0.0F) \
    X(ENTITY_TNT, "minecraft", "tnt", "entity.minecraft.tnt", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.98F, 0.15F) \
    X(ENTITY_TNT_MINECART, "minecraft", "tnt_minecart", "entity.minecraft.tnt_minecart", ENTITY_SPAWN_GROUP_MISC, 0.98F, 0.7F, 0.595F) \
    X(ENTITY_TRADER_LLAMA, "minecraft", "trader_llama", "entity.minecraft.trader_llama", ENTITY_SPAWN_GROUP_CREATURE, 0.9F, 1.87F, 1.7765F) \
    X(ENTITY_TRIDENT, "minecraft", "trident", "entity.minecraft.trident", ENTITY_SPAWN_GROUP_MISC, 0.5F, 0.5F, 0.13F) \
    X(ENTITY_TROPICAL_FISH, "minecraft", "tropical_fish", "entity.minecraft.tropical_fish", ENTITY_SPAWN_GROUP_WATER_AMBIENT, 0.5F, 0.4F, 0.26F) \
    X(ENTITY_TURTLE, "minecraft", "turtle", "entity.minecraft.turtle", ENTITY_SPAWN_GROUP_CREATURE, 1.2F, 0.4F, 0.34F) \
    X(ENTITY_VEX, "minecraft", "vex", "entity.minecraft.vex", ENTITY_SPAWN_GROUP_MONSTER, 0.4F, 0.8F, 0.51875F) \
    X(ENTITY_VILLAGER, "minecraft", "villager", "entity.minecraft.villager", ENTITY_SPAWN_GROUP_MISC, 0.6F, 1.95F, 1.62F) \
    X(ENTITY_VINDICATOR, "minecraft", "vindicator", "entity.minecraft.vindicator", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.6575F) \
    X(ENTITY_WANDERING_TRADER, "minecraft", "wandering_trader", "entity.minecraft.wandering_trader", ENTITY_SPAWN_GROUP_CREATURE, 0.6F, 1.95F, 1.62F) \
    X(ENTITY_WARDEN, "minecraft", "warden", "entity.minecraft.warden", ENTITY_SPAWN_GROUP_MONSTER, 0.9F, 2.9F, 2.465F) \
    X(ENTITY_WIND_CHARGE, "minecraft", "wind_charge", "entity.minecraft.wind_charge", ENTITY_SPAWN_GROUP_MISC, 0.3125F, 0.3125F, 0.0F) \
    X(ENTITY_WITCH, "minecraft", "witch", "entity.minecraft.witch", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.62F) \
    X(ENTITY_WITHER, "minecraft", "wither", "entity.minecraft.wither", ENTITY_SPAWN_GROUP_MONSTER, 0.9F, 3.5F, 2.975F) \
    X(ENTITY_WITHER_SKELETON, "minecraft", "wither_skeleton", "entity.minecraft.wither_skeleton", ENTITY_SPAWN_GROUP_MONSTER, 0.7F, 2.4F, 2.1F) \
    X(ENTITY_WITHER_SKULL, "minecraft", "wither_skull", "entity.minecraft.wither_skull", ENTITY_SPAWN_GROUP_MISC, 0.3125F, 0.3125F, 0.265625F) \
    X(ENTITY_WOLF, "minecraft", "wolf", "entity.minecraft.wolf", ENTITY_SPAWN_GROUP_CREATURE, 0.6F, 0.85F, 0.68F) \
    X(ENTITY_ZOGLIN, "minecraft", "zoglin", "entity.minecraft.zoglin", ENTITY_SPAWN_GROUP_MONSTER, 1.3964844F, 1.4F, 1.19F) \
    X(ENTITY_ZOMBIE, "minecraft", "zombie", "entity.minecraft.zombie", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.74F) \
    X(ENTITY_ZOMBIE_HORSE, "minecraft", "zombie_horse", "entity.minecraft.zombie_horse", ENTITY_SPAWN_GROUP_CREATURE, 1.3964844F, 1.6F, 1.52F) \
    X(ENTITY_ZOMBIE_VILLAGER, "minecraft", "zombie_villager", "entity.minecraft.zombie_villager", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.74F) \
    X(ENTITY_ZOMBIFIED_PIGLIN, "minecraft", "zombified_piglin", "entity.minecraft.zombified_piglin", ENTITY_SPAWN_GROUP_MONSTER, 0.6F, 1.95F, 1.79F) \
    X(ENTITY_PLAYER, "minecraft", "player", "entity.minecraft.player", ENTITY_SPAWN_GROUP_MISC, 0.6F, 1.8F, 1.62F) \
    X(ENTITY_FISHING_BOBBER, "minecraft", "fishing_bobber", "entity.minecraft.fishing_bobber", ENTITY_SPAWN_GROUP_MISC, 0.25F, 0.25F, 0.2125F)

#define X(id, ns, path, translationKey, spawnGroup, width, height, eyeHeight) \
    extern const _Entity id##_IMPL;
ENTITY_LIST(X)
#undef X

#ifdef __cplusplus
}
#endif

#define X(id, ns, path, translationKey, spawnGroup, width, height, eyeHeight) \
    static const Entity id = &id##_IMPL;
ENTITY_LIST(X)
#undef X
