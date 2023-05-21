import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Military Tech:
    Unlocks the beginning of techguns and the immersive engineering revolver with its related ammunition
*/

// Stage Name
val stage = "basic_military_tech";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    // Immersive Engineering Revolver and related items
    <immersiveengineering:metal_decoration2:5>,
    <immersiveengineering:shader>,
    <immersiveengineering:shader_bag>,
    <immersiveengineering:revolver>,
    <immersiveengineering:speedloader>,
    <immersiveengineering:bullet>,
    <immersiveengineering:bullet:2>,
    <immersiveengineering:bullet:1>,
    <immersiveengineering:toolupgrade:4>,
    <immersiveengineering:toolupgrade:5>,
    <immersiveengineering:material:13>,
    <immersiveengineering:material:14>,
    <immersiveengineering:material:15>,
    <immersiveengineering:material:16>,
    <immersiveengineering:wooden_device0:4>,
    // Techguns related items
    <techguns:itemshared:1>,
    <techguns:itemshared:2>,
    <techguns:itemshared:3>,
    <techguns:itemshared:9>,
    <techguns:itemshared:33>,
    <techguns:itemshared:38>,
    <techguns:t1_combat_helmet>,
    <techguns:t1_combat_chestplate>,
    <techguns:t1_combat_leggings>,
    <techguns:t1_combat_boots>,
    <techguns:itemshared:57>,
    <techguns:stielgranate>,
    // Basic ICBM weapons
    <icbmclassic:spikes>,
    <icbmclassic:spikes:1>,
    <icbmclassic:spikes:2>,
    <icbmclassic:glasspressureplate>,
    <icbmclassic:glassbutton>
];

val techGuns as IItemStack[] = [
    <techguns:sawedoff>,
    <techguns:revolver>,
    <techguns:goldenrevolver>,
    <techguns:thompson>,
    <techguns:boltaction>
];

val techGunRecipes as string[] = [
    "techguns:sawedoff",
    "techguns:revolver",
    "techguns:thompson_alt",
    "techguns:boltaction"
];

for item in techGuns{
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage(stage, recipe);
}


for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}