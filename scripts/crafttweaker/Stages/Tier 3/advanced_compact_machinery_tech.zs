import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Tier 2 and 3 of Mekanism
*/

// Stage Name
val stage = "advanced_compact_machinery_tech";

val stageItems as IItemStack[] = [
    <mekanism:reinforcedalloy>,
    <mekanism:atomicalloy>,
    <mekanism:controlcircuit:1>,
    <mekanism:controlcircuit:2>,
    <mekanism:controlcircuit:3>,
    <mekanism:compresseddiamond>,
    <mekanism:compressedobsidian>,
    <mekanism:portableteleporter>,
    <mekanism:armoredjetpack>,
    <mekanism:flamethrower>,
    <mekanism:tierinstaller:1>,
    <mekanism:tierinstaller:2>,
    <mekanism:tierinstaller:3>,
    <mekanism:basicblock:2>,
    <mekanism:basicblock:6>.withTag({tier: 1}),
    <mekanism:basicblock:6>.withTag({tier: 2}),
    <mekanism:basicblock:6>.withTag({tier: 3}),
    <mekanism:basicblock:14>,
    <mekanism:basicblock:15>,
    <mekanism:basicblock2>,
    <mekanism:basicblock2:9>,
    <mekanism:machineblock:1>,
    <mekanism:machineblock:2>,
    <mekanism:machineblock:4>,
    <mekanism:machineblock:6>.withTag({recipeType: 0}),
    <mekanismgenerators:hohlraum>,
    <mekanism:machineblock:6>.withTag({recipeType: 1, mekData: {}}),
    <mekanism:machineblock:6>.withTag({recipeType: 2}),
    <mekanism:machineblock:6>.withTag({recipeType: 3}),
    <mekanism:machineblock:6>.withTag({recipeType: 4}),
    <mekanism:machineblock:6>.withTag({recipeType: 5}),
    <mekanism:machineblock:6>.withTag({recipeType: 6}),
    <mekanism:machineblock:6>.withTag({recipeType: 7}),
    <mekanism:machineblock:6>.withTag({recipeType: 8}),
    <mekanism:machineblock:7>.withTag({recipeType: 0}),
    <mekanism:machineblock:7>.withTag({recipeType: 1}),
    <mekanism:machineblock:7>.withTag({recipeType: 2}),
    <mekanism:machineblock:7>.withTag({recipeType: 3}),
    <mekanism:machineblock:7>.withTag({recipeType: 4}),
    <mekanism:machineblock:7>.withTag({recipeType: 5}),
    <mekanism:machineblock:7>.withTag({recipeType: 6}),
    <mekanism:machineblock:7>.withTag({recipeType: 7}),
    <mekanism:machineblock:7>.withTag({recipeType: 8}),
    <mekanism:machineblock:9>,
    <mekanism:machineblock2:3>,
    <mekanism:machineblock2:6>.withTag({mekData: {}}),
    <mekanism:machineblock2:8>.withTag({mekData: {}}),
    <mekanism:machineblock2:11>.withTag({tier: 2}),
    <mekanism:machineblock2:11>.withTag({tier: 3}),
    <mekanism:machineblock2:13>,
    <mekanism:machineblock2:14>,
    <mekanism:machineblock2:15>,
    <mekanism:robit>,
    <mekanism:atomicdisassembler>,
    <mekanism:transmitter:6>.withTag({tier: 2}),
    <mekanism:transmitter:6>.withTag({tier: 3}),
    <mekanism:gastank>.withTag({tier: 2}),
    <mekanism:gastank>.withTag({tier: 3}),
    <mekanism:nugget>,
    <mekanism:ingot>,
    <mekanism:otherdust:5>,
    <mekanism:basicblock2:5>,
    <mekanism:basicblock2:6>,
    <mekanism:basicblock2:7>,
    <mekanism:basicblock2:8>
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}