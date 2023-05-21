import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

recipes.remove(<mekanismgenerators:generator>);

Recipes.setRecipeStageByMod("combustion_stage", "mts");
Recipes.setRecipeStageByMod("combustion_stage", "trafficcontrol");

ItemStages.stageModItems("combustion_stage", "mts");
ItemStages.stageModItems("combustion_stage", "trafficcontrol");

Recipes.addShaped("combustion_stage", <mekanismgenerators:generator>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<ore:plankWood>, <ore:ingotCopper>, <ore:plankWood>], [<ore:ingotCopper>, <minecraft:furnace>, <ore:ingotCopper>]]);
ItemStages.addItemStage("combustion_stage", <mekanismgenerators:generator>);

recipes.remove(<pollutantpump:pipe>);
recipes.remove(<pollutantpump:pump>);

Recipes.addShaped("combustion_stage", <photoptics:binoculars_gold>, [[<minecraft:glass_pane>, null, <minecraft:glass_pane>],[<ore:ingotGold>, <ore:ingotSteel>, <ore:ingotGold>], [<minecraft:glass_pane>, null, <minecraft:glass_pane>]]);
Recipes.addShaped("combustion_stage", <pollutantpump:pipe> * 8, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
Recipes.addShaped("combustion_stage", <pollutantpump:pump>, [[<ore:ingotSteel>, <minecraft:diamond>, <ore:ingotSteel>],[<minecraft:stone>, <minecraft:redstone_block>, <minecraft:stone>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

val techGunItems as IItemStack[] = [
    <techguns:steam_helmet>,
    <techguns:steam_chestplate>,
    <techguns:steam_leggings>,
    <techguns:steam_boots>,
    <techguns:itemshared:45>,
    <photoptics:handheldtelescope_gold>
];

for item in techGunItems{
    Recipes.setRecipeStage("combustion_stage", item);
    ItemStages.addItemStage("combustion_stage", item);
}