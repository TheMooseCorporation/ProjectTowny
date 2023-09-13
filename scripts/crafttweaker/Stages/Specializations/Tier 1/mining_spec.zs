import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Mining Specilization:
    For towns focused on mining
*/

// Stage Name
val stage = "mining_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <geolosys:pro_pick>,
    <prospectors:prospector_med>,
    <prospectors:prospector_high>,
    <prospectors:prospector_best>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}