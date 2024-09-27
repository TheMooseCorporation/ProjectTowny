import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.DieselHandler;

/**
    Industiral Manufacturing Specilization:
    For towns focused on producing bulk materials. Unlocks faster blast furnaces/better steel manufacturing methods
*/

// Stage Name
val stage = "industrial_manufacturing_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}


// x2 Steel Recipe
ItemStages.addItemStage(stage, <contenttweaker:limeslag_compound>); // This is specifically only handleable by this spec to prevent people from selling the limelsag compound instead of steel
Recipes.addShapeless(stage, <contenttweaker:limeslag_compound> * 4, [<immersiveengineering:material:7>,<contenttweaker:limestone_dust>,<contenttweaker:limestone_dust>,<immersiveengineering:material:7>]);
Crusher.addRecipe(<contenttweaker:limestone_dust> * 2, <ore:stoneLimestone>, 256);
Mixer.addRecipe(<liquid:slag_slurry> * 250, <liquid:water> * 250, [<contenttweaker:limeslag_compound>], 1024);
BottlingMachine.addRecipe(<contenttweaker:treated_iron>, <minecraft:iron_ingot>, <liquid:slag_slurry> * 250);
BlastFurnace.addRecipe(<immersiveengineering:metal:8> * 2, <contenttweaker:treated_iron>, 900);

// Spec Tech

/**
    Industiral Manufacturing Specilization Tech:
    Unlocks the more efficient fuel recipe
*/

val spec_tech_stage = "industrial_manufacturing_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    <projecttowny:air_intake>,
    <projecttowny:fuel_aerator>
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// This value might need to be tweaked around a bit
DieselHandler.addFuel(<liquid:aerated_diesel>, 500);

// Fuel Aeration Multiblock Controllers
recipes.addShaped(<projecttowny:fuel_aerator>, [[<ore:blockSheetmetalCopper>, <ore:blockSheetmetalCopper>, <ore:blockSheetmetalCopper>],[<ore:blockSheetmetalCopper>, <immersiveengineering:metal_device0:5>, <ore:blockSheetmetalCopper>], [<immersiveengineering:material:9>, <ore:blockSheetmetalCopper>, <immersiveengineering:material:9>]]);
recipes.addShaped(<projecttowny:air_intake>, [[<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>],[<ore:barsIron>, <immersiveengineering:material:9>, <ore:barsIron>], [<ore:plateSteel>, <ore:barsIron>, <ore:plateSteel>]]);
