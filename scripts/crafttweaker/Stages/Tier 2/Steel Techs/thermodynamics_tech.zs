import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;

/**
    All technologies that somehow involve heating
*/

// Stage Name
val stage = "thermodynamics_tech";
val name = "Thermodynamics";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1:1>,
    <engineersdecor:small_electrical_furnace>,
    <engineersdecor:small_lab_furnace>,
    <engineersdecor:small_waste_incinerator>,
    <engineersdecor:small_mineral_smelter>
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

//Locks Multiblocks
IEMultiBlockStages.addStage(stage, "IT:meltingCrucible", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:SolarMelter", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "QI:CokeOvenBattery", "Requires " + stage);
