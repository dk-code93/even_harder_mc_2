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
val shepherd = <profession:minecraft:shepherd>;

# Level 1
villagerTrades.removeAllTrades(shepherd, 1);

val levelOneBuy = [
    <item:minecraft:pink_wool> * 21,
    <item:minecraft:red_wool> * 21,
    <item:minecraft:yellow_wool> * 21,
    <item:minecraft:orange_wool> * 21,
    <item:minecraft:green_wool> * 21,
    <item:minecraft:lime_wool> * 21,
    <item:minecraft:cyan_wool> * 21,
    <item:minecraft:light_blue_wool> * 21,
    <item:minecraft:blue_wool> * 21,
    <item:minecraft:magenta_wool> * 21,
    <item:minecraft:purple_wool> * 21,
    <item:minecraft:white_wool> * 21,
    <item:minecraft:light_gray_wool> * 21,
    <item:minecraft:gray_wool> * 21,
    <item:minecraft:black_wool> * 21,
    <item:minecraft:brown_wool> * 21,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(shepherd, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(shepherd, 2);

villagerTrades.addTrade(shepherd, 2, (entity, random) => {
    val twoBuy = [
        <item:minecraft:white_dye> * 12,
        <item:minecraft:pink_dye> * 12,
        <item:minecraft:red_dye> * 12,
        <item:minecraft:yellow_dye> * 12,
        <item:minecraft:orange_dye> * 12,
        <item:minecraft:brown_dye> * 12,
        <item:minecraft:black_dye> * 12,
        <item:minecraft:gray_dye> * 12,
        <item:minecraft:light_gray_dye> * 12,
        <item:minecraft:green_dye> * 12,
        <item:minecraft:lime_dye> * 12,
    ] as IItemStack[];

    return new MerchantOffer(twoBuy[random.nextInt(11)], emerald, 8, 12, 0.05);
});

val levelTwoSell = [
    <item:majruszsdifficulty:bandage>,
] as IItemStack[];

for item in levelTwoSell {
    villagerTrades.addTrade(shepherd, 2, new ItemsForEmeralds(item, 3, 5, 8, 16, 0.05));
}

# Level 3
villagerTrades.removeAllTrades(shepherd, 3);

val levelThreeBuy = [
    <item:minecraft:lead> * 5,
] as IItemStack[];

for item in levelThreeBuy {
    villagerTrades.addTrade(shepherd, 3, item, emerald, 12, 12, 0.05);
}

villagerTrades.addTrade(shepherd, 3, (entity, random) => {
    val threeSell = [
        <item:minecraft:pink_bed>,
        <item:minecraft:red_bed>,
        <item:minecraft:yellow_bed>,
        <item:minecraft:orange_bed>,
        <item:minecraft:green_bed>,
        <item:minecraft:lime_bed>,
        <item:minecraft:cyan_bed>,
        <item:minecraft:light_blue_bed>,
        <item:minecraft:blue_bed>,
        <item:minecraft:magenta_bed>,
        <item:minecraft:purple_bed>,
        <item:minecraft:white_bed>,
        <item:minecraft:light_gray_bed>,
        <item:minecraft:gray_bed>,
        <item:minecraft:black_bed>,
        <item:minecraft:brown_bed>,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 2, threeSell[random.nextInt(16)], 12, 12, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(shepherd, 4);

villagerTrades.addTrade(shepherd, 4, (entity, random) => {
    val fourSell = [
        <item:minecraft:pink_banner>,
        <item:minecraft:red_banner>,
        <item:minecraft:yellow_banner>,
        <item:minecraft:orange_banner>,
        <item:minecraft:green_banner>,
        <item:minecraft:lime_banner>,
        <item:minecraft:cyan_banner>,
        <item:minecraft:light_blue_banner>,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 2, fourSell[random.nextInt(8)], 8, 14, 0.05);
});

villagerTrades.addTrade(shepherd, 4, (entity, random) => {
    val fourSell = [
        <item:minecraft:blue_banner>,
        <item:minecraft:magenta_banner>,
        <item:minecraft:purple_banner>,
        <item:minecraft:white_banner>,
        <item:minecraft:light_gray_banner>,
        <item:minecraft:gray_banner>,
        <item:minecraft:black_banner>,
        <item:minecraft:brown_banner>,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 2, fourSell[random.nextInt(8)], 8, 14, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(shepherd, 5);

villagerTrades.addTrade(shepherd, 5, (entity, random) => {
  return new MerchantOffer(emerald * 8, <item:minecraft:globe_banner_pattern>, 4, 30, 0.05);
});

villagerTrades.addTrade(shepherd, 5, (entity, random) => {
  return new MerchantOffer(emerald * 14, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:silk_touch"}]}), 2, 30, 0.05);
});