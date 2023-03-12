#priority 11
import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;


Recipes.addShaped("atomic_stage", <tconstruct:throwball:1>, [[null, <icbmclassic:explosives>, null],[<icbmclassic:explosives>, <minecraft:flint>, <icbmclassic:explosives>], [null, <icbmclassic:explosives>, null]]);
Recipes.addShaped("atomic_stage", <icbmclassic:missile:24>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <minecraft:redstone_block>, <ore:ingotSteel>], [<ore:ingotSteel>, <techguns:itemshared:58>, <ore:ingotSteel>]]);
Recipes.setRecipeStageByMod("atomic_stage", "openmodularturrets");

ItemStages.stageModItems("atomic_stage", "openmodularturrets");

// Nuclear Ores
mods.orestages.OreStages.addReplacement("atomic_stage", <geolosys:ore:9>); // Hides Uranium
mods.orestages.OreStages.addReplacement("atomic_stage", <nuclearcraft:ore:6>); // Hides Lithium

val atomicStageItems as IItemStack[] = [
    <icbmclassic:missile>,
    <icbmclassic:missile:1>,
    //<icbmclassic:missile:2>,
    <icbmclassic:missile:3>,
    <icbmclassic:missile:4>,
    <icbmclassic:missile:5>,
    <icbmclassic:missile:6>,
    <icbmclassic:missile:7>,
    <icbmclassic:missile:24>,
    <icbmclassic:explosives>,
    <icbmclassic:explosives:1>,
    //<icbmclassic:explosives:2>,
    //<icbmclassic:bombcart:2>,
    <icbmclassic:explosives:3>,
    <icbmclassic:explosives:4>,
    <icbmclassic:explosives:5>,
    <icbmclassic:explosives:6>,
    <icbmclassic:explosives:7>,
    <icbmclassic:launcherbase>,
    <icbmclassic:launcherscreen>,
    <icbmclassic:circuit>,
    <techguns:t2_riot_helmet>,
    <techguns:t2_riot_chestplate>,
    <techguns:t2_riot_leggings>,
    <techguns:t2_riot_boots>,
    <icbmclassic:glasspressureplate>,
    <icbmclassic:glassbutton>,
    <icbmclassic:grenade:5>,
    <icbmclassic:grenade:6>,
    <icbmclassic:grenade:7>,
    <icbmclassic:grenade>,
    <icbmclassic:grenade:1>,
    <icbmclassic:grenade:4>,
    <icbmclassic:bombcart>,
    <icbmclassic:bombcart:1>,
    <icbmclassic:bombcart:3>,
    <icbmclassic:bombcart:4>,
    <icbmclassic:bombcart:5>,
    <icbmclassic:bombcart:6>,
    <icbmclassic:bombcart:7>,
    <icbmclassic:reinforcedglass>,
    <icbmclassic:poisonpowder>,
    <icbmclassic:sulfurdust>,
    <icbmclassic:saltpeter>,
    <icbmclassic:defuser>,
    <icbmclassic:tracker>,
    <icbmclassic:radargun>,
    <icbmclassic:remotedetonator>,
    <icbmclassic:laserdetonator>,
    <icbmclassic:launcherframe>,
    <icbmclassic:wire:1>,
    <icbmclassic:spikes>,
    <icbmclassic:spikes:1>,
    <icbmclassic:spikes:2>,
    <icbmclassic:antidote>,
    <icbmclassic:battery>,
    <icbmclassic:concrete>,
    <icbmclassic:concrete:1>,
    <icbmclassic:concrete:2>,
    <icbmclassic:grenade:3>,
    <techguns:hazmat_helmet>,
    <techguns:hazmat_chestplate>,
    <techguns:hazmat_leggings>,
    <techguns:hazmat_boots>,
    <techguns:itemshared:61>,
    <techguns:itemshared:17>,
    <techguns:itemshared:18>,
    <techguns:itemshared:19>,
    <techguns:itemshared:20>,
    <techguns:basicmachine:3>,
    <techguns:itemshared:125>,
    <techguns:itemshared:126>,
    <techguns:itemshared:77>,
    <techguns:itemshared:99>,
    <techguns:itemshared:100>,
    <techguns:itemshared:101>,
    <techguns:itemshared:119>,
    <techguns:itemshared:106>,
    <techguns:itemshared:107>,
    <techguns:itemshared:108>,
    <techguns:itemshared:109>,
    <techguns:itemshared:110>,
    <techguns:itemshared:111>,
    <techguns:itemshared:112>,
    <techguns:itemshared:113>,
    <techguns:itemshared:114>,
    <techguns:itemshared:115>,
    <techguns:itemshared:116>,
    <nuclearcraft:ingot:3>,
    <nuclearcraft:ingot_block:3>,
    <nuclearcraft:ingot:5>,
    <nuclearcraft:ingot_block:5>,
    <nuclearcraft:ingot:4>,
    <nuclearcraft:ingot_block:4>,
    <nuclearcraft:ingot:6>,
    <nuclearcraft:ingot_block:6>,
    <nuclearcraft:ingot:7>,
    <nuclearcraft:ingot_block:7>,
    <nuclearcraft:dust:6>
];

val techGuns as IItemStack[] = [
    <techguns:m4_infiltrator>,
    <techguns:grenadelauncher>,
    <techguns:minigun>,
    <techguns:as50>,
    <techguns:vector>,
    <techguns:scar>,
    <techguns:miningdrill>,
    <techguns:nightvisiongoggles>
];

val techGunRecipes as string[] = [
    "techguns:m4_infiltrator_alt",
    "techguns:grenadelauncher",
    "techguns:minigun_alt",
    "techguns:as50_alt",
    "techguns:vector_alt",
    "techguns:scar_alt",
    "techguns:miningdrill_alt",
    "techguns:nightvisiongoggles_alt"
];

for item in atomicStageItems {
    Recipes.setRecipeStage("atomic_stage", item);
    ItemStages.addItemStage("atomic_stage", item);
}

for item in techGuns {
    Recipes.setRecipeStage("atomic_stage", item);
    ItemStages.addItemStage("atomic_stage", item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage("atomic_stage", recipe);
}