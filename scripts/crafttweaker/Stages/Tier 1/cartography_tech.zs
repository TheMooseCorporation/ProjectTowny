import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Stage Comments should go here
*/

// Stage Name
val stage = "cartography_tech";

val stageItems as IItemStack[] = [
    
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}