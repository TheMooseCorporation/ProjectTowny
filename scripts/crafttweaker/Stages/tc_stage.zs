import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.TinkerStages;
import crafttweaker.item.IItemStack;

Recipes.setRecipeStageByMod("tc_stage", "tconstruct");
Recipes.setRecipeStageByMod("tc_stage", "toolbelt");

ItemStages.stageModItems("tc_stage", "tconstruct");
ItemStages.stageModItems("tc_stage", "toolbelt");

TinkerStages.addGeneralCraftingStage("tc_stage");
TinkerStages.addGeneralPartReplacingStage("tc_stage");
TinkerStages.addGeneralPartBuildingStage("tc_stage");
TinkerStages.addGeneralModifierStage("tc_stage");

TinkerStages.addToolTypeStage("disabled", "tconstruct:hammer");
TinkerStages.addToolTypeStage("oil_stage", "tconstruct:lumberaxe");
TinkerStages.addToolTypeStage("disabled", "tconstruct:shuriken");

mods.tconstruct.Alloy.removeRecipe(<liquid:steel>);

recipes.remove(<tconstruct:materials:13>);
recipes.remove(<tconstruct:materials:12>);
recipes.addShaped(<tconstruct:materials:13>, [[null, <minecraft:piston>, null],[<minecraft:dye:4>, <tconstruct:ingots:2>, <minecraft:dye:4>], [null, <minecraft:piston>, null]]);
recipes.addShaped(<tconstruct:materials:12>, [[null, <minecraft:dye:4>, null],[<minecraft:piston>, <tconstruct:ingots:2>, <minecraft:piston>], [null, <minecraft:dye:4>, null]]);

val tcStageItems as IItemStack[] = [
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
    <rsgauges:arrowtarget>
];

for item in tcStageItems{
    Recipes.setRecipeStage("tc_stage", item);
    ItemStages.addItemStage("tc_stage", item);
}