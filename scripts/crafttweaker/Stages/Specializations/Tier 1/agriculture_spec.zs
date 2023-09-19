import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    This stage should contain all cooking items that make cooking significantly easier or more streamlined.  It should NOT remove basic cooking tools.
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
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}