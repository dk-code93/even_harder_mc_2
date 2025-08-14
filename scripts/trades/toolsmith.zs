import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.villager.trade.type.BasicTradeListing;
import crafttweaker.api.villager.trade.type.ItemsForEmeralds;
import crafttweaker.api.villager.trade.type.EmeraldForItems;
import crafttweaker.api.villager.trade.type.EnchantedItemForEmeralds;
import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.util.math.Random;

val emerald = <item:minecraft:emerald>;
val toolsmith = <profession:minecraft:toolsmith>;

# Level 1
villagerTrades.removeAllTrades(toolsmith, 1);

val levelOneBuy = [
    <item:minecraft:copper_ingot> * 16,
    <item:minecraft:gunpowder> * 18,
    <item:minecraft:quartz> * 21,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(toolsmith, 1, item, emerald, 16, 2, 0.05);
}


# Level 2
villagerTrades.removeAllTrades(toolsmith, 2);

villagerTrades.addTrade(toolsmith, 2, (entity, random) => {
    val twoBuy = [
        <item:spelunkery:cinnabar> * 20,
        <item:copperative:patina> * 16,
    ] as IItemStack[];

    return new MerchantOffer(twoBuy[random.nextInt(2)], emerald, 8, 10, 0.05);
});

villagerTrades.addTrade(toolsmith, 2, (entity, random) => {
    val twoSell = [
        <item:minecraft:iron_shovel>,
        <item:minecraft:iron_pickaxe>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(twoSell[random.nextInt(2)], 2, 4, 12, 0.05).getOffer(entity, random);
});

# Level 3
villagerTrades.removeAllTrades(toolsmith, 3);
    
villagerTrades.addTrade(toolsmith, 3, (entity, random) => {
    val threeSellOne = [
        <item:minecraft:redstone_lamp> * 2,
        <item:minecraft:observer> * 2,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 5, threeSellOne[random.nextInt(2)], 8, 18, 0.05);
});

villagerTrades.addTrade(toolsmith, 3, (entity, random) => {
    val threeSellTwo = [
        <item:minecraft:comparator> * 2,
        <item:minecraft:hopper>,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 6, threeSellTwo[random.nextInt(2)], 8, 18, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(toolsmith, 4);

val levelFourSell = {
    # item: [emerald cost, item count]
    <item:minecraft:tnt>:  [4, 6],
    <item:minecraft:fire_charge>: [4, 8],
    <item:spelunkery:mineomite>: [4, 6],
} as int[][IItemStack];

for item, value in levelFourSell {
    villagerTrades.addTrade(toolsmith, 4, new ItemsForEmeralds(item, value[0], value[1], 6, 20, 0.05));
}

# Level 5
villagerTrades.removeAllTrades(toolsmith, 5);

villagerTrades.addTrade(toolsmith, 5, (entity, random) => {
    val twoSell = [
        <item:minecraft:diamond_shovel>,
        <item:minecraft:diamond_pickaxe>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(twoSell[random.nextInt(2)], 8, 4, 30, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(toolsmith, 5, (entity, random) => {
  return new MerchantOffer(emerald * 8, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:efficiency"}]}), 8, 30, 0.05);
});