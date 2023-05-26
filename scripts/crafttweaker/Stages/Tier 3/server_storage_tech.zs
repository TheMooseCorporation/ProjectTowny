import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Server Storage:
    AE2 eletric boogaloo
*/

// Stage Name
val stage = "server_storage_tech";

val stageMods as string[] = [
    "extracells"
];

val stageItems as IItemStack[] = [
    // EnderIO ME Conduits
    <enderio:item_me_conduit>,
    <enderio:item_me_conduit:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

val nonStagedItems as IItemStack[] = [
    // AE2 items that bypass claim protections - Needs testing with states absolute protection level
    <appliedenergistics2:network_tool>,
    <appliedenergistics2:material:6>
];

var found = false;
for item in loadedMods["appliedenergistics2"].items {
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