import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.TinkerStages;

/**
    This gamestage should add tinkers' construct tools pre-smeltery, notably unlocks the part builder, stencil table, and tool station
*/

// Stage Name
val stage = "basic_tools_tech";

val stageMods as string[] = [
    "tconstruct",
    "toolbelt",
    "ironchest"
];

val stageItems as IItemStack[] = [
    <rsgauges:contactmat_rustic2>,
    <rsgauges:contactmat_rustic3>,
    <rsgauges:trapdoorswitch_rustic1>,
    <rsgauges:trapdoorswitch_rustic2>,
    <rsgauges:trapdoorswitch_rustic3>,
    <rsgauges:gauge_rustic2>,
    <rsgauges:indicator_rustic_flag>,
    <rsgauges:bistableswitch_rustic1>,
    <rsgauges:bistableswitch_rustic2>,
    <rsgauges:bistableswitch_rustic3>,
    <rsgauges:bistableswitch_rustic7>,
    <rsgauges:pulseswitch_rustic1>,
    <rsgauges:pulseswitch_rustic2>,
    <rsgauges:pulseswitch_rustic3>,
    <rsgauges:pulseswitch_rustic7>,
    <rsgauges:contactmat_rustic1>,
    <rsgauges:arrowtarget>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:5>,

];


// All of the alloys that we don't want to be formable in the smeltry
val disabledAlloys as ILiquidStack[] = [
    <liquid:steel>,
    <liquid:constantan>,
    <liquid:enderium>,
    <liquid:invar>,
    <liquid:signalum>,
    <liquid:lumium>,
    <liquid:pigiron>,
    <liquid:knightslime>,
    <liquid:bronze>,
    <liquid:electrum>,
    <liquid:energetic_alloy>,
    <liquid:vibrant_alloy>,
    <liquid:conductive_iron>,
    <liquid:pulsating_iron>,
    <liquid:dark_steel>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for alloy in disabledAlloys {
    mods.tconstruct.Alloy.removeRecipe(alloy);
}

//These were all in the legacy file and looked too important to not have merged over
TinkerStages.addGeneralCraftingStage(stage);
TinkerStages.addGeneralPartBuildingStage(stage);

TinkerStages.addToolTypeStage("disabled", "tconstruct:hammer");
TinkerStages.addToolTypeStage("disabled", "tconstruct:shuriken");
TinkerStages.addModifierStage("disabled", "luck");
TinkerStages.addModifierStage("disabled", "sharp");

// TODO Move to proper tech files
recipes.remove(<tconstruct:materials:13>);
recipes.remove(<tconstruct:materials:12>);
recipes.addShaped(<tconstruct:materials:13>, [[null, <minecraft:piston>, null],[<minecraft:dye:4>, <tconstruct:ingots:2>, <minecraft:dye:4>], [null, <minecraft:piston>, null]]);
recipes.addShaped(<tconstruct:materials:12>, [[null, <minecraft:dye:4>, null],[<minecraft:piston>, <tconstruct:ingots:2>, <minecraft:piston>], [null, <minecraft:dye:4>, null]]);

TinkerStages.addMaterialStage("chemical_engineering_spec", "pigiron");
TinkerStages.addMaterialStage("asteroid_mining_tech", "cobalt");
TinkerStages.addMaterialStage("warp_tech", "ardite");
TinkerStages.addMaterialStage("warp_tech", "ardite");
