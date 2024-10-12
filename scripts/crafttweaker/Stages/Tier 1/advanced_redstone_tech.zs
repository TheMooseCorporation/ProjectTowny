import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Unlocks ProjectRed Core
*/

// Stage Name
val stage = "advanced_redstone_tech";

val stageMods as string[] = [
    "projectred-core",
    "projectred-integration",
    "projectred-transmission"
];

val stageItems as IItemStack[] = [
    <rsgauges:switchlink_pearl>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}