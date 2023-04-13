import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
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
    <adpother:diamond_respirator>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}