import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Server Storage:
    AE2 eletric boogaloo
*/

// Stage Name
val stage = "computers_tech";

val stageMods as string[] = [

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