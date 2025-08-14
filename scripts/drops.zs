import crafttweaker.api.block.BlockState;
import crafttweaker.api.loot.modifier.ILootModifier;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.item.IItemStack;

#Weeds don't drop wheat... like, what?
val fullGrownWeeds = <blockstate:immersive_weathering:weeds>.withProperty("age", "7");
val noWheat = CommonLootModifiers.remove(<item:minecraft:wheat>);
fullGrownWeeds.addTargetedLootModifier("no_wheat_from_weeds", noWheat);