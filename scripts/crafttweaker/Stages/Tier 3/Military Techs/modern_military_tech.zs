import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    All basic mapping tools should be locked behind this stage
*/

// Stage Name
val stage = "modern_military_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [

];

val techGuns as IItemStack[] = [
    <techguns:m4_infiltrator>,
    <techguns:grenadelauncher>,
    <techguns:minigun>,
    <techguns:mac10>,
    <techguns:aug>,
    <techguns:as50>,
    <techguns:vector>,
    <techguns:scar>,
    <techguns:miningdrill>,
    <techguns:lmg>,
    <techguns:nightvisiongoggles>
];

val techGunRecipes as string[] = [
    "techguns:m4_infiltrator_alt",
    "techguns:grenadelauncher",
    "techguns:minigun_alt",
    "techguns:mac10_alt",
    "techguns:aug_alt",
    "techguns:as50_alt",
    "techguns:vector_alt",
    "techguns:scar_alt",
    "techguns:miningdrill_alt",
    "techguns:lmg_alt",
    "techguns:nightvisiongoggles_alt"
    
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Techguns weapon staging

for item in techGuns {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage(stage, recipe);
}