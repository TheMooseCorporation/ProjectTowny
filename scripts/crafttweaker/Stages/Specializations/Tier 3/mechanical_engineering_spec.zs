import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Mechanical Engineering Specilization:
    For towns focused on mechanics
*/

// Stage Name
val stage = "mechanical_engineering_spec";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
  <engineersdecor:factory_placer>,
  <engineersdecor:small_block_breaker>,
  <engineersdecor:small_tree_cutter>,
  <engineersdecor:small_milking_machine>
];

for mod in stageMods {
  Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
  Recipes.setRecipeStage(stage, item);
}

// Spec Tech

/**
  Mechanical Engineering Specilization Tech:
  Unlocks cobblestone generators and infinite pollution filters
*/

val spec_tech_stage = "mechanical_engineering_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
  <nuclearcraft:cobblestone_generator>,
  <nuclearcraft:cobblestone_generator_compact>,
  <nuclearcraft:cobblestone_generator_dense>,
  <contenttweaker:air_scrubber>
];

for item in spec_tech_stageItems {
  Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("replaceable_parts_tech", <engineersdecor:factory_placer>);
ItemStages.addItemStage("replaceable_parts_tech", <engineersdecor:small_block_breaker>);
ItemStages.addItemStage("replaceable_parts_tech", <engineersdecor:small_tree_cutter>);
ItemStages.addItemStage("replaceable_parts_tech", <engineersdecor:small_milking_machine>);
ItemStages.addItemStage("replaceable_parts_tech", <nuclearcraft:cobblestone_generator>);
ItemStages.addItemStage("replaceable_parts_tech", <nuclearcraft:cobblestone_generator_compact>);
ItemStages.addItemStage("replaceable_parts_tech", <nuclearcraft:cobblestone_generator_dense>);
ItemStages.addItemStage("replaceable_parts_tech", <contenttweaker:air_scrubber>);

// Engineer's Decor Machine Recipes
recipes.remove(<engineersdecor:small_milking_machine>);
recipes.remove(<engineersdecor:small_tree_cutter>);
recipes.remove(<engineersdecor:factory_placer>);
recipes.remove(<engineersdecor:small_block_breaker>);
recipes.remove(<nuclearcraft:cobblestone_generator>);

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<immersiveengineering:material:9>, <minecraft:dispenser>, <immersiveengineering:material:9>],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<engineersdecor:factory_placer>)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:gearSteel>, <ore:plateSteel>, <ore:gearSteel>],
    [<ore:plateSteel>, <minecraft:iron_pickaxe>, <minecraft:observer>],
    [<immersiveengineering:material:9>, <minecraft:redstone_block>, <immersiveengineering:material:9>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<engineersdecor:small_block_breaker>)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:gearSteel>, <ore:plateSteel>, <ore:gearSteel>],
    [<ore:plateSteel>, <minecraft:iron_axe>, <minecraft:observer>],
    [<immersiveengineering:material:9>, <minecraft:redstone_block>, <immersiveengineering:material:9>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<engineersdecor:small_tree_cutter>)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:gearSteel>, <ore:plateSteel>, <ore:gearSteel>],
    [<ore:plateSteel>, <minecraft:milk_bucket>, <minecraft:observer>],
    [<immersiveengineering:material:9>, <immersiveengineering:metal_device0:4>, <immersiveengineering:material:9>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<engineersdecor:small_milking_machine>)
  .addRequirement(GameStages.allOf([stage]))
  .create();  

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal:38>, <immersiveengineering:material:9>, <immersiveengineering:metal:38>],
    [<minecraft:lava_bucket>, null, <minecraft:water_bucket>],
    [<immersiveengineering:metal:38>, <immersiveengineering:material:9>, <immersiveengineering:metal:38>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<nuclearcraft:cobblestone_generator>)
  .addRequirement(GameStages.allOf([spec_tech_stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:5>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <ore:gearSteel>, <ore:gearSteel>, <ore:gearSteel>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:5>],
    [<immersiveengineering:material:5>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <immersiveengineering:material:5>]])
  .addTool(<ore:artisansDriver>, 100)
  .addTool(<ore:artisansCutters>, 100)
  .addOutput(<contenttweaker:air_scrubber>)
  .addRequirement(GameStages.allOf([spec_tech_stage]))
  .create();