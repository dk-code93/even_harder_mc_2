import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.villager.trade.type.BasicTradeListing;
import crafttweaker.api.villager.trade.type.ItemsForEmeralds;
import crafttweaker.api.villager.trade.type.EmeraldForItems;
import crafttweaker.api.villager.trade.type.EnchantedItemForEmeralds;
import crafttweaker.api.villager.MerchantOffer;

val emerald = <item:minecraft:emerald>;
val weaponsmith = <profession:minecraft:weaponsmith>;

# Level 1
villagerTrades.removeAllTrades(weaponsmith, 1);

val levelOneBuy = [
    <item:minecraft:coal> * 18,
    <item:minecraft:smooth_stone_slab> * 30,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(weaponsmith, 1, item, emerald, 16, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(weaponsmith, 2);

val levelTwoBuy = [
    <item:minecraft:raw_iron> * 12,
] as IItemStack[];

for item in levelTwoBuy {
    villagerTrades.addTrade(weaponsmith, 2, item, emerald, 8, 12, 0.05);
}


villagerTrades.addTrade(weaponsmith, 2, (entity, random) => {
    val twoSell = [
        <item:minecraft:iron_sword>,
        <item:minecraft:iron_axe>,
        <item:nethersdelight:iron_machete>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(twoSell[random.nextInt(3)], 4, 4, 15, 0.05).getOffer(entity, random);
});

# Level 3
villagerTrades.removeAllTrades(weaponsmith, 3);

val levelThreeSell = [
    <item:minecraft:bell>,
] as IItemStack[];

for item in levelThreeSell {
    villagerTrades.addTrade(weaponsmith, 3, new ItemsForEmeralds(item, 12, 1, 8, 16, 0.05));
}

villagerTrades.addTrade(weaponsmith, 3, (entity, random) => {
    val threeSell = [
        <item:minecraft:iron_sword>,
        <item:minecraft:iron_axe>,
        <item:nethersdelight:iron_machete>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(threeSell[random.nextInt(3)], 4, 4, 15, 0.05).getOffer(entity, random);
});

# Level 4
villagerTrades.removeAllTrades(weaponsmith, 4);

val levelFourBuy = [
    <item:minecraft:blaze_powder> * 22,
] as IItemStack[];

for item in levelFourBuy {
    villagerTrades.addTrade(weaponsmith, 4, item, emerald, 8, 18, 0.05);
}

villagerTrades.addTrade(weaponsmith, 4, (entity, random) => {
  return new MerchantOffer(emerald * 6, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:sharpness"}]}), 4, 24, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(weaponsmith, 5);

villagerTrades.addTrade(weaponsmith, 5, (entity, random) => {
    val fiveSell = [
        <item:minecraft:diamond_sword>,
        <item:minecraft:diamond_axe>,
        <item:nethersdelight:diamond_machete>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(fiveSell[random.nextInt(3)], 8, 4, 30, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(weaponsmith, 5, (entity, random) => {
    val fiveEnchants = [
        "allurement:vengeance",
        "minecraft:sweeping",
        "majruszsenchantments:death_wish",
    ] as string[];

    val index = random.nextInt(3);
    val level as int;
    if(index == 2) {level = 1;} else {level = 2;}

  return new MerchantOffer(emerald * 7, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: fiveEnchants[index]}]}), 4, 30, 0.05);
});