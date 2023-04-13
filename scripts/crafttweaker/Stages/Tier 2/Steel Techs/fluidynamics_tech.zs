import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

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
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}