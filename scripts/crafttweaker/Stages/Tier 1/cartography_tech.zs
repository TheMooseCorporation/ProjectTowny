import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    All basic mapping tools should be locked behind this stage
*/

// Stage Name
val stage = "cartography_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <antiqueatlas:empty_antique_atlas>,
    <antiqueatlas:antique_atlas>,
    <naturescompass:naturescompass>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}