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
val mason = <profession:minecraft:mason>;

# Level 1
villagerTrades.removeAllTrades(mason, 1);

val levelOneBuy = [
    <item:immersive_weathering:stone_brick> * 20,
    <item:immersive_weathering:deepslate_brick> * 20,
    <item:minecraft:nether_brick> * 20,
    <item:minecraft:brick> * 20,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(mason, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(mason, 2);

villagerTrades.addTrade(mason, 2, (entity, random) => {
    val twoStones = [
        <item:minecraft:stone> * 21,
        <item:minecraft:granite> * 21,
        <item:minecraft:diorite> * 21,
        <item:minecraft:andesite> * 21,
    ] as IItemStack[];

    return new MerchantOffer(twoStones[random.nextInt(4)], emerald, 10, 2, 0.05);
});

villagerTrades.addTrade(mason, 2, (entity, random) => {
    val twoSell = [
        <item:minecraft:mossy_stone_bricks> * 12,
        <item:minecraft:mud_bricks> * 12,
        <item:immersive_weathering:mossy_bricks> * 12,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 4, twoSell[random.nextInt(3)], 8, 12, 0.05);
});

# Level 3
villagerTrades.removeAllTrades(mason, 3);

villagerTrades.addTrade(mason, 3, (entity, random) => {
    val threeStones = [
        <item:minecraft:deepslate> * 21,
        <item:minecraft:tuff> * 21,
        <item:minecraft:dripstone_block> * 21,
    ] as IItemStack[];

    return new MerchantOffer(threeStones[random.nextInt(3)], emerald, 14, 2, 0.05);
});

villagerTrades.addTrade(mason, 3, (entity, random) => {
    val threeSell = [
        <item:minecraft:blackstone> * 12,
        <item:minecraft:calcite> * 12,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 4, threeSell[random.nextInt(2)], 8, 16, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(mason, 4);

val levelFourSell = [
    <item:minecraft:pink_terracotta> * 12,
    <item:minecraft:red_terracotta> * 12,
    <item:minecraft:yellow_terracotta> * 12,
    <item:minecraft:orange_terracotta> * 12,
    <item:minecraft:green_terracotta> * 12,
    <item:minecraft:lime_terracotta> * 12,
    <item:minecraft:cyan_terracotta> * 12,
    <item:minecraft:light_blue_terracotta> * 12,
    <item:minecraft:blue_terracotta> * 12,
    <item:minecraft:magenta_terracotta> * 12,
    <item:minecraft:purple_terracotta> * 12,
    <item:minecraft:white_terracotta> * 12,
    <item:minecraft:light_gray_terracotta> * 12,
    <item:minecraft:gray_terracotta> * 12,
    <item:minecraft:black_terracotta> * 12,
    <item:minecraft:brown_terracotta> * 12,
] as IItemStack[];

for item in levelFourSell {
    villagerTrades.addTrade(mason, 4, emerald * 5, item, 12, 16, 0.05);
}

# Level 5
villagerTrades.removeAllTrades(mason, 5);

villagerTrades.addTrade(mason, 5, (entity, random) => {
    val levelFiveSell = [
    <item:minecraft:pink_concrete_powder> * 12,
    <item:minecraft:red_concrete_powder> * 12,
    <item:minecraft:yellow_concrete_powder> * 12,
    <item:minecraft:orange_concrete_powder> * 12,
    <item:minecraft:green_concrete_powder> * 12,
    <item:minecraft:lime_concrete_powder> * 12,
    <item:minecraft:cyan_concrete_powder> * 12,
    <item:minecraft:light_blue_concrete_powder> * 12,
    <item:minecraft:blue_concrete_powder> * 12,
    <item:minecraft:magenta_concrete_powder> * 12,
    <item:minecraft:purple_concrete_powder> * 12,
    <item:minecraft:white_concrete_powder> * 12,
    <item:minecraft:light_gray_concrete_powder> * 12,
    <item:minecraft:gray_concrete_powder> * 12,
    <item:minecraft:black_concrete_powder> * 12,
    <item:minecraft:brown_concrete_powder> * 12,
    ] as IItemStack[];

    return new MerchantOffer(emerald * 5, levelFiveSell[random.nextInt(16)], 8, 16, 0.05);
});

villagerTrades.addTrade(mason, 5, (entity, random) => {
  return new MerchantOffer(emerald * 8, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:unbreaking"}]}), 4, 30, 0.05);
});