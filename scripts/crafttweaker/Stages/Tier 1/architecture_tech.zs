import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    This stage should contain all non-consequential building items
*/

// Stage Name
val stage = "architecture_tech";

val stageMods as string[] = [
    "architecturecraft",
    "bibliocraft",
    "chisel",
    "chiselsandbits",
    "littletiles",
    "cfm",
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