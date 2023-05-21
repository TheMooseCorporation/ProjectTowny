import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.multiblockstages.IEMultiBlockStages;
import crafttweaker.item.IItemStack;

/**
    Unlocks Arc biodiesel making
*/

// Stage Name
val stage = "biodiesel_tech";

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

IEMultiBlockStages.addStage(stage, "IE:Refinery", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:Fermenter", "Requires " + stage);