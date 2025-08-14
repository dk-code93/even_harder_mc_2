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
val cleric = <profession:minecraft:cleric>;

# Level 1
villagerTrades.removeAllTrades(cleric, 1);

val levelOneBuy = [
    <item:minecraft:rotten_flesh> * 30,
    <item:minecraft:spider_eye> * 21,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(cleric, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(cleric, 2);

villagerTrades.addTrade(cleric, 2, (entity, random) => {
    val twoBuy = [
        <item:minecraft:gold_ingot> * 12,
        <item:minecraft:redstone> * 27,
    ] as IItemStack[];

    return new MerchantOffer(twoBuy[random.nextInt(2)], emerald, 6, 10, 0.05);
});

villagerTrades.addTrade(cleric, 2, emerald, <item:minecraft:glowstone_dust> * 4, 5, 12, 0.05);

# Level 3
villagerTrades.removeAllTrades(cleric, 3);

val levelThreeBuy = [
    <item:minecraft:nether_wart> * 30,
] as IItemStack[];

for item in levelThreeBuy {
    villagerTrades.addTrade(cleric, 3, item, emerald, 12, 16, 0.05);
}

villagerTrades.addTrade(cleric, 3, (entity, random) => {
    val threePotions = [
        "minecraft:night_vison",
        "minecraft:invisibility",
        "minecraft:fire_resistance",
        "minecraft:swiftness",
        "minecraft:healing",
        "minecraft:regeneration",
        "minecraft:strength",
        "minecraft:luck",
    ] as string[];

    return new MerchantOffer(emerald * 3, <item:minecraft:potion>.withTag({Potion: threePotions[random.nextInt(8)]}), 6, 16, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(cleric, 4);

villagerTrades.addTrade(cleric, 4, <item:minecraft:ender_pearl> * 5, emerald, 6, 18, 0.05);

villagerTrades.addTrade(cleric, 4, emerald * 4, <item:minecraft:dragon_breath>, 5, 18, 0.05);

# Level 5
villagerTrades.removeAllTrades(cleric, 5);

villagerTrades.addTrade(cleric, 5, (entity, random) => {
    val fiveEnchants = [
        "minecraft:fire_aspect",
        "minecraft:smite",
        "majruszsenchantments:misanthropy",
        "minecraft:bane_of_arthropods",
    ] as string[];

    val index = random.nextInt(4);
    val level as int;
    if(index == 0) {level = 1;} else {level = 3;}

  return new MerchantOffer(emerald * 11, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: fiveEnchants[index]}]}), 4, 18, 0.05);
});

// villagerTrades.addTrade(cleric, 5, (entity, random) => {
//   return new MerchantOffer(emerald * 48, <item:minecraft:ender_eye>, <item:endrem:evil_eye>, 1, 30, 0.05);
// });