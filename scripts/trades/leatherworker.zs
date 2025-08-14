import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.villager.trade.type.BasicTradeListing;
import crafttweaker.api.villager.trade.type.ItemsForEmeralds;
import crafttweaker.api.villager.trade.type.EmeraldForItems;
import crafttweaker.api.villager.trade.type.EnchantedItemForEmeralds;
import crafttweaker.api.villager.trade.type.DyedArmorForEmeralds;
import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.item.enchantment.Enchantment;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.data.IData;

val emerald = <item:minecraft:emerald>;
val leatherworker = <profession:minecraft:leatherworker>;
val leatherHorseArmor = <item:minecraft:leather_horse_armor>;

# Level 1
villagerTrades.removeAllTrades(leatherworker, 1);

val levelOneBuy = [
    <item:minecraft:leather> * 16,
    <item:farmersdelight:straw> * 21,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(leatherworker, 1, item, emerald, 12, 2, 0.05);
}

# Level 2
villagerTrades.removeAllTrades(leatherworker, 2);

villagerTrades.addTrade(leatherworker, 2, (entity, random) => {
    val twoArmorOne = [
        <item:minecraft:leather_leggings>,
        <item:minecraft:leather_boots>,
    ] as IItemStack[];
    val randomArmor = twoArmorOne[random.nextInt(2)];
    val dyeData = new DyedArmorForEmeralds(randomArmor, 1).getOffer(entity, random).getResult().getOrCreateTag() as IData;
    val enchantTrade = new EnchantedItemForEmeralds(randomArmor, 1, 4 , 12, 0.05).getOffer(entity, random) as MerchantOffer;
    return new MerchantOffer(enchantTrade.getCostA(), 
        randomArmor.withTag({display: dyeData["display"], Enchantments: enchantTrade.getResult().getOrCreateTag()["Enchantments"]}), 6, 14, 0.05);
});

villagerTrades.addTrade(leatherworker, 2, <item:minecraft:phantom_membrane> * 16, emerald, 8, 12, 0.05);

# Level 3
villagerTrades.removeAllTrades(leatherworker, 3);

villagerTrades.addTrade(leatherworker, 3, (entity, random) => {
    val threeArmorOne = [
        <item:minecraft:leather_helmet>,
        <item:minecraft:leather_chestplate>,
    ] as IItemStack[];
    val randomArmor = threeArmorOne[random.nextInt(2)];
    val dyeData = new DyedArmorForEmeralds(randomArmor, 1).getOffer(entity, random).getResult().getOrCreateTag() as IData;
    val enchantTrade = new EnchantedItemForEmeralds(randomArmor, 1, 4 , 12, 0.05).getOffer(entity, random) as MerchantOffer;
    return new MerchantOffer(enchantTrade.getCostA(), 
        randomArmor.withTag({display: dyeData["display"], Enchantments: enchantTrade.getResult().getOrCreateTag()["Enchantments"]}), 6, 14, 0.05);
});

villagerTrades.addTrade(leatherworker, 3, (entity, random) => {
  return new MerchantOffer(emerald * 12, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "majruszsenchantments:dodge"}]}), 4, 18, 0.05);
});


# Level 4
villagerTrades.removeAllTrades(leatherworker, 4);

villagerTrades.addTrade(leatherworker, 4, emerald * 8, <item:minecraft:saddle>, 8, 14, 0.05);

villagerTrades.addTrade(leatherworker, 4, emerald * 3, <item:farmersdelight:horse_feed>, 6, 18, 0.05);

# Level 5
villagerTrades.removeAllTrades(leatherworker, 5);

villagerTrades.addTrade(leatherworker, 5, (entity, random) => {
    val dyedHorseData = new DyedArmorForEmeralds(<item:minecraft:leather_boots>, 1).getOffer(entity, random).getResult().getOrCreateTag() as IData;
    val enchantHorseTrade = new EnchantedItemForEmeralds(leatherHorseArmor, 1, 4 , 12, 0.05).getOffer(entity, random) as MerchantOffer;
    return new MerchantOffer(enchantHorseTrade.getCostA(), 
        leatherHorseArmor.withTag({display: dyedHorseData["display"], Enchantments: enchantHorseTrade.getResult().getOrCreateTag()["Enchantments"]}), 6, 18, 0.05);
});

villagerTrades.addTrade(leatherworker, 5, (entity, random) => {
    val threeEnchants = [
        "majruszsenchantments:horse_protection",
        "majruszsenchantments:horse_swiftness",
    ] as string[];
  return new MerchantOffer(emerald * 6, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: threeEnchants[random.nextInt(2)]}]}), 4, 18, 0.05);
});


