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
val fisherman = <profession:minecraft:fisherman>;

# Level 1
villagerTrades.removeAllTrades(fisherman, 1);

val levelOneBuy = [
    <item:minecraft:cod> * 24,
    <item:minecraft:salmon> * 18,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(fisherman, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(fisherman, 2);

val levelTwoBuy = [
    <item:minecraft:string> * 24,
] as IItemStack[];

for item in levelTwoBuy {
    villagerTrades.addTrade(fisherman, 2, item, emerald, 12, 10, 0.05);
}

villagerTrades.addTrade(fisherman, 2, (entity, random) => {
    val twoSell = [
        <item:farmersdelight:salmon_roll> * 6,
        <item:farmersdelight:cod_roll> * 6,
    ] as IItemStack[];

    return new MerchantOffer(emerald, twoSell[random.nextInt(2)], 5, 12, 0.05);
});

# Level 3
villagerTrades.removeAllTrades(fisherman, 3);

val levelThreeBuy = [
    <item:minecraft:tropical_fish> * 6,
] as IItemStack[];

for item in levelThreeBuy {
    villagerTrades.addTrade(fisherman, 3, item, emerald, 12, 16, 0.05);
}

villagerTrades.addTrade(fisherman, 3, new EnchantedItemForEmeralds(<item:minecraft:fishing_rod>, 1, 12, 16, 0.05));

# Level 4
villagerTrades.removeAllTrades(fisherman, 4);

villagerTrades.addTrade(fisherman, 4, <item:minecraft:pufferfish> * 8, emerald, 12, 12, 0.05);


villagerTrades.addTrade(fisherman, 4, (entity, random) => {
    val threeSell = [
        "minecraft:lure",
        "minecraft:luck_of_the_sea"
    ] as string[];

    return new MerchantOffer(emerald * 11, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: threeSell[random.nextInt(2)]}]}), 4, 20, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(fisherman, 5);

villagerTrades.addTrade(fisherman, 5, (entity, random) => {
    val fiveEnchants = [
        "minecraft:loyalty",
        "minecraft:riptide",
        "minecraft:impaling",
    ] as string[];

    return new MerchantOffer(emerald * 16, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: fiveEnchants[random.nextInt(3)]}]}), 3, 16, 0.05);
});
