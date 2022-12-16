import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

Recipes.setRecipeStageByMod("architecture_stage", "chisel");
Recipes.setRecipeStageByMod("architecture_stage", "chiselsandbits");
Recipes.setRecipeStageByMod("architecture_stage", "architecturecraft");
Recipes.setRecipeStageByMod("architecture_stage", "cfm");
Recipes.setRecipeStageByMod("architecture_stage", "bibliocraft");
Recipes.setRecipeStageByMod("architecture_stage", "fairylights");
Recipes.setRecipeStageByMod("architecture_stage", "littletiles");

ItemStages.stageModItems("architecture_stage", "chisel");
ItemStages.stageModItems("architecture_stage", "chiselsandbits");
ItemStages.stageModItems("architecture_stage", "architecturecraft");
ItemStages.stageModItems("architecture_stage", "cfm");
ItemStages.stageModItems("architecture_stage", "bibliocraft");
ItemStages.stageModItems("architecture_stage", "fairylights");
ItemStages.stageModItems("architecture_stage", "littletiles");

val architectureStageItems as IItemStack[] = [
    <rsgauges:bistableswitch_oldfancy1>,
    <rsgauges:bistableswitch_oldfancy2>,
    <rsgauges:pulseswitch_oldfancy1>,
    <rsgauges:pulseswitch_oldfancy2>,
    <rsgauges:pulseswitch_oldfancy4>
];

for item in architectureStageItems{
    Recipes.setRecipeStage("architecture_stage", item);
    ItemStages.addItemStage("architecture_stage", item);
}