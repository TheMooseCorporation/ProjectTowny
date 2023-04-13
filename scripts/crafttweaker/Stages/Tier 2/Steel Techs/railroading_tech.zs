import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Adds trains
*/

// Stage Name
val stage = "railroading_tech";

val stageMods as string[] = [
    "immersiverailroading"
];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}