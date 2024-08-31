import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Scientific Theory:
    Unlocks the Modern Research Lab
*/

// Stage Name
val stage = "scientific_theory_tech";

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

