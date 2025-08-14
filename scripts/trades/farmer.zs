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
val farmer = <profession:minecraft:farmer>;

# Level 1
villagerTrades.removeAllTrades(farmer, 1);

val levelOneBuy = [
    <item:minecraft:wheat> * 32,
    <item:minecraft:carrot> * 36,
    <item:minecraft:potato> * 36,
    <item:minecraft:beetroot> * 36,
    <item:farmersdelight:onion> * 36,
    <item:farmersdelight:rice> * 32,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(farmer, 1, item, emerald, 16, 2, 0.05);
}

val levelOneSell = [
    <item:minecraft:bread>,
] as IItemStack[];

for item in levelOneSell {
    villagerTrades.addTrade(farmer, 1, new ItemsForEmeralds(item, 1, 6, 16, 1, 0.05));
}

# Level 2
villagerTrades.removeAllTrades(farmer, 2);

villagerTrades.addTrade(farmer, 2, (entity, random) => {
    val twoBuy = [
        <item:minecraft:sweet_berries> * 21,
        <item:minecraft:brown_mushroom> * 21,
        <item:minecraft:red_mushroom> * 21,
    ] as IItemStack[];

    return new MerchantOffer(twoBuy[random.nextInt(3)], emerald, 5, 16, 0.05);
});

villagerTrades.addTrade(farmer, 2, (entity, random) => {
    val twoSell = [
        <item:delightful:acorn> * 6,
        <item:minecraft:apple> * 6,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 4, twoSell[random.nextInt(2)], 5, 16, 0.05);
});

# Level 3
villagerTrades.removeAllTrades(farmer, 3);

val levelThreeBuy = [
    <item:minecraft:pumpkin> * 16,
] as IItemStack[];

for item in levelThreeBuy {
    villagerTrades.addTrade(farmer, 3, item, emerald, 12, 15, 0.05);
}

val levelThreeSell = {
    # item: [emerald cost, item count]
    <item:delightful:cantaloupe>: [1, 8],
} as int[][IItemStack];

for item, value in levelThreeSell {
    villagerTrades.addTrade(farmer, 3, new ItemsForEmeralds(item, value[0], value[1], 12, 10, 0.05));
}

# Level 4
villagerTrades.removeAllTrades(farmer, 4);

val levelFourBuy = [
    <item:minecraft:melon> * 14,
] as IItemStack[];

for item in levelFourBuy {
    villagerTrades.addTrade(farmer, 4, item, emerald, 8, 15, 0.05);
}

val levelFourSell = {
    # item: [emerald cost, item count]
    <item:farmersdelight:organic_compost>: [3, 1],
} as int[][IItemStack];

for item, value in levelFourSell {
    villagerTrades.addTrade(farmer, 4, new ItemsForEmeralds(item, value[0], value[1], 12, 15, 0.05));
}

# Level 5
villagerTrades.removeAllTrades(farmer, 5);

villagerTrades.addTrade(farmer, 5, emerald * 4, <item:minecraft:golden_carrot> * 6, 8, 15, 0.05);

villagerTrades.addTrade(farmer, 5, (entity, random) => {
    return new MerchantOffer(emerald * 12, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "majruszsenchantments:harvester"}]}), 4, 30, 0.05);
});