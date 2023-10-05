import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Electrical Distribution Specilization:
    For towns focused on producing electricity
*/

// Stage Name
val stage = "electrical_distribution_spec";

val stageMods as string[] = [
    "alternatingflux"
];

val stageItems as IItemStack[] = [
    <immersiveengineering:metal_device1:4>,
    <immersiveengineering:faraday_suit_head>,
    <immersiveengineering:faraday_suit_chest>,
    <immersiveengineering:faraday_suit_legs>,
    <immersiveengineering:faraday_suit_feet>,
    <immersiveengineering:metal_device1:8>,
    <immersiveengineering:railgun>,
    <immersiveengineering:toolupgrade:8>,
    <immersiveengineering:toolupgrade:9>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Spec Tech

/**
    Electrical Distribution Specilization Tech:
    Unlocks the unbreakable graphite rod
*/

val spec_tech_stage = "electrical_distribution_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:19>, <immersiveengineering:material:19>, <immersiveengineering:material:19>],
    [<immersiveengineering:material:19>, <immersiveengineering:material:19>, <immersiveengineering:material:19>],
    [<immersiveengineering:material:19>, <immersiveengineering:material:19>, <immersiveengineering:material:19>]])
  .addTool(<artisanworktables:artisans_hammer_iron>, 50)
  .addRequirement(GameStages.allOf(["electrical_distribution_tech_spec"]))
  .addOutput(<immersiveengineering:graphite_electrode>.withTag({Unbreakable:1}))
  .create();