// Add later HOP graphite dust/ingot, Nitrate/sulfur dust,
import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;


/**
    Funky locomotion
*/

// Stage Name
val stage = "logistics_tech";

val stageMods as string[] = [
    "funkylocomotion"
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

