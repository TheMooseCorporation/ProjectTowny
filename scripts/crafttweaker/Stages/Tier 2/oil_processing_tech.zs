import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;
/**
    Oil
*/

// Stage Name
val stage = "oil_processing_tech";

val stageMods as string[] = [
    "immersivepetroleum",
    "immersivetech"
];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1:7>,
    <immersiveengineering:coresample>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}


//Locks Multiblocks
IEMultiBlockStages.addStage(stage, "IP:DistillationTower", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IP:Pumpjack", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IP:DieselGenerator", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:GasTurbine", "Requires " + stage);