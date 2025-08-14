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
val armorer = <profession:minecraft:armorer>;

# Level 1
villagerTrades.removeAllTrades(armorer, 1);

val levelOneBuy = [
    <item:minecraft:coal> * 20,
    <item:minecraft:magma_block> * 18,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(armorer, 1, item, emerald, 16, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(armorer, 2);

villagerTrades.addTrade(armorer, 2, (entity, random) => {
    val twoArmorOne = [
        <item:minecraft:chainmail_leggings>,
        <item:minecraft:chainmail_boots>,
        <item:minecraft:iron_leggings>,
        <item:minecraft:iron_boots>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(twoArmorOne[random.nextInt(4)], 3, 4 , 12, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(armorer, 2, <item:minecraft:obsidian> * 10, emerald, 8, 10, 0.05);

# Level 3
villagerTrades.removeAllTrades(armorer, 3);

villagerTrades.addTrade(armorer, 3, (entity, random) => {
    val twoArmorOne = [
        <item:minecraft:chainmail_helmet>,
        <item:minecraft:chainmail_chestplate>,
        <item:minecraft:iron_helmet>,
        <item:minecraft:iron_chestplate>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(twoArmorOne[random.nextInt(4)], 3, 4 , 12, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(armorer, 3, new EnchantedItemForEmeralds(<item:minecraft:iron_horse_armor>, 6, 4, 15, 0.05));

# Level 4
villagerTrades.removeAllTrades(armorer, 4);

villagerTrades.addTrade(armorer, 4, (entity, random) => {
    val fiveArmor = [
        <item:minecraft:diamond_leggings>,
        <item:minecraft:diamond_boots>,
    ] as IItemStack[];

  return new EnchantedItemForEmeralds(fiveArmor[random.nextInt(2)], 8, 4, 20, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(armorer, 4, (entity, random) => {
    val threeEnchants = [
        "minecraft:fire_protection",
        "minecraft:blast_protection",
        "minecraft:projectile_protection",
        "majruszsenchantments:magic_protection",
    ] as string[];
  return new MerchantOffer(emerald * 8, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: threeEnchants[random.nextInt(4)]}]}), 4, 16, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(armorer, 5);

villagerTrades.addTrade(armorer, 4, (entity, random) => {
    val fiveArmor = [
        <item:minecraft:diamond_helmet>,
        <item:minecraft:diamond_chestplate>,
    ] as IItemStack[];

  return new EnchantedItemForEmeralds(fiveArmor[random.nextInt(2)], 8, 4, 20, 0.05).getOffer(entity, random);
});

villagerTrades.addTrade(armorer, 5, (entity, random) => {
  return new MerchantOffer(emerald * 8, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "minecraft:protection"}]}), 4, 16, 0.05);
});