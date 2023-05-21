import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.multiblockstages.IEMultiBlockStages;
import crafttweaker.item.IItemStack;

/**
    Unlocks Arc Smeltry-ing
*/

// Stage Name
val stage = "arc_smelting_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:graphite_electrode>,
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

IEMultiBlockStages.addStage(stage, "IE:ArcFurnace", "Requires " + stage);