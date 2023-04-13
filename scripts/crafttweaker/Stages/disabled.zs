import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Stage Comments should go here
*/

// Stage Name
val stage = "disabled";

val stageItems as IItemStack[] = [
    // Mekanism Cables
    <mekanism:transmitter>.withTag({tier: 0}),
    <mekanism:transmitter>.withTag({tier: 1}),
    <mekanism:transmitter>.withTag({tier: 2}),
    <mekanism:transmitter>.withTag({tier: 3}),
    <mekanism:transmitter:1>.withTag({tier: 0}),
    <mekanism:transmitter:1>.withTag({tier: 1}),
    <mekanism:transmitter:1>.withTag({tier: 2}),
    <mekanism:transmitter:1>.withTag({tier: 3}),
    <mekanism:transmitter:2>.withTag({tier: 0}),
    <mekanism:transmitter:2>.withTag({tier: 1}),
    <mekanism:transmitter:2>.withTag({tier: 2}),
    <mekanism:transmitter:2>.withTag({tier: 3}),
    <mekanism:transmitter:3>.withTag({tier: 0}),
    <mekanism:transmitter:3>.withTag({tier: 1}),
    <mekanism:transmitter:3>.withTag({tier: 2}),
    <mekanism:transmitter:3>.withTag({tier: 3}),
    <mekanism:transmitter:4>.withTag({tier: 0}),
    <mekanism:transmitter:5>.withTag({tier: 0}),
    <mekanism:transmitter:6>.withTag({tier: 0}),
    <mekanism:transmitter:6>.withTag({tier: 1}),
    <mekanism:transmitter:6>.withTag({tier: 2}),
    <mekanism:transmitter:6>.withTag({tier: 3}),
    <mekanism:basicblock:6>.withTag({tier: 4}),
    <mekanism:machineblock2:11>.withTag({tier: 4}),
    <mekanism:gastank>.withTag({tier: 4}),
    <mekanism:walkietalkie>,
    <mekanismgenerators:generator:6>,
    <mekanism:cardboardbox>,
    <mekanismgenerators:generator:7>,
    <mekanismgenerators:generator:8>,
    <mekanismgenerators:generator:9>,
    <mekanismgenerators:generator:10>,
    <mekanismgenerators:generator:11>,
    <mekanismgenerators:generator:12>,
    <mekanismgenerators:generator:13>,
    <mekanismgenerators:reactorglass:1>,
    <mekanism:energycube>.withTag({tier: 4})
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}