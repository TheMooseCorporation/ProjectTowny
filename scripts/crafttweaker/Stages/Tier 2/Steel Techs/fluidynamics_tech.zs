import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;

/**
    Fluid based machines
*/

// Stage Name
val stage = "fluidynamics_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:wooden_device0:7>,
    <immersiveengineering:metal_device1:6>,
    <immersiveengineering:metal_device0:4>,
    <immersiveengineering:metal_device0:6>,
    <immersiveengineering:chemthrower>,
    <immersiveengineering:jerrycan>,
    <immersiveengineering:chemthrower>,
    <immersiveengineering:toolupgrade:3>,
    <immersiveengineering:toolupgrade:7>,
    <immersiveengineering:toolupgrade:13>,
    <immersiveengineering:metal_device1:10>,
    <immersivetech:metal_barrel:1>,
    <immersivetech:metal_barrel:2>,
    <immersivetech:metal_trash:1>,
    <immersivetech:valve>,
    <engineersdecor:straight_pipe_valve>,
    <immersiveengineering:metal_device0:5>,
    <engineersdecor:straight_pipe_valve>,
    <engineersdecor:straight_pipe_valve_redstone>,
    <engineersdecor:straight_pipe_valve_redstone_analog>,
    <engineersdecor:small_fluid_funnel>,
    <engineersdecor:passive_fluid_accumulator>,
    <engineersdecor:small_milking_machine>
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
IEMultiBlockStages.addStage(stage, "IE:SheetmetalTank", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:BottlingMachine", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:Mixer", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:HeatExchanger", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:SteelSheetmetalTank", "Requires " + stage);