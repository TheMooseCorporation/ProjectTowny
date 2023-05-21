import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Missiles:
    Tier 1 ICBMs that don't seem to bypass State's claim system, but if they do should probably be disabled
*/

// Stage Name
val stage = "basic_missiles_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <icbmclassic:explosives:5>,
    <icbmclassic:explosives:6>,
    <icbmclassic:explosives:7>,
    <icbmclassic:explosives:1>,
    <icbmclassic:explosives:3>,
    <icbmclassic:explosives>,
    <icbmclassic:explosives:4>,
    <icbmclassic:grenade>,
    <icbmclassic:grenade:1>,
    <icbmclassic:grenade:3>,
    <icbmclassic:grenade:4>,
    <icbmclassic:grenade:5>,
    <icbmclassic:grenade:6>,
    <icbmclassic:grenade:7>,
    <icbmclassic:poisonpowder>,
    <icbmclassic:bombcart>,
    <icbmclassic:bombcart:1>,
    <icbmclassic:bombcart:3>,
    <icbmclassic:bombcart:4>,
    <icbmclassic:bombcart:5>,
    <icbmclassic:bombcart:6>,
    <icbmclassic:bombcart:7>,
    <icbmclassic:launcherframe>,
    <icbmclassic:launcherbase>,
    <icbmclassic:reinforcedglass>,
    <icbmclassic:missile>,
    <icbmclassic:missile:1>,
    <icbmclassic:missile:3>,
    <icbmclassic:missile:4>,
    <icbmclassic:missile:5>,
    <icbmclassic:missile:6>,
    <icbmclassic:missile:7>,
    <icbmclassic:launcherscreen>,
    <icbmclassic:battery>,
    <icbmclassic:tracker>,
    <icbmclassic:defuser>,
    <icbmclassic:radargun>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}



