import crafttweaker.api.loot.LootManager;
import crafttweaker.api.loot.table.LootTableManager;
import crafttweaker.api.loot.modifier.LootModifierManager;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.condition.LootCondition;
import crafttweaker.api.loot.condition.builder.LootConditionBuilder;
import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootTableIdRegexLootCondition;
import crafttweaker.api.loot.modifier.ILootModifier;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.loot.LootTable;
import mods.jeitweaker.Jei;
import crafttweaker.api.item.IItemStack;

print(loot.modifiers);

# Add Nether Crystal to dungeon chests
loot.modifiers.register(
    "remove_nether_crystal",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:entities/warden>)),
    CommonLootModifiers.remove(<item:nether_remastered:seal_crystal>)
);

loot.modifiers.register(
    "add_nether_crystal",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:betterdungeons:skeleton_dungeon/chests/common>),
        LootTableIdLootCondition.create(<resource:betterdungeons:skeleton_dungeon/chests/middle>),
        LootTableIdLootCondition.create(<resource:betterdungeons:small_dungeon/chests/loot_piles>),
        LootTableIdLootCondition.create(<resource:betterdungeons:spider_dungeon/chests/egg_room>),
        LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/common>),
        LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/special>),
        LootTableIdLootCondition.create(<resource:betterdungeons:zombie_dungeon/chests/tombstone>),
        LootTableIdLootCondition.create(<resource:minecraft:chests/simple_dungeon>),
        ]),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_crystal> % 30)
);

# Add Nether Seal 2 to Ocean Ruins
loot.modifiers.register(
    "remove_seal_shard_2",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:entities/witch>)),
    CommonLootModifiers.remove(<item:nether_remastered:seal_piece_2>)
);

loot.modifiers.register(
    "add_seal_shard_2_archeology",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:minecraft:archaeology/ocean_ruin_cold>),
        LootTableIdLootCondition.create(<resource:minecraft:archaeology/ocean_ruin_warm>),
        ]),
    CommonLootModifiers.add(<item:nether_remastered:seal_piece_2>)
);

loot.modifiers.register(
    "add_seal_shard_2_small",
    LootConditions.anyOf(LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_small>)),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_2> % 30)
);

loot.modifiers.register(
    "add_seal_shard_2_big",
    LootConditions.anyOf(LootTableIdLootCondition.create(<resource:minecraft:chests/underwater_ruin_big>)),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_2> % 50)
);

# Move Nether Seal 3 to Illusioner
loot.modifiers.register(
    "remove_seal_shard_3",
    LootConditions.anyOf(LootTableIdLootCondition.create(<resource:minecraft:entities/evoker>)),
    CommonLootModifiers.remove(<item:nether_remastered:seal_piece_3>)
);

loot.modifiers.register(
    "add_seal_shard_3_rare",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:friendsandfoes:chests/illusioner_shack>),
        LootTableIdLootCondition.create(<resource:friendsandfoes:barrels/illusioner_shack_attic>),
        ]),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_3> % 20)
);

loot.modifiers.register(
    "add_seal_shard_3_uncommon",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:minecraft:entities/illusioner>),
        LootTableIdLootCondition.create(<resource:friendsandfoes:barrels/illusioner_shack_basement>),
        ]),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_3> % 30)
);

# Add Nether Seal 4 to new illager outposts

loot.modifiers.register(
    "add_seal_shard_4",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:nova_structures:chests/illager_hideout_tresure>),
        LootTableIdLootCondition.create(<resource:nova_structures:chests/pillager_outpost_treasure>),
        ]),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_4> % 80)
);

# Move Corrupted Eye to Adjudicator
loot.modifiers.register(
    "remove_corrupted_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/pillager_outpost>),
        LootTableIdLootCondition.create(<resource:minecraft/chests/pillager_outpost>),
    ]),
    CommonLootModifiers.remove(<item:endrem:corrupted_eye>)
);

# The Adjudicator loot table is modified in KubeJS datapack

# Jungle Eye moved to Temple Treasure
loot.modifiers.register(
    "remove_rogue_eye",
    LootConditions.only(LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/jungle_temple>)),
    CommonLootModifiers.remove(<item:endrem:rogue_eye>)
);

loot.modifiers.register(
    "add_rogue_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:betterjungletemples:chests/treasure>),
        ]),
    CommonLootModifiers.add(<item:endrem:rogue_eye>)
);

# Desert Eye moved to Pharoahs Tomb
loot.modifiers.register(
    "remove_old_eye",
    LootConditions.only(LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/desert_pyramid>)),
    CommonLootModifiers.remove(<item:endrem:old_eye>)
);

loot.modifiers.register(
    "add_old_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:betterdeserttemples:chests/pharaoh_hidden>),
        ]),
    CommonLootModifiers.add(<item:endrem:old_eye>)
);

# Cold Eye to craftable
loot.modifiers.register(
    "remove_cold_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/igloo_chest>),
        LootTableIdLootCondition.create(<resource:minecraft/chests/igloo_chest>),
        ]),
    CommonLootModifiers.remove(<item:endrem:cold_eye>)
);

# Lost Eye removal
loot.modifiers.register(
    "remove_lost_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/abandoned_mineshaft>),
        LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>),
    ]),
    CommonLootModifiers.remove(<item:endrem:lost_eye>)
);


# Move the Ravager horn to the mansion chest
loot.modifiers.register(
    "remove_ravager_horn",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:entities/ravager>)),
    CommonLootModifiers.remove(<item:takesapillage:ravager_horn>)
);

loot.modifiers.register(
    "add_ravager_horn",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:biomemakeover:mansion/dungeon_good>),
        ]),
    CommonLootModifiers.addWithChance(<item:takesapillage:ravager_horn> % 30)
);

# Remove Illunite from all loot tables
loot.modifiers.register(
    "remove_illunite_shards",
    LootConditions.anyOf([
        LootTableIdRegexLootCondition.create("minecraft*"),
        LootTableIdRegexLootCondition.create("biomemakeover*"),
    ]),
    CommonLootModifiers.removeAll(<item:biomemakeover:illunite_shard>)
);