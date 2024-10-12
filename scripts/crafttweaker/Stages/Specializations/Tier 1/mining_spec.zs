import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Mining Specilization:
    For towns focused on mining. Unlocks explosive devices made for mining.
    Rock and Stone!
*/

// Stage Name
val stage = "mining_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:wooden_device0:4>,
    <techguns:t1_miner_helmet>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

recipes.remove(<immersiveengineering:wooden_device0:4>);
recipes.addShaped(<immersiveengineering:wooden_device0:4> * 5, [[null, <ore:string>, null],[<minecraft:gunpowder>, <ore:chest>, <minecraft:gunpowder>], [<minecraft:gunpowder>, <minecraft:gunpowder>, <minecraft:gunpowder>]]);

// Spec Tech


/**
    Mining Specilization Tech:
    Unlocks special tinkers modifiers
*/

val spec_tech_stage = "mining_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    <tconstruct:materials:14>,
    <tconstruct:materials:15>,
    <tconstruct:materials:16>
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("basic_tools_tech", <immersiveengineering:wooden_device0:4>);
ItemStages.addItemStage("basic_tools_tech", <techguns:t1_miner_helmet>);
ItemStages.addItemStage("blacksmithing_tech", <tconstruct:materials:14>);
ItemStages.addItemStage("blacksmithing_tech", <tconstruct:materials:15>);
ItemStages.addItemStage("blacksmithing_tech", <tconstruct:materials:16>);
