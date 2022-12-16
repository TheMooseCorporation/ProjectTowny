import mods.ItemStages;
import mods.recipestages.Recipes;

Recipes.setRecipeStageByMod("teleporter_stage", "portality");
Recipes.setRecipeStageByMod("teleporter_stage", "enderio");
Recipes.setRecipeStageByMod("teleporter_stage", "enderstorage");

ItemStages.stageModItems("teleporter_stage", "portality");
ItemStages.stageModItems("teleporter_stage", "enderio");
ItemStages.stageModItems("teleporter_stage", "enderstorage");

/*
Hopper recipes are messed with because enderIO has its open hopper recipe, this removes the hopper recipes from minecraft and enderIO and then adds them back
so that they won't be stage locked
*/
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <ore:chest>, <minecraft:iron_ingot>], [null, <minecraft:iron_ingot>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <ore:logWood>, <minecraft:iron_ingot>], [null, <minecraft:iron_ingot>, null]]);

recipes.remove(<mekanism:teleportationcore>);
Recipes.addShaped("teleporter_stage", <mekanism:teleportationcore>, [[<minecraft:dye:4>, <mekanism:atomicalloy>, <minecraft:dye:4>],[<minecraft:gold_ingot>, <portality:controller>, <minecraft:gold_ingot>], [<minecraft:dye:4>, <mekanism:atomicalloy>, <minecraft:dye:4>]]);
