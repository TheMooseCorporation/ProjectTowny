import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Mechanics:
    Unlocks Immersive Vehicles and Itemducts
*/

// Stage Name
val stage = "mechanics_tech";

val stageMods as string[] = [
    "mts",
    "trafficcontrol"
];

val stageItems as IItemStack[] = [
    <enderio:item_item_conduit>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

