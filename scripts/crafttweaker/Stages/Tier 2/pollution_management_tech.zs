import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Pollution Management:
    More advanced ways to deal with pollution
*/

// Stage Name
val stage = "pollution_management_tech";

val stageMods as string[] = [
    "pollutantpump"
];

val stageItems as IItemStack[] = [
    <adpother:iron_vacuum_bag>,
    <adpother:iron_vacuum_tube>,
    <adpother:iron_respirator>,
    <adpother:gold_vacuum_bag>,
    <adpother:gold_vacuum_tube>,
    <adpother:gold_respirator>,
    <adpother:diamond_vacuum_bag>,
    <adpother:diamond_vacuum_tube>,
    <adpother:diamond_respirator>,
    <infilter:infilter_block_infilter>,
    <adpother:iron_filter>,
    <adpother:gold_filter>,
    <adpother:diamond_filter>,
    <adpother:aerometer>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Alternate pollutant pump recipes
recipes.remove(<pollutantpump:pipe>);
recipes.remove(<pollutantpump:pump>);

recipes.addShaped(<pollutantpump:pipe> * 8, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(<pollutantpump:pump>, [[<immersiveengineering:metal:8>, <minecraft:diamond>, <immersiveengineering:metal:8>], [<immersiveengineering:material:8>, <minecraft:redstone_block>, <immersiveengineering:material:8>], [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>]]);