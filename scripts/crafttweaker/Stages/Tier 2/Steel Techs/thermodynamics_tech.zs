import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    All technologies that somehow involve heating
*/

// Stage Name
val stage = "thermodynamics_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1:1>,
    <engineersdecor:small_electrical_furnace>,
    <engineersdecor:small_lab_furnace>,
    <engineersdecor:small_waste_incinerator>,
    <engineersdecor:small_mineral_smelter>,
    <nuclearcraft:melter>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}