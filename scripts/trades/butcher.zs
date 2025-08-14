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
val butcher = <profession:minecraft:butcher>;

# Level 1
villagerTrades.removeAllTrades(butcher, 1);

val levelOneBuy = [
    <item:minecraft:chicken> * 28,
    <item:minecraft:porkchop> * 28,
    <item:minecraft:rabbit> * 28,
    <item:minecraft:beef> * 28,
    <item:minecraft:mutton> * 28,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(butcher, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(butcher, 2);

villagerTrades.addTrade(butcher, 2, (entity, random) => {
    val twoBuy = [
        <item:minecraft:charcoal> * 21,
        <item:minecraft:dried_kelp_block> * 8,
    ] as IItemStack[];

    return new MerchantOffer(twoBuy[random.nextInt(2)], emerald, 10, 12, 0.05);
});

villagerTrades.addTrade(butcher, 2, emerald * 4, <item:minecraft:egg> * 6, 5, 12, 0.05);

# Level 3
villagerTrades.removeAllTrades(butcher, 3);

val levelThreeBuy = [
    <item:delightful:animal_fat> * 8,
] as IItemStack[];

for item in levelThreeBuy {
    villagerTrades.addTrade(butcher, 3, item, emerald, 4, 16, 0.05);
}

val levelThreeSell = [
    <item:minecraft:campfire>,
] as IItemStack[];

for item in levelThreeSell {
    villagerTrades.addTrade(butcher, 3, new ItemsForEmeralds(item, 1, 2, 8, 14, 0.05));
}

# Level 4
villagerTrades.removeAllTrades(butcher, 4);

villagerTrades.addTrade(butcher, 4, (entity, random) => {
    val fourBuy = [
        <item:nethersdelight:hoglin_loin> * 8,
        <item:nethersdelight:strider_slice> * 8,
    ] as IItemStack[];

    return new MerchantOffer(fourBuy[random.nextInt(2)], emerald, 8, 14, 0.05);
});

villagerTrades.addTrade(butcher, 4, (entity, random) => {
    val fourSell = [
        <item:farmersdelight:barbecue_stick> * 4,
        <item:farmersdelight:egg_sandwich> * 4,
        <item:farmersdelight:chicken_sandwich> * 4,
        <item:farmersdelight:mutton_wrap> * 4,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 5, fourSell[random.nextInt(4)], 6, 14, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(butcher, 5);

villagerTrades.addTrade(butcher, 5, (entity, random) => {
    val fiveSell = [
        <item:farmersdelight:roast_chicken_block>,
        <item:farmersdelight:honey_glazed_ham_block>,
        <item:farmersdelight:shepherds_pie_block>,
    ] as IItemStack[];
  return new MerchantOffer(emerald * 6, fiveSell[random.nextInt(3)], 3, 30, 0.05);
});

villagerTrades.addTrade(butcher, 5, (entity, random) => {
    val fiveEnchants = [
        "minecraft:looting",
        "majruszsenchantments:hunter",
    ] as string[];
  return new MerchantOffer(emerald * 16, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: fiveEnchants[random.nextInt(2)]}]}), 2, 30, 0.05);
});