import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Intercontiental Ballistics:
    Tier 2 ICBMs disabled due to bypassing claims, more details in manhattan_project_tech
*/

// Stage Name
val stage = "intercontinental_ballistics_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    /*
    <icbmclassic:missile:8>,
    <icbmclassic:missile:9>,
    <icbmclassic:missile:10>,
    <icbmclassic:missile:11>,
    <icbmclassic:missile:12>,
    <icbmclassic:missile:13>,
    <icbmclassic:explosives:8>,
    <icbmclassic:explosives:9>,
    <icbmclassic:explosives:10>,
    <icbmclassic:explosives:11>,
    <icbmclassic:explosives:12>,
    <icbmclassic:explosives:13>,
    <icbmclassic:explosives:14>,
    <icbmclassic:bombcart:10>,
    <icbmclassic:bombcart:8>,
    <icbmclassic:bombcart:11>,
    <icbmclassic:bombcart:13>,
    <icbmclassic:bombcart:9>,
    */
    <icbmclassic:launcherscreen:1>,
    <icbmclassic:launcherbase:1>,
    <icbmclassic:radarstation>,
    <icbmclassic:remotedetonator>,
    <icbmclassic:laserdetonator>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

