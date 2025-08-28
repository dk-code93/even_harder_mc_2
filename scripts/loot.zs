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

# Add Nether Seal 2 to Witch's chest
loot.modifiers.register(
    "add_seal_shard_2_chest",
    LootConditions.only(LootTableIdLootCondition.create(<resource:betterwitchhuts:chests/hut_0>)),
    CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_2> % 100)
);

# Move Nether Seal 3 to Illusioner
loot.modifiers.register(
    "remove_seal_shard_3",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:entities/evoker>)),
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

# Add Nether Seal 1 to Shipwreck
// loot.modifiers.register(
//     "remove_seal_shard_1",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/abandoned_mineshaft>)),
//     CommonLootModifiers.remove(<item:nether_remastered:seal_piece_1>)
// );

// loot.modifiers.register(
//     "add_seal_shard_1_common",
//     LootConditions.anyOf([
//         LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_map>),
//         LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_supply>),
//         LootTableIdLootCondition.create(<resource:minecraft:chests/shipwreck_treasure>),
//         ]),
//     CommonLootModifiers.addWithChance(<item:nether_remastered:seal_piece_1> % 40)
// );

# Move Corrupted Eye to Adjudicator
loot.modifiers.register(
    "remove_corrupted_eye",
    LootConditions.anyOf([
        LootTableIdLootCondition.create(<resource:endrem:minecraft/chests/pillager_outpost>),
        LootTableIdLootCondition.create(<resource:minecraft/chests/pillager_outpost>),
    ]),
    CommonLootModifiers.remove(<item:endrem:corrupted_eye>)
);

// loot.modifiers.register(
//     "add_corrupted_eye_rare",
//     LootConditions.anyOf([
//         LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/center>),
//         LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/farm>),
//         ]),
//     CommonLootModifiers.addWithChance(<item:endrem:corrupted_eye> % 30)
// );

// loot.modifiers.register(
//     "add_corrupted_eye_uncommon",
//     LootConditions.anyOf([
//         LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/church>),
//         LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/gallows>),
//         LootTableIdLootCondition.create(<resource:takesapillage:chests/bastille/graveyard>),
//         ]),
//     CommonLootModifiers.addWithChance(<item:endrem:corrupted_eye> % 60)
// );

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

// loot.modifiers.register(
//     "add_cold_eye",
//     LootConditions.anyOf([
//         LootTableIdLootCondition.create(<resource:friendsandfoes:barrels/iceologer_cabin>),
//         ]),
//     CommonLootModifiers.addWithChance(<item:endrem:cold_eye> % 20)
// );

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
        LootTableIdRegexLootCondition.create("minecraft:chests/*"),
        LootTableIdRegexLootCondition.create("minecraft:entities/*"),
        LootTableIdRegexLootCondition.create("biomemakeover:chests/*"),
        LootTableIdRegexLootCondition.create("biomemakeover:entities/*")
    ]),
    CommonLootModifiers.removeAll(<item:biomemakeover:illunite_shard>)
);