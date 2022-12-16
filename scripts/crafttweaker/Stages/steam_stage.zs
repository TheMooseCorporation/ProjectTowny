import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

Recipes.setRecipeStageByMod("steam_stage", "betterboilers");
//Recipes.setRecipeStageByMod("steam_stage", "base");
//Recipes.setRecipeStageByMod("steam_stage", "steamagerevolution");

ItemStages.stageModItems("steam_stage", "betterboilers");
//ItemStages.stageModItems("steam_stage", "base");
//ItemStages.stageModItems("steam_stage", "steamagerevolution");

val stageItems as IItemStack[] = [
    <techguns:handcannon>,
    <techguns:itemshared>,
    <techguns:itemshared:37>,
    <techguns:itemshared:42>,
    <patchouli:guide_book>.withTag({"patchouli:book": "techguns:techguns_manual"}),
    <davincisvessels:engine>,
    <davincisvessels:gauge>,
    <davincisvessels:gauge:1>
];

for item in stageItems{
    Recipes.setRecipeStage("steam_stage", item);
    ItemStages.addItemStage("steam_stage", item);
}

Recipes.setRecipeStage("steam_stage", "techguns:handcannon");

//recipes.remove(<steamagerevolution:grinder_frame>);

//Recipes.addShaped("steam_stage", <steamagerevolution:grinder_frame> * 10, [[<ore:plateBrass>, <minecraft:brick_block>, <ore:plateBrass>],[<minecraft:brick_block>, <ore:plateBrass>, <minecraft:brick_block>], [<ore:plateBrass>, <minecraft:brick_block>, <ore:plateBrass>]]);





