import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CampFireRecipeManager;
import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;



#Eggs

campfire.removeByInput(<item:minecraft:egg>);
furnace.removeByInput(<item:minecraft:egg>);
smoker.removeByInput(<item:minecraft:egg>);

campfire.addRecipe('fried_egg_campfire', <item:farmersdelight:fried_egg>, <tag:items:forge:eggs>, 0.0, 600);
furnace.addRecipe('fried_egg_furnace', <item:farmersdelight:fried_egg>, <tag:items:forge:eggs>, 0.35, 200);
smoker.addRecipe('fried_egg_smoker', <item:farmersdelight:fried_egg>, <tag:items:forge:eggs>, 0.35, 100);

#Campfire lights torches
campfire.addRecipe('light_torches', <item:hardcore_torches:lit_torch>, <item:hardcore_torches:unlit_torch>, 0.0, 100);

#Furnace Ore Nerf
furnace.addRecipe("raw_iron_nerf", <item:minecraft:iron_nugget> * 3, <item:minecraft:raw_iron>, 0.7, 200);
furnace.addRecipe("raw_gold_nerf", <item:minecraft:gold_nugget> * 3, <item:minecraft:raw_gold>, 0.7, 200);
furnace.addRecipe("raw_copper_nerf", <item:spelunkery:copper_nugget> * 6, <item:minecraft:raw_copper>, 0.7, 200);