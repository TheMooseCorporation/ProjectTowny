import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Wireless Technology:
    Scannable and anything else that we think should be considered wireless
*/

// What if we put OpenComputer internet cards here?

// Stage Name
val stage = "wireless_tech";

val stageMods as string[] = [
    "scannable"
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



