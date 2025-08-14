#priority 1
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.item.IItemStack;
import mods.jeitweaker.Jei;
import mods.jeitweaker.ingredient.JeiIngredient;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.FormattedText;

#Crafting Table
val craftingRemovalByName = [
    # Misc
    "minecraft:bread",
    "minecraft:torch",
    "naturescompass:natures_compass",
    "delightful:torch_from_animal_oil_bottle",
    "delightful:candle_from_animal_fat",
    "minecraft:soul_torch",
    "biomemakeover:phantom_membrane",
    "nyfsquiver:gold_quiver_item_craft",
    "nyfsquiver:diamond_quiver_item_craft",
    // "map_atlases:craft_atlas",
    # Working Stations
    "minecraft:furnace",
    "nethersdelight:blackstone_furnace",
    "friendsandfoes:acacia_beehive",
    "friendsandfoes:birch_beehive",
    "friendsandfoes:crimson_beehive",
    "friendsandfoes:dark_oak_beehive",
    "friendsandfoes:jungle_beehive",
    "friendsandfoes:mangrove_beehive",
    "friendsandfoes:spruce_beehive",
    "friendsandfoes:warped_beehive",
    # Raw Nuggets
    "spelunkery:raw_iron_nugget",
    "spelunkery:raw_gold_nugget",
    "spelunkery:raw_copper_nugget",
    "spelunkery:raw_magnetite_nugget",
    "spelunkery:leather",
] as string[];

for recipe in craftingRemovalByName {
    craftingTable.removeByName(recipe);
}

val craftingRemovalByItem = [
    # Chunk Loaders
    <item:chunkloaders:single_chunk_loader>,
    <item:chunkloaders:basic_chunk_loader>,
    <item:chunkloaders:advanced_chunk_loader>,
    <item:chunkloaders:ultimate_chunk_loader>,
    # Bandages
    <item:majruszsdifficulty:bandage>,
    // <item:abundant_atmosphere:brazier>,
    // <item:abundant_atmosphere:soul_brazier>,
    # End Eyes
    <item:endrem:witch_eye>,
    # Misc
    <item:sleep_tight:night_bag>,
] as IItemStack[];

for item in craftingRemovalByItem {
    craftingTable.remove(item);
}

#Furnace
val furnaceRemoval = [
    # Raw Ores
    <item:minecraft:raw_iron>,
    <item:minecraft:raw_gold>,
    <item:minecraft:raw_copper>,
    <item:spelunkery:raw_magnetite>,
    # Foods
    // <item:minecraft:beef>,
    // <item:minecraft:porkchop>,
    // <item:minecraft:chicken>,
    // <item:minecraft:mutton>,
    // <item:minecraft:rabbit>,
    // <item:minecraft:salmon>,
    // <item:minecraft:cod>,
    // <item:oceansdelight:guardian_tail>,
    // <item:oceansdelight:tentacle_on_a_stick>,
    // <item:oceansdelight:stuffed_cod>,
    // <item:nethersdelight:hoglin_loin>,
    # Misc
] as IItemStack[];

for item in furnaceRemoval {
    furnace.removeByInput(item);
}

#Stonecutter
val stonecutterRemoval = [
    "immersive_weathering:stone_brick_from_cobblestone_stonecutting",
    "immersive_weathering:stone_brick_from_stonecutting",
    "immersive_weathering:prismarine_brick_from_stonecutting",
    "immersive_weathering:end_stone_brick_from_stonecutting",
    "immersive_weathering:blackstone_brick_from_stonecutting",
    "immersive_weathering:deepslate_brick_from_stonecutting",
    "immersive_weathering:deepslate_tile_from_stonecutting",
    "immersive_weathering:deepslate_brick_from_cobbleslate_stonecutting",
    "immersive_weathering:deepslate_tile_from_cobbleslate_stonecutting",
] as string[];

for recipe in stonecutterRemoval {
    stoneCutter.removeByName(recipe);
}

# Remove and hide in JEI
val toRemoveAndHide = [
    <item:biomemakeover:swamp_cypress_sapling>,
    <item:biomemakeover:swamp_cypress_leaves>,
    <item:biomemakeover:swamp_cypress_log>,
    <item:biomemakeover:stripped_swamp_cypress_log>,
    <item:biomemakeover:swamp_cypress_planks>,
    <item:biomemakeover:swamp_cypress_slab>,
    <item:biomemakeover:swamp_cypress_stairs>,
    <item:biomemakeover:swamp_cypress_fence>,
    <item:biomemakeover:swamp_cypress_fence_gate>,
    <item:biomemakeover:swamp_cypress_wood>,
    <item:biomemakeover:stripped_swamp_cypress_wood>,
    <item:biomemakeover:swamp_cypress_pressure_plate>,
    <item:biomemakeover:swamp_cypress_button>,
    <item:biomemakeover:swamp_cypress_trapdoor>,
    <item:biomemakeover:swamp_cypress_door>,
    <item:biomemakeover:swamp_cypress_sign>,
    <item:biomemakeover:swamp_cypress_boat>,
    <item:biomemakeover:swamp_cypress_chest_boat>,
    <item:immersive_weathering:biomemakeover/swamp_cypress_leaf_pile>,
    <item:immersive_weathering:biomemakeover/swamp_cypress_bark>,

    <item:biomemakeover:willowing_branches>,
    <item:biomemakeover:willow_sapling>,
    <item:biomemakeover:willow_leaves>,
    <item:biomemakeover:willow_log>,
    <item:biomemakeover:stripped_willow_log>,
    <item:biomemakeover:willow_planks>,
    <item:biomemakeover:willow_slab>,
    <item:biomemakeover:willow_stairs>,
    <item:biomemakeover:willow_fence>,
    <item:biomemakeover:willow_fence_gate>,
    <item:biomemakeover:willow_wood>,
    <item:biomemakeover:stripped_willow_wood>,
    <item:biomemakeover:willow_pressure_plate>,
    <item:biomemakeover:willow_button>,
    <item:biomemakeover:willow_trapdoor>,
    <item:biomemakeover:willow_door>,
    <item:biomemakeover:willow_sign>,
    <item:biomemakeover:willow_boat>,
    <item:biomemakeover:willow_chest_boat>,
    <item:immersive_weathering:biomemakeover/willow_leaf_pile>,
    <item:immersive_weathering:biomemakeover/willow_bark>,

    <item:biomemakeover:blighted_balsa_sapling>,
    <item:biomemakeover:blighted_balsa_leaves>,
    <item:biomemakeover:blighted_balsa_log>,
    <item:biomemakeover:stripped_blighted_balsa_log>,
    <item:biomemakeover:blighted_balsa_planks>,
    <item:biomemakeover:blighted_balsa_slab>,
    <item:biomemakeover:blighted_balsa_stairs>,
    <item:biomemakeover:blighted_balsa_fence>,
    <item:biomemakeover:blighted_balsa_fence_gate>,
    <item:biomemakeover:blighted_balsa_wood>,
    <item:biomemakeover:stripped_blighted_balsa_wood>,
    <item:biomemakeover:blighted_balsa_pressure_plate>,
    <item:biomemakeover:blighted_balsa_button>,
    <item:biomemakeover:blighted_balsa_trapdoor>,
    <item:biomemakeover:blighted_balsa_door>,
    <item:biomemakeover:blighted_balsa_sign>,
    <item:biomemakeover:blighted_balsa_boat>,
    <item:biomemakeover:blighted_balsa_chest_boat>,
    <item:immersive_weathering:biomemakeover/blighted_balsa_leaf_pile>,
    <item:immersive_weathering:biomemakeover/blighted_balsa_bark>,

    <item:biomemakeover:mesmerite>,
    <item:biomemakeover:polished_mesmerite>,
    <item:biomemakeover:mesmerite_wall>,
    <item:biomemakeover:mesmerite_slab>,
    <item:biomemakeover:mesmerite_stairs>,
    <item:biomemakeover:polished_mesmerite_wall>,
    <item:biomemakeover:polished_mesmerite_stairs>,
    <item:biomemakeover:polished_mesmerite_slab>,
    
    <item:biomemakeover:altar>,
    <item:biomemakeover:illunite_block>,
    <item:biomemakeover:illunite_shard>,
    <item:biomemakeover:illunite_cluster>,
    <item:biomemakeover:saguaro_cactus>,
    <item:biomemakeover:marigold>,
    <item:biomemakeover:black_thistle>,
    <item:biomemakeover:foxglove>,
    <item:biomemakeover:cowboy_hat>,
    <item:biomemakeover:poltergeist>,
    <item:biomemakeover:ectoplasm>,
    <item:biomemakeover:glowfish_bucket>,
    <item:biomemakeover:glowfish>,
    <item:biomemakeover:cooked_glowfish>,
    <item:biomemakeover:bulbus_root>,
    <item:biomemakeover:roasted_bulbus_root>,
    <item:biomemakeover:raw_crab>,
    <item:biomemakeover:cooked_crab>,
    <item:biomemakeover:crab_chowder>,
    <item:biomemakeover:scuttler_tail>,
    <item:biomemakeover:cattail>,
    <item:biomemakeover:reed>,
] as IItemStack[];

for item in toRemoveAndHide {
    Jei.hideIngredient(item);
    craftingTable.remove(item);
    item.addTooltip("§4You're not supposed to get this. How?");
}