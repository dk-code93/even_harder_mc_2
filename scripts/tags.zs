#priority 1
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.world.biome.Biome;
import crafttweaker.api.entity.Entity;
import crafttweaker.api.entity.EntityType;

/* <tag:items:forge:nutrients/proteins>.add(<item:collectorsreap:baked_portobello_cap>); */
# Foods
val proteinsToAdd = [
    // <item:oceansdelight:guardian>,
    // <item:oceansdelight:tentacles>,
    // <item:oceansdelight:elder_guardian_slab>,
    <item:endersdelight:shulker_mollusk>,
    <item:endersdelight:mite_crust>,
    <item:spelunkery:button_mushroom>,
    <item:spelunkery:crimini>,
    <item:spelunkery:portabella>
] as IItemStack[];

for item in proteinsToAdd {
    <tag:items:forge:nutrients/proteins>.add(item);
}

val sugarsToAdd = [
    <item:nethersdelight:propelpearl>,
] as IItemStack[];

for item in sugarsToAdd {
    <tag:items:forge:nutrients/sugars>.add(item);
}

val veggiesToAdd = [
    <item:delightful:cactus_flesh>,
    // <item:abundant_atmosphere:cave_parsnip>,
    // <item:abundant_atmosphere:foul_parsnip>,
] as IItemStack[];

for item in veggiesToAdd {
    <tag:items:forge:vegetables>.add(item);
}

// val fishesToAdd = [
//     <item:oceansdelight:guardian_tail>,
// ] as IItemStack[];

// for item in fishesToAdd {
//     <tag:items:forge:raw_fishes>.add(item);
// }

#Zombie flesh cookables
val fleshCookables = [
    <item:minecraft:sugar>,
    <item:spelunkery:salt>,
] as IItemStack[];

for ingredient in fleshCookables {
    <tag:items:crafttweaker:salts>.add(ingredient);
}

<tag:items:minecraft:planks>.remove(<item:spelunkery:conk_fungus>);

#Animal fat makes fire infinite
<tag:items:unlitcampfire:makes_campfire_infinite>.add(<item:delightful:animal_oil_bottle>);

# Seal Pieces
val sealPieces = [
    <item:nether_remastered:seal_piece_1>,
    <item:nether_remastered:seal_piece_2>,
    <item:nether_remastered:seal_piece_3>,
    <item:nether_remastered:seal_piece_4>,
] as IItemStack[];

for item in sealPieces {
    <tag:items:crafttweaker:seal_pieces>.add(item);
}

# Triggers Fishing Minigame

val triggersFishing = [
    <item:minecraft:bamboo>,
    <item:minecraft:bone>,
    <item:minecraft:bow>,
    <item:minecraft:bowl>,
    <item:minecraft:enchanted_book>,
    <item:minecraft:fishing_rod>,
    <item:minecraft:ink_sac>,
    <item:minecraft:leather>,
    <item:minecraft:leather_boots>,
    <item:minecraft:lily_pad>,
    <item:minecraft:name_tag>,
    <item:minecraft:nautilus_shell>,
    <item:minecraft:potion>,
    <item:minecraft:rotten_flesh>,
    <item:minecraft:saddle>,
    <item:minecraft:stick>,
    <item:minecraft:string>,
    <item:minecraft:tripwire_hook>,
] as IItemStack[];

for item in triggersFishing {
    <tag:items:stardew_fishing:starts_minigame>.add(item);
}

# Remove Tags
val tagsToRemove = [
    <tag:worldgen/biome:biomemakeover:has_structure/ghost_town>,
    <tag:worldgen/biome:biomemakeover:has_structure/sunken_ruin>,
    <tag:worldgen/biome:biomemakeover:has_structure/mushroom_house>,
    <tag:worldgen/biome:immersive_weathering:has_loam>,
    <tag:worldgen/biome:immersive_weathering:has_earthen_clay>,
    <tag:worldgen/biome:immersive_weathering:has_silt>,
] as MCTag[];

for tag in tagsToRemove {
    tag.clear();
}

# Nutrient tags

val addCarbs = [
    <item:farmersdelight:pie_crust>,
    <item:farmersdelight:vegetable_noodles>,
    <item:minecraft:cake>,
    <item:minecraft:pumpkin_pie>,
    <item:farmersdelight:wheat_dough>,
    <item:delightful:smore>,
] as IItemStack[];

for item in addCarbs {
    <tag:items:forge:nutrients/carbs>.add(item);
}

val addVeggies = [
    <item:farmersdelight:vegetable_noodles>,
    <item:delightful:field_salad>,
    <item:delightful:green_tea_leaf>,
    <item:delightful:matcha>,
] as IItemStack[];

for item in addVeggies {
    <tag:items:forge:nutrients/vegetables>.add(item);
}

val addFruits = [
    <item:delightful:field_salad>,
    <item:minecraft:pumpkin_pie>,
    <item:farmersdelight:glow_berry_custard>,
] as IItemStack[];

for item in addFruits {
    <tag:items:forge:nutrients/fruits>.add(item);
}

val addSugars = [
    <item:minecraft:cake>,
    <item:minecraft:pumpkin_pie>,
    <item:delightful:smore>,
    <item:farmersdelight:glow_berry_custard>,
] as IItemStack[];

for item in addSugars {
    <tag:items:forge:nutrients/sugars>.add(item);
}

val removeProtein = [
    <item:minecraft:cocoa_beans>,
] as IItemStack[];

for item in removeProtein {
    <tag:items:forge:nutrients/proteins>.remove(item);
}

# Food Diversity

val OnePoint = [
    <item:minecraft:apple>,
    <item:minecraft:melon_slice>,
    <item:minecraft:chorus_fruit>,
    <item:minecraft:chorus_fruit>,
    <item:minecraft:carrot>,
    <item:minecraft:potato>,
    <item:minecraft:baked_potato>,
    <item:minecraft:poisonous_potato>,
    <item:minecraft:beetroot>,
    <item:minecraft:dried_kelp>,
    <item:minecraft:beef>,
    <item:minecraft:cooked_beef>,
    <item:minecraft:porkchop>,
    <item:minecraft:cooked_porkchop>,
    <item:minecraft:mutton>,
    <item:minecraft:cooked_mutton>,
    <item:minecraft:chicken>,
    <item:minecraft:cooked_chicken>,
    <item:minecraft:rabbit>,
    <item:minecraft:cooked_rabbit>,
    <item:minecraft:cod>,
    <item:minecraft:cooked_cod>,
    <item:minecraft:salmon>,
    <item:minecraft:cooked_salmon>,
    <item:minecraft:tropical_fish>,
    <item:minecraft:pufferfish>,
    <item:minecraft:bread>,
    <item:minecraft:rotten_flesh>,
    <item:minecraft:spider_eye>,
    <item:minecraft:beetroot_soup>,
    <item:minecraft:honey_bottle>,
    <item:delightful:matcha>,
    <item:delightful:green_tea_leaf>,
    <item:delightful:salmonberries>,
    <item:delightful:animal_fat>,
    <item:delightful:acorn>,
    <item:delightful:roasted_acorn>,
    <item:delightful:cactus_flesh>,
    <item:delightful:cactus_steak>,
    <item:delightful:marshmallow_stick>,
    <item:delightful:cooked_marshmallow_stick>,
    <item:delightful:raw_goat>,
    <item:delightful:cooked_goat>,
    <item:delightful:cantaloupe_slice>,
    <item:delightful:cantaloupe_popsicle>,
    <item:farmersdelight:cabbage>,
    <item:farmersdelight:cabbage_leaf>,
    <item:farmersdelight:onion>,
    <item:farmersdelight:tomato>,
    <item:farmersdelight:tomato_sauce>,
    <item:farmersdelight:fried_egg>,
    <item:farmersdelight:wheat_dough>,
    <item:farmersdelight:raw_pasta>,
    <item:farmersdelight:pumpkin_slice>,
    <item:farmersdelight:minced_beef>,
    <item:farmersdelight:beef_patty>,
    <item:farmersdelight:chicken_cuts>,
    <item:farmersdelight:cooked_chicken_cuts>,
    <item:farmersdelight:bacon>,
    <item:farmersdelight:cooked_bacon>,
    <item:farmersdelight:cod_slice>,
    <item:farmersdelight:cooked_cod_slice>,
    <item:farmersdelight:salmon_slice>,
    <item:farmersdelight:cooked_salmon_slice>,
    <item:farmersdelight:mutton_chops>,
    <item:farmersdelight:cooked_mutton_chops>,
    <item:farmersdelight:ham>,
    <item:farmersdelight:melon_popsicle>,
    <item:farmersdelight:cooked_rice>,
    <item:nethersdelight:hoglin_loin>,
    <item:nethersdelight:hoglin_sirloin>,
    <item:nethersdelight:hoglin_ear>,
    <item:nethersdelight:strider_slice>,
    <item:nethersdelight:ground_strider>,
    <item:nethersdelight:propelpearl>,
    <item:endersdelight:mite_crust>,
    <item:endersdelight:shulker_mollusk>,
    <item:endersdelight:shulker_filet>,
    <item:eanimod:rawrabbit_small>,
    <item:eanimod:cookedrabbit_small>,
    <item:eanimod:rawchicken_darksmall>,
    <item:eanimod:rawchicken_dark>,
    <item:eanimod:rawchicken_darkbig>,
    <item:eanimod:cookedchicken_darksmall>,
    <item:eanimod:cookedchicken_dark>,
    <item:eanimod:cookedchicken_darkbig>,
    <item:eanimod:rawchicken_palesmall>,
    <item:eanimod:rawchicken_pale>,
    <item:eanimod:cookedchicken_palesmall>,
    <item:eanimod:cookedchicken_pale>,
] as IItemStack[];

for item in OnePoint {
    <tag:items:crafttweaker:one_diversity_point>.add(item);
}

val TwoPoints = [
    <item:minecraft:mushroom_stew>,
    <item:minecraft:cookie>,
    <item:delightful:glow_jam_cookie>,
    <item:delightful:nut_dough>,
    <item:delightful:jam_jar>,
    <item:delightful:glow_jam_jar>,
    <item:delightful:nut_butter_bottle>,
    <item:delightful:wrapped_cantaloupe>,
    <item:farmersdelight:smoked_ham>,
    <item:farmersdelight:pie_crust>,
    <item:farmersdelight:sweet_berry_cookie>,
    <item:farmersdelight:honey_cookie>,
    <item:farmersdelight:nether_salad>,
    <item:farmersdelight:egg_sandwich>,
    <item:farmersdelight:cabbage_rolls>,
    <item:farmersdelight:salmon_roll>,
    <item:farmersdelight:cod_roll>,
    <item:farmersdelight:bone_broth>,
    <item:farmersdelight:bacon_and_eggs>,
    <item:nethersdelight:warped_moldy_meat>,
    <item:nethersdelight:magma_gelatin>,
    <item:endersdelight:chorus_juice>,
    <item:endersdelight:endermite_stew>,
    <item:endersdelight:chorus_stew>,
] as IItemStack[];

for item in TwoPoints {
    <tag:items:crafttweaker:two_diversity_point>.add(item);
}

val ThreePoints = [
    <item:delightful:matcha_ice_cream>,
    <item:delightful:matcha_milkshake>,
    <item:delightful:salmonberry_ice_cream>,
    <item:delightful:salmonberry_milkshake>,
    <item:delightful:cactus_soup>,
    <item:delightful:ender_nectar>,
    <item:delightful:matcha_latte>,
    <item:farmersdelight:fruit_salad>,
    <item:farmersdelight:mixed_salad>,
    <item:farmersdelight:barbecue_stick>,
    <item:farmersdelight:stuffed_potato>,
    <item:farmersdelight:kelp_roll>,
    <item:farmersdelight:kelp_roll_slice>,
    <item:farmersdelight:beef_stew>,
    <item:farmersdelight:fish_stew>,
    <item:nethersdelight:nether_skewer>,
    <item:endersdelight:uncanny_cookies>,
    <item:endersdelight:strange_eclair>,
    <item:endersdelight:crispy_skewer>,
    <item:endersdelight:amberveiled_curry>,
] as IItemStack[];

for item in ThreePoints {
    <tag:items:crafttweaker:three_diversity_point>.add(item);
}

val FourPoints = [
    <item:minecraft:rabbit_stew>,
    <item:eanimod:rabbitstew_weak>,
    <item:delightful:cactus_chili>,
    <item:delightful:berry_matcha_latte>,
    <item:delightful:cantaloupe_bread>,
    <item:delightful:salmonberry_gummy>,
    <item:delightful:matcha_gummy>,
    <item:delightful:cantaloupe_gummy>,
    <item:farmersdelight:cake_slice>,
    <item:farmersdelight:glow_berry_custard>,
    <item:farmersdelight:chicken_sandwich>,
    <item:farmersdelight:bacon_sandwich>,
    <item:farmersdelight:mutton_wrap>,
    <item:farmersdelight:dumplings>,
    <item:farmersdelight:chicken_soup>,
    <item:farmersdelight:vegetable_soup>,
    <item:farmersdelight:fried_rice>,
    <item:farmersdelight:pumpkin_soup>,
    <item:farmersdelight:baked_cod_stew>,
    <item:farmersdelight:noodle_soup>,
    <item:farmersdelight:pasta_with_meatballs>,
    <item:farmersdelight:pasta_with_mutton_chop>,
    <item:farmersdelight:mushroom_rice>,
    <item:farmersdelight:roasted_mutton_chops>,
    <item:farmersdelight:steak_and_potatoes>,
    <item:farmersdelight:ratatouille>,
    <item:farmersdelight:squid_ink_pasta>,
    <item:farmersdelight:grilled_salmon>,
    <item:farmersdelight:dog_food>,
    <item:nethersdelight:strider_moss_stew>,
    <item:endersdelight:crawling_sandwich>,
    <item:endersdelight:twisted_cereal>,
    <item:endersdelight:pearl_pasta>,
    <item:endersdelight:ender_paella>,
    <item:endersdelight:amberveil_stew>,
    <item:endersdelight:steak_fries>,
] as IItemStack[];

for item in FourPoints {
    <tag:items:crafttweaker:four_diversity_point>.add(item);
}

val FivePoints = [
    <item:delightful:pumpkin_pie_slice>,
    <item:delightful:salmonberry_pie_slice>,
    <item:delightful:baklava_slice>,
    <item:delightful:field_salad>,
    <item:delightful:nut_butter_and_jam_sandwich>,
    <item:delightful:stuffed_cantaloupe>,
    <item:farmersdelight:apple_pie_slice>,
    <item:farmersdelight:chocolate_pie_slice>,
    <item:farmersdelight:hamburger>,
    <item:farmersdelight:vegetable_noodles>,
    <item:farmersdelight:shepherds_pie>,
    <item:nethersdelight:grilled_strider>,
    <item:endersdelight:stuffed_shulker_bowl>,
] as IItemStack[];

for item in FivePoints {
    <tag:items:crafttweaker:five_diversity_point>.add(item);
}

val SixPoints = [
    <item:delightful:sinigang>,
    <item:delightful:cheeseburger>,
    <item:farmersdelight:roast_chicken>,
    <item:farmersdelight:stuffed_pumpkin>,
    <item:farmersdelight:honey_glazed_ham>,
    <item:nethersdelight:plate_of_stuffed_hoglin_ham>,
    <item:nethersdelight:plate_of_stuffed_hoglin_roast>,
    <item:endersdelight:chicken_curry>,
] as IItemStack[];

for item in SixPoints {
    <tag:items:crafttweaker:six_diversity_point>.add(item);
}

val SevenPoints = [
    <item:delightful:deluxe_cheeseburger>,
    <item:nethersdelight:plate_of_stuffed_hoglin_snout>,
] as IItemStack[];

for item in SevenPoints {
    <tag:items:crafttweaker:seven_diversity_point>.add(item);
}

# Animal Tags


val fattyAnimals = [
    <entitytype:eanimod:enhanced_turtle>,
    <entitytype:eanimod:enhanced_cow>,
    <entitytype:eanimod:enhanced_pig>,
    <entitytype:eanimod:enhanced_llama>,
    <entitytype:eanimod:enhanced_sheep>,
    <entitytype:eanimod:enhanced_rabbit>,
    <entitytype:eanimod:enhanced_mooshroom>,
] as EntityType<Entity>[];

for animal in fattyAnimals {
    <tag:entity_types:delightful:fatty_animals>.add(animal);
}
<tag:entity_types:delightful:drops_ham>.add(<entitytype:eanimod:enhanced_pig>);

# Headshot Whitelist

val headshots = [ 
    <entitytype:majruszsdifficulty:tank>,
    <entitytype:majruszsdifficulty:cerberus>,
    <entitytype:majruszsdifficulty:creeperling>,
    <entitytype:majruszsdifficulty:giant>,
    <entitytype:majruszsdifficulty:illusioner>,
    <entitytype:takesapillage:archer>,
    <entitytype:takesapillage:skirmisher>,
    <entitytype:takesapillage:legioner>,
    <entitytype:progressivebosses:wither>,
    <entitytype:ntrials:bogged>,
    <entitytype:ntrials:breeze>,
    <entitytype:ntrials:breeze_boss>,
    <entitytype:biomemakeover:adjudicator>,
    <entitytype:friendsandfoes:iceologer>,
    <entitytype:friendsandfoes:wildfire>,
] as EntityType<Entity>[];

for mob in headshots {
    <tag:entity_types:archeryexp:headshot_whitelist>.add(mob);
}