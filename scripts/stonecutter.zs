import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

#Stone Bricks
stoneCutter.addRecipe('stone_to_bricks', <item:immersive_weathering:stone_brick> * 4, <item:minecraft:stone>);
stoneCutter.addRecipe('cobblestone_to_bricks', <item:immersive_weathering:stone_brick> * 2, <item:minecraft:cobblestone>);

stoneCutter.addRecipe('deepslate_to_bricks', <item:immersive_weathering:deepslate_brick> * 4, <item:minecraft:deepslate>);
stoneCutter.addRecipe('cobbleslate_to_bricks', <item:immersive_weathering:deepslate_brick> * 4, <item:minecraft:cobbled_deepslate>);
stoneCutter.addRecipe('deepslate_to_tiles', <item:immersive_weathering:deepslate_tile> * 4, <item:minecraft:deepslate>);
stoneCutter.addRecipe('cobbleslate_to_tiles', <item:immersive_weathering:deepslate_tile> * 4, <item:minecraft:cobbled_deepslate>);

stoneCutter.addRecipe('prismarine_to_bricks', <item:immersive_weathering:prismarine_brick> * 4, <item:minecraft:prismarine>);
stoneCutter.addRecipe('end_stone_to_bricks', <item:immersive_weathering:end_stone_brick> * 4, <item:minecraft:end_stone>);
stoneCutter.addRecipe('blackstone_to_bricks', <item:immersive_weathering:blackstone_brick> * 4, <item:minecraft:blackstone>);