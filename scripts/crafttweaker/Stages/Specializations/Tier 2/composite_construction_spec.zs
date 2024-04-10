import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Composite Construction Specilization:
    For towns specilizing in building buildings or infrustructure. Cheaper rails and better roads
*/
// Stage Name
val stage = "composite_construction_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
  <engineersdecor:rebar_concrete>,
  <engineersdecor:rebar_concrete_slab>,
  <engineersdecor:rebar_concrete_stairs>,
  <engineersdecor:rebar_concrete_wall>,
  <engineersdecor:rebar_concrete_tile>,
  <engineersdecor:rebar_concrete_tile_slab>,
  <engineersdecor:rebar_concrete_tile_stairs>,
  <engineersdecor:halfslab_rebar_concrete>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Cheaper Rail Recipe
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:stickWood>, <ore:ingotSteel>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_rail_part>.withTag({gauge: 1.435}) * 16)
  .addRequirement(GameStages.allOf([stage]))
  .create();

// Better Asphalt
RecipeBuilder.get("mason")
  .setShaped([
    [<immersiveengineering:material:7>, <immersivepetroleum:material>, <immersiveengineering:material:7>],
    [<minecraft:gravel>, <immersiveengineering:material:6>, <minecraft:gravel>],
    [<immersiveengineering:material:7>, <immersivepetroleum:material>, <immersiveengineering:material:7>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<contenttweaker:composite_asphalt> * 24)
  .addRequirement(GameStages.allOf([stage]))
  .create();

// Better Concrete
RecipeBuilder.get("mason")
  .setShaped([
    [<immersiveengineering:material:7>, <minecraft:clay_ball>, <immersiveengineering:material:7>],
    [<minecraft:gravel>, <immersiveengineering:material:6>, <minecraft:gravel>],
    [<immersiveengineering:material:7>, <minecraft:clay_ball>, <immersiveengineering:material:7>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<contenttweaker:composite_concrete> * 24)
  .addRequirement(GameStages.allOf([stage]))  
  .create();

// Spec Tech

/**
    Composite Construction Specilization Tech:
    Unlocks the better crafting of popular building blocks
*/

val spec_tech_stage = "composite_construction_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Better Chisel Blocks

RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:iron_ingot>, <ore:stone>, <minecraft:iron_ingot>],
    [<ore:stone>, null, <ore:stone>],
    [<minecraft:iron_ingot>, <ore:stone>, <minecraft:iron_ingot>]])
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<chisel:factory> * 64)
  .addRequirement(GameStages.allOf([spec_tech_stage]))
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <minecraft:redstone>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addTool(<ore:artisansDriver>, 5)
  .addOutput(<chisel:futura> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))
  .create();

// Better Colored Concrete Recipes
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeWhite>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeOrange>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:1> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();
  
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeMagenta>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:2> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeLightBlue>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:3> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeYellow>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:4> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeLime>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:5> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyePink>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:6> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeGray>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:7> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeLightGray>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:8> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeCyan>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:9> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyePurple>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:10> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeBlue>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:11> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeBrown>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:12> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeGreen>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:13> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeRed>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:14> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();

RecipeBuilder.get("mason")
  .setShaped([
    [<ore:dyeBlack>, <minecraft:sand>, <minecraft:sand>],
    [<minecraft:sand>, <minecraft:sand>, <minecraft:gravel>],
    [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]])
    .setFluid(<liquid:water> * 50)
  .addOutput(<minecraft:concrete:15> * 16)
  .addRequirement(GameStages.allOf([spec_tech_stage]))  
  .create();
