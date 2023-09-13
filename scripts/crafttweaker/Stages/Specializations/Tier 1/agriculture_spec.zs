import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Agriculture Specilization:
    Idk farm and stuff
*/

// Stage Name
val stage = "agriculture_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <harvestcraft:market>,
    <sereneseasons:greenhouse_glass>,
    <sereneseasons:season_sensor_spring>,
    <sereneseasons:season_sensor_summer>,
    <sereneseasons:season_sensor_autumn>,
    <sereneseasons:season_sensor_winter>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}