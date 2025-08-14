import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.villager.trade.ItemListing;
import crafttweaker.api.villager.trade.type.BasicTradeListing;
import crafttweaker.api.villager.trade.type.TreasureMapForEmeralds;
import crafttweaker.api.villager.trade.type.ItemsForEmeralds;
import crafttweaker.api.villager.trade.type.EmeraldForItems;
import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.world.map.MapDecorationType;
import crafttweaker.api.util.math.Random;


val emerald = <item:minecraft:emerald>;
val cartographer = <profession:minecraft:cartographer>;

# Level 1
villagerTrades.removeAllTrades(cartographer, 1);

val levelOneBuy = [
    <item:minecraft:paper> * 24,
] as IItemStack[];

for item in levelOneBuy {
    villagerTrades.addTrade(cartographer, 1, item, emerald, 12, 2, 0.05);
}

val levelOneSell = [
    <item:minecraft:map>,
] as IItemStack[];

for item in levelOneSell {
    villagerTrades.addTrade(cartographer, 1, new ItemsForEmeralds(item, 1, 1, 8, 2, 0.05));
}

# Level 2
villagerTrades.removeAllTrades(cartographer, 2);

villagerTrades.addTrade(cartographer, 2, <item:minecraft:feather> * 14, emerald, 12, 12, 0.05);

villagerTrades.addTrade(cartographer, 2, TreasureMapForEmeralds.create(7, <resource:betterjungletemples:better_jungle_temples>, "Jungle Explorer Map", <constant:minecraft:world/map/decorationtype:red_x>, 8, 15));

# Level 3
villagerTrades.removeAllTrades(cartographer, 3);

villagerTrades.addTrade(cartographer, 3, <item:minecraft:amethyst_shard> * 18, emerald, 8, 15, 0.05);

villagerTrades.addTrade(cartographer, 3, TreasureMapForEmeralds.create(7, <resource:betterdeserttemples:better_desert_temples>, "Desert Explorer Map", <constant:minecraft:world/map/decorationtype:red_x>, 8, 16));

# Level 4
villagerTrades.removeAllTrades(cartographer, 4);

val levelFourBuy = [
    <item:spelunkery:raw_magnetite>,
] as IItemStack[];

for item in levelFourBuy {
    villagerTrades.addTrade(cartographer, 4, item * 4, emerald, 12, 12, 0.05);
}

villagerTrades.addTrade(cartographer, 4, TreasureMapForEmeralds.create(7, <resource:betteroceanmonuments:better_ocean_monuments>, "Ocean Explorer Map", <constant:minecraft:world/map/decorationtype:monument>, 8, 16));

# Level 5
villagerTrades.removeAllTrades(cartographer, 5);

villagerTrades.addTrade(cartographer, 5, (entity, random) => {
  return new MerchantOffer(emerald * 36, <item:naturescompass:naturescompass>, 4, 30, 0.05);
});

villagerTrades.addTrade(cartographer, 5, TreasureMapForEmeralds.create(7, <resource:minecraft:on_woodland_explorer_maps>, "Woodland Explorer Map", <constant:minecraft:world/map/decorationtype:mansion>, 8, 15));

