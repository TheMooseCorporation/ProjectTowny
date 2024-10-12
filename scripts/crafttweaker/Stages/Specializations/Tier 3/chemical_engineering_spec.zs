import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Chemical Engineering Specilization:
    For towns focused on chemistry
*/

// Stage Name
val stage = "chemical_engineering_spec";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <projecttowny:compact_chemical_reactor>,
    <enderio:item_liquid_conduit:1>,
    <enderio:item_liquid_conduit:2>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>],
    [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>, <engineersdecor:panzerglass_block>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>],
    [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>, <opencomputers:component:2>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>],
    [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>, <engineersdecor:panzerglass_block>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>],
    [<immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:metal_decoration0:2>]])
  .addOutput(<projecttowny:compact_chemical_reactor>)
  .addRequirement(GameStages.allOf([stage, "chemical_synthesis_tech"]))
  .create();

// Spec Tech

/**
    Chemical Engineering Specilization Tech:
    I have no idea what to put here?
*/

val spec_tech_stage = "chemical_engineering_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("chemical_synthesis_tech", <projecttowny:compact_chemical_reactor>);
ItemStages.addItemStage("fluidynamics_tech", <enderio:item_liquid_conduit:1>);
ItemStages.addItemStage("fluidynamics_tech", <enderio:item_liquid_conduit:2>);

// Pyrotheum and Petrotheum Dust
recipes.remove(<thermalfoundation:material:1024>);
recipes.remove(<thermalfoundation:material:1027>);