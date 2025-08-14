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
val librarian = <profession:minecraft:librarian>;

# Level 1
villagerTrades.removeAllTrades(librarian, 1);

val levelOneBuy = [
    <item:minecraft:paper> * 21,
    <item:minecraft:ink_sac> * 16,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(librarian, 1, item, emerald, 12, 2, 0.05);
}

val levelOneSell = [
    <item:minecraft:book>,
] as IItemStack[];

for item in levelOneSell {
    villagerTrades.addTrade(librarian, 1, new ItemsForEmeralds(item, 1, 2, 8, 2, 0.05));
}

# Level 2
villagerTrades.removeAllTrades(librarian, 2);

villagerTrades.addTrade(librarian, 2, <item:minecraft:lapis_lazuli> * 16, emerald, 16, 10, 0.05);

villagerTrades.addTrade(librarian, 2, emerald * 2, <item:minecraft:glass> * 6, 16, 10, 0.05);

# Level 3
villagerTrades.removeAllTrades(librarian, 3);

villagerTrades.addTrade(librarian, 3, new ItemsForEmeralds(<item:minecraft:lantern>, 2, 1, 6, 12, 0.05));

villagerTrades.addTrade(librarian, 3, (entity, random) => {
    val curses = [
        "minecraft:vanishing_curse",
        "minecraft:binding_curse",
        "allurement:ascension_curse",
        "allurement:fleeting_curse",
        "biomemakeover:enfeeblement_curse",
        "biomemakeover:depth_curse",
        "biomemakeover:flammability_curse",
        "biomemakeover:unwieldiness_curse",
        "biomemakeover:inaccuracy_curse",
    ] as string[];
    
  return new MerchantOffer(emerald * 9, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: curses[random.nextInt(9)]}]}), 3, 20, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(librarian, 4);

val levelFourSell = {
    # item: [emerald cost, item count]
    <item:minecraft:experience_bottle>: [3, 1],
} as int[][IItemStack];

for item, value in levelFourSell {
    villagerTrades.addTrade(librarian, 4, new ItemsForEmeralds(item, value[0], value[1], 10, 15, 0.05));
}

villagerTrades.addTrade(librarian, 4, (entity, random) => {
    val curses = [
        "biomemakeover:decay_curse",
        "biomemakeover:insomnia_curse",
        "biomemakeover:conductivity_curse",
        "biomemakeover:suffocation_curse",
        "biomemakeover:buckling_curse",
        "majruszsenchantments:corrosion_curse",
        "majruszsenchantments:fatigue_curse",
        "majruszsenchantments:slippery_curse",
    ] as string[];
    
  return new MerchantOffer(emerald * 9, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: curses[random.nextInt(8)]}]}), 3, 22, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(librarian, 5);

villagerTrades.addTrade(librarian, 5, (entity, random) => {
  return new MerchantOffer(emerald * 6, <item:minecraft:name_tag>, 4, 30, 0.05);
});

villagerTrades.addTrade(librarian, 5, (entity, random) => {
  return new MerchantOffer(emerald * 10, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "majruszsenchantments:enlightenment"}]}), 4, 30, 0.05);
});