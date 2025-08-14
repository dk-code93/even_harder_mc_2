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
val fletcher = <profession:minecraft:fletcher>;

# Level 1
villagerTrades.removeAllTrades(fletcher, 1);

val levelOneBuy = [
    <item:minecraft:flint> * 16,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(fletcher, 1, item, emerald, 12, 2, 0.05);
}

villagerTrades.addTrade(fletcher, 1, (entity, random) => {
    val oneBuy = [
        <item:minecraft:oak_log> * 15,
        <item:minecraft:spruce_log> * 15,
        <item:minecraft:birch_log> * 15,
    ] as IItemStack[];

    return new MerchantOffer(oneBuy[random.nextInt(3)], emerald, 8, 1, 0.05);
});

# Level 2
villagerTrades.removeAllTrades(fletcher, 2);

villagerTrades.addTrade(fletcher, 2, <item:minecraft:string> * 20, emerald, 12, 10, 0.05);

villagerTrades.addTrade(fletcher, 2, new ItemsForEmeralds(<item:minecraft:arrow>, 3, 16, 8, 12, 0.05));

# Level 3
villagerTrades.removeAllTrades(fletcher, 3);

villagerTrades.addTrade(fletcher, 3, new EnchantedItemForEmeralds(<item:minecraft:bow>, 4, 4, 18, 0.05));

villagerTrades.addTrade(fletcher, 3, (entity, random) => {
    val threeEnchants = [
        "minecraft:punch",
        "allurement:reeling",
        "minecraft:power",
        "minecraft:flame"
    ] as string[];
    

    // If the enchant is Power, we set level to 3
    val level as int;
    val indexThree = random.nextInt(4);
    if(indexThree == 2) { level = 3; } else { level = 1; }

    return new MerchantOffer(emerald * 8, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: threeEnchants[indexThree]}]}), 4, 18, 0.05);
});

# Level 4
villagerTrades.removeAllTrades(fletcher, 4);

villagerTrades.addTrade(fletcher, 4, new EnchantedItemForEmeralds(<item:minecraft:crossbow>, 4, 4, 18, 0.05));

villagerTrades.addTrade(fletcher, 4, (entity, random) => {
    val fourEnchants = [
        "minecraft:quick_charge",
        "minecraft:piercing",
        "minecraft:multishot",
    ] as string[];

    // If the enchant is Multishot, we set level to 1
    val level as int;
    val indexFour = random.nextInt(3);
    if(indexFour == 2) { level = 1; } else { level = 2; }
    
    return new MerchantOffer(emerald * 10, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: fourEnchants[indexFour]}]}), 12, 18, 0.05);
});

# Level 5
villagerTrades.removeAllTrades(fletcher, 5);

villagerTrades.addTrade(fletcher, 5, (entity, random) => {
    val tips = [
        "minecraft:weakness",
        "minecraft:slowness",
        "minecraft:poison",
        "majruszsdifficulty:wither",
    ] as string[];

    return new MerchantOffer(emerald * 5, <item:minecraft:tipped_arrow>.withTag({Potion: tips[random.nextInt(4)]}) * 8, 8, 15, 0.05);
});

villagerTrades.addTrade(fletcher, 5, (entity, random) => {
    val threeBuy = [
        <item:nyfsquiver:gold_quiver>,
        <item:nyfsquiver:diamond_quiver>,
    ] as IItemStack[];

    return new EnchantedItemForEmeralds(threeBuy[random.nextInt(2)], 8, 8, 16, 0.05).getOffer(entity, random);
});