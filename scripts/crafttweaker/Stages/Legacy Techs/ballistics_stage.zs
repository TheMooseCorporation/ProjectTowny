import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

val atomicStageItems as IItemStack[] = [
    /*
    <icbmclassic:missile:17>,
    <icbmclassic:missile:20>,
    <icbmclassic:missile:16>,
    <icbmclassic:missile:18>,
    <icbmclassic:missile:19>,
    <icbmclassic:missile:15>,
    <icbmclassic:missile:21>,
    <icbmclassic:missile:22>,
    <icbmclassic:missile:23>,
    <icbmclassic:explosives:17>,
    <icbmclassic:explosives:20>,
    <icbmclassic:explosives:16>,
    <icbmclassic:explosives:18>,
    <icbmclassic:explosives:19>,
    <icbmclassic:explosives:15>,
    <icbmclassic:explosives:21>,
    <icbmclassic:bombcart:17>,
    <icbmclassic:bombcart:20>,
    <icbmclassic:bombcart:16>,
    <icbmclassic:bombcart:18>,
    <icbmclassic:bombcart:15>,
    <icbmclassic:bombcart:19>,
    <icbmclassic:bombcart:21>,
    */
    <icbmclassic:rocketlauncher>,
    <icbmclassic:cruiselauncher>,
    <icbmclassic:launcherscreen:2>,
    <icbmclassic:launcherframe:1>,
    <icbmclassic:launcherframe:2>,
    <icbmclassic:launcherbase:2>,
    <icbmclassic:circuit:2>,
    <icbmclassic:emptower>
];

for item in atomicStageItems {
    Recipes.setRecipeStage("ballistics_stage", item);
    ItemStages.addItemStage("ballistics_stage", item);
}
