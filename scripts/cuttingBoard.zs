import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

function addCuttingBoardRecipe(name as string, itemIn as string, tool as string, itemOut as string, count as int, sound as string) as void {

    <recipetype:farmersdelight:cutting>.addJsonRecipe(name, {
        "type": "farmersdelight:cutting",
        "ingredients": [
          {
            "item": itemIn
          }
        ],
        "tool": {
          "tag": tool
        },
        "result": [
          {
            "item": itemOut,
            "count": count
          }
        ],
        "sound": sound
    });

}

#Bricks
addCuttingBoardRecipe("cobble_to_brick", "minecraft:cobblestone", "forge:tools/knives", "immersive_weathering:stone_brick", 2, "ui.stonecutter.take_result");
addCuttingBoardRecipe("stone_to_brick", "minecraft:stone", "forge:tools/knives", "immersive_weathering:stone_brick", 4, "ui.stonecutter.take_result");
addCuttingBoardRecipe("blackstone_to_brick", "minecraft:polished_blackstone", "forge:tools/knives", "immersive_weathering:blackstone_brick", 4, "ui.stonecutter.take_result");

#Wool to string
val colors = [
  "white",
  "orange",
  "magenta",
  "light_blue",
  "yellow",
  "lime",
  "pink",
  "gray",
  "light_gray",
  "cyan",
  "purple",
  "blue",
  "brown",
  "green",
  "red",
  "black",
] as string[];

for color in colors {
  addCuttingBoardRecipe(color + "_wool_to_string", "minecraft:" + color + "_wool", "forge:shears", "minecraft:string", 2, "entity.sheep.shear");
}

#Saplings to sticks
val woods = [
  "oak",
  "spruce",
  "birch",
  "acacia",
  "dark_oak",
  "jungle",
] as string[];

for sapling in woods {
  addCuttingBoardRecipe(sapling + "_sapling_to_sticks", "minecraft:" + sapling + "_sapling", "forge:shears", "minecraft:stick", 3, "item.axe.strip");
}