import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;

/**
    Unlocks the Solar Tower, Steam Turbine, and Alternator.
*/

// Stage Name
val stage = "steam_energy_tech";

val stageMods as string[] = [
    "betterboilers"
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

//locks Multiblocks
IEMultiBlockStages.addStage(stage, "IT:Boiler", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:Distiller", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:SolarTower", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:SolarReflector", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:SteamTurbine", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:CoolingTower", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:Radiator", "Requires " + stage);