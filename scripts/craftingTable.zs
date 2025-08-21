import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.MirrorAxis;
import crafttweaker.api.tag.MCTag;

val brick = <item:minecraft:stone_bricks>;
val blackstone = <item:minecraft:polished_blackstone_bricks>;
val smoothStone = <item:minecraft:smooth_stone>;
val cobble = <item:minecraft:cobblestone>;
val clay = <item:minecraft:clay_ball>;
val clayBrick = <item:minecraft:brick>;
val brickBlock = <item:minecraft:bricks>;
val empty = <item:minecraft:air>;
val furnace = <item:minecraft:furnace>;
val campfire = <item:hardcore_torches:unlit_campfire>;
val amethystBlock = <item:minecraft:amethyst_block>;
val magnetite = <item:spelunkery:raw_magnetite>;
val diamond = <item:minecraft:diamond>;
val obsidian = <item:minecraft:obsidian>;
val redstoneBlock = <item:minecraft:redstone_block>;
val echoShard = <item:minecraft:echo_shard>;
val enderEye = <item:minecraft:ender_eye>;
val gold = <item:minecraft:gold_ingot>;
val iron = <item:minecraft:iron_ingot>; 
val membrane = <item:minecraft:phantom_membrane>;
val starShard = <item:progressivebosses:nether_star_shard>;

#Furnaces

craftingTable.addShaped('hardcore_furnace', furnace, [
    [cobble, cobble, cobble],
    [cobble, campfire, cobble],
    [smoothStone, smoothStone, smoothStone]
]);

craftingTable.addShaped('hardcore_blast_furnace', <item:minecraft:blast_furnace>, [
    [iron, iron, iron],
    [iron, furnace, iron],
    [iron, iron, iron],
]);

craftingTable.addShaped('hardcore_blackstone_furnace', <item:nethersdelight:blackstone_furnace>, [
    [blackstone, blackstone, blackstone],
    [blackstone, campfire, blackstone],
    [blackstone, blackstone, blackstone]
]);

craftingTable.addShaped('clay_brick_furnace', <item:brickfurnace:brick_furnace>, [
    [brickBlock, clayBrick, brickBlock],
    [clayBrick, campfire, clayBrick],
    [brickBlock, clayBrick, brickBlock]
]);

#Glowstone dust from lichen
val lichen = <item:minecraft:glow_lichen>;
val glowDust = <item:minecraft:glowstone_dust>;
craftingTable.addShapeless('lichen_to_dust', glowDust, [lichen, lichen]);

#Cobweb
val stringy = <item:minecraft:string>;
craftingTable.addShapeless('cobweb_from_string', <item:minecraft:cobweb>, [stringy, stringy, stringy, stringy, stringy, stringy, stringy, stringy, stringy]);

#Nuggets Nerf
craftingTable.addShapeless('raw_iron_nugs', <item:spelunkery:raw_iron_nugget> * 3, [<item:minecraft:raw_iron>]);
craftingTable.addShapeless('raw_gold_nugs', <item:spelunkery:raw_gold_nugget> * 3, [<item:minecraft:raw_gold>]);
craftingTable.addShapeless('raw_copper_nugs', <item:spelunkery:raw_copper_nugget> * 3, [<item:minecraft:raw_copper>]);
craftingTable.addShapeless('raw_magnetite_nugs', <item:spelunkery:raw_magnetite_nugget> * 3, [<item:spelunkery:raw_magnetite>]);

#Chunk Loaders

val singleLoader = <item:chunkloaders:single_chunk_loader>;
val basicLoader = <item:chunkloaders:basic_chunk_loader>;
val advancedLoader = <item:chunkloaders:advanced_chunk_loader>;

craftingTable.addShaped('single_loader', singleLoader, [
    [iron, obsidian, iron],
    [obsidian, redstoneBlock, obsidian],
    [iron, obsidian, iron],
]);

craftingTable.addShaped('basic_loader', basicLoader, [
    [empty, singleLoader, empty],
    [singleLoader, diamond, singleLoader],
    [empty, obsidian, empty],
]);

craftingTable.addShaped('advanced_loader', advancedLoader, [
    [gold, amethystBlock, gold],
    [amethystBlock, basicLoader, amethystBlock],
    [gold, amethystBlock, gold],
]);

craftingTable.addShaped('ultimate_loader', <item:chunkloaders:ultimate_chunk_loader>, [
    [empty, diamond, empty],
    [diamond, advancedLoader, diamond],
    [empty, diamond, empty],
]);

#Bandage Nerf
craftingTable.addShapedMirrored("bandage_nerf", MirrorAxis.ALL, <item:majruszsdifficulty:bandage> * 3, [
    [stringy, <tag:items:minecraft:wool>, stringy],
]);

# Night Bag
val blueWool = <item:minecraft:blue_wool>;

craftingTable.addShaped("night_bag", <item:sleep_tight:night_bag>, [
    [membrane, membrane, membrane],
    [blueWool, blueWool, blueWool],
]);

# Nether Seal Pieces
val goldIngot = <item:minecraft:gold_ingot>;
val netherCrystal = <item:nether_remastered:seal_crystal>;
val sealPieces = <tag:items:crafttweaker:seal_pieces>;

craftingTable.addShapeless("nether_star_shards", <item:progressivebosses:nether_star_shard> * 4, [
    <item:minecraft:nether_star>
]);

craftingTable.addShapeless("nether_crystal", <item:nether_remastered:seal_crystal>, [
    <item:minecraft:ghast_tear>, <item:progressivebosses:nether_star_shard>
]);

craftingTable.addShaped("nether_seal_shard_1", <item:nether_remastered:seal_piece_1>, [
    [sealPieces, goldIngot, goldIngot],
    [goldIngot, netherCrystal, goldIngot],
    [goldIngot, goldIngot, empty]
]);

craftingTable.addShaped("nether_seal_shard_2", <item:nether_remastered:seal_piece_2>, [
    [goldIngot, goldIngot, sealPieces],
    [goldIngot, netherCrystal, goldIngot],
    [empty, goldIngot, goldIngot]
]);

craftingTable.addShaped("nether_seal_shard_3", <item:nether_remastered:seal_piece_3>, [
    [goldIngot, goldIngot, empty],
    [goldIngot, netherCrystal, goldIngot],
    [sealPieces, goldIngot, goldIngot]
]);

craftingTable.addShaped("nether_seal_shard_4", <item:nether_remastered:seal_piece_4>, [
    [empty, goldIngot, goldIngot],
    [goldIngot, netherCrystal, goldIngot],
    [goldIngot, goldIngot, sealPieces]
]);

# Wither Skull
val soulBlocks = <tag:items:minecraft:soul_fire_base_blocks>;

craftingTable.addShaped("wither_skull", <item:minecraft:wither_skeleton_skull>, [
    [empty, soulBlocks, empty],
    [soulBlocks, <item:minecraft:skeleton_skull>, soulBlocks],
    [empty, <item:endrem:undead_soul>, empty]
]);

# Lighting Changes
val litTorch = <item:hardcore_torches:lit_torch>;
val torch = <item:minecraft:torch>;

craftingTable.addShaped("glow_torches", torch,  [
    [glowDust],
    [litTorch]
]);

craftingTable.addShaped("oiled_torches", torch * 4,  [
    [empty, litTorch, empty],
    [litTorch, <item:delightful:animal_oil_bottle>.transformReplace(<item:minecraft:glass_bottle>), litTorch],
    [empty, litTorch, empty]
]);

craftingTable.addShaped("fat_candle", <item:minecraft:candle>, [
    [<item:minecraft:string>],
    [<item:delightful:animal_fat>]
]);

craftingTable.addShapeless("jam_torches", torch * 3, [
    <item:delightful:glow_jam_jar>.transformReplace(<item:minecraft:glass_bottle>), litTorch, litTorch, litTorch,
]);

craftingTable.addShaped("new_soul_torch", <item:minecraft:soul_torch>, [
    [torch],
    [soulBlocks]
]);

# Water Bottle Bread Dough
val wheat = <tag:items:forge:crops/wheat>;
val waterBottle = <item:minecraft:potion>.withTag({Potion: "minecraft:water"});
craftingTable.addShapedMirrored("water_bottle_dough", MirrorAxis.ALL, <item:farmersdelight:wheat_dough> * 3, [
    [wheat, wheat], 
    [wheat, waterBottle.transformReplace(<item:minecraft:glass_bottle>)]
]);

# Terracotta Bricks Integration
val colors = [
    "",
  "white_",
  "orange_",
  "magenta_",
  "light_blue_",
  "yellow_",
  "lime_",
  "pink_",
  "gray_",
  "light_gray_",
  "cyan_",
  "purple_",
  "blue_",
  "brown_",
  "green_",
  "red_",
  "black_",
] as string[];

for color in colors {
    val cwBlock = <item:clayworks:${color}terracotta_bricks>;
    val bmBlock = <item:biomemakeover:${color}terracotta_bricks>;
    craftingTable.remove(cwBlock);
    craftingTable.addShaped(color + "terracotta_brick_cw", cwBlock * 4, [
        [bmBlock, bmBlock],
        [bmBlock, bmBlock]
    ]);
}

# Reworked End Eyes
val blueIce = <item:minecraft:blue_ice>;

craftingTable.addShaped("cold_eye_reworked", <item:endrem:cold_eye>, [
    [blueIce, <item:friendsandfoes:totem_of_freezing>, blueIce],
    [blueIce, enderEye, blueIce],
    [blueIce, blueIce, blueIce],
]);

craftingTable.addShaped("witch_eye_reworked", <item:endrem:witch_eye>, [
    [empty, <item:endrem:witch_pupil>, empty],
    [<item:minecraft:potion>.withTag({Potion: "minecraft:strong_turtle_master"}).transformReplace(<item:minecraft:glass_bottle>), enderEye, <item:minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}).transformReplace(<item:minecraft:glass_bottle>)],
    [empty, <item:minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}).transformReplace(<item:minecraft:glass_bottle>), empty],
]);

# Quivers

craftingTable.addShaped("diamond_quiver", <item:nyfsquiver:diamond_quiver>, [
    [diamond, diamond, <item:minecraft:feather>],
    [diamond, <item:nyfsquiver:iron_quiver>, diamond],
    [diamond, diamond, diamond]
]);

# Copper Equipment
val copperPlate = <item:minecraft_121_update:copper_plate>;
val copperIngot = <item:minecraft:copper_ingot>;

craftingTable.addShapedMirrored("copper_bar",  MirrorAxis.ALL, copperPlate, [
    [empty, copperIngot],
    [copperIngot, empty]
]);

craftingTable.addShaped("copper_helm", <item:iguanatweaksreborn:copper_helmet>, [
    [copperPlate, copperPlate, copperPlate],
    [copperPlate, empty, copperPlate]
]);

craftingTable.addShaped("copper_chest", <item:iguanatweaksreborn:copper_chestplate>, [
    [copperPlate, empty, copperPlate],
    [copperPlate, copperPlate, copperPlate],
    [copperPlate, copperPlate, copperPlate]
]);

craftingTable.addShaped("copper_legs", <item:iguanatweaksreborn:copper_leggings>, [
    [copperPlate, copperPlate, copperPlate],
    [copperPlate, empty, copperPlate],
    [copperPlate, empty, copperPlate]
]);

craftingTable.addShaped("copper_boots", <item:iguanatweaksreborn:copper_boots>, [
    [copperPlate, empty, copperPlate],
    [copperPlate, empty, copperPlate]
]);

craftingTable.addShaped("horned_copper_helm", <item:minecraft_121_update:copper_helmet_helmet>, [
    [<item:minecraft_121_update:copper_horn>, empty, <item:minecraft_121_update:copper_horn>],
    [empty, <item:iguanatweaksreborn:copper_helmet>, empty]
]);