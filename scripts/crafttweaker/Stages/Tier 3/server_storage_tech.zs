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
    "appliedenergistics2",
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