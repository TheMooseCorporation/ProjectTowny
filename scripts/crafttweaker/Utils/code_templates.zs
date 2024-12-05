#norun

/* 
    Script Priority Standard:
    0 - First Loaded
*/

/*

[New Stage Template]

import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
*/

/**
    [Technology Name]:
    [Technology Description]
*/

/*

// Stage Name
val stage = "[stage_name]_tech";

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

// Recipe changes go below

*/

/*

[Code to add all items from a mod, except the ones found in nonStagedItems]

var found = false;
for item in loadedMods["modid"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage(stage, item);
        ItemStages.addItemStage(stage, item);
    }
    found = false;
}
*/