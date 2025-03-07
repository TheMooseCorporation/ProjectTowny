import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;
/**
    Oil
*/

// Stage Name
val stage = "oil_processing_tech";
val name = "Oil Processing";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1:7>,
    <immersiveengineering:coresample>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
    for item in loadedMods[mod].items {
        item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
    }
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
    item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
}

val nonStagedItems as IItemStack[] = [
    <immersivepetroleum:schematic>
];

var found = false;
for item in loadedMods["immersivepetroleum"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage(stage, item);
        ItemStages.addItemStage(stage, item);
        item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
    }
    found = false;
}

//Locks Multiblocks
IEMultiBlockStages.addStage(stage, "IP:DistillationTower", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IP:Pumpjack", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IP:DieselGenerator", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:GasTurbine", "Requires " + stage);