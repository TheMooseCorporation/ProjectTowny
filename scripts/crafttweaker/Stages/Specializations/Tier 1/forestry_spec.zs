import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.TinkerStages;
import mods.betterwithmods.Saw;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Forestry Specilization:
    For towns specilizing in chopping trees and building. Allows for chopping entire trees at once, plus better carpentry recipes.
*/
// Stage Name
val stage = "forestry_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <techguns:handcannon>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

TinkerStages.addToolTypeStage(stage, "tconstruct:lumberaxe");

// Gun Staging - Just the one gun we'll give them thats not in a military tech
Recipes.setRecipeStage(stage, "techguns:handcannon");

// Spec Tech


/**
    Forestry Specilization Tech:
    Unlocks the saw for more efficient lumber processing
*/

val spec_tech_stage = "forestry_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    <betterwithmods:saw>
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("basic_tools_tech", <techguns:handcannon>);
ItemStages.addItemStage("basic_tools_tech", <betterwithmods:saw>);

// Saw Recipes
Saw.removeAll(); // Getting a clean slate is probably best here because there are a lot of different woods

// Frame Doubling
Saw.add(<minecraft:planks>,[<blockcraftery:editable_block> * 4]);
Saw.add(<minecraft:planks:1>,[<blockcraftery:editable_block> * 4]);
Saw.add(<minecraft:planks:2>,[<blockcraftery:editable_block> * 4]);
Saw.add(<minecraft:planks:3>,[<blockcraftery:editable_block> * 4]);
Saw.add(<minecraft:planks:4>,[<blockcraftery:editable_block> * 4]);
Saw.add(<minecraft:planks:5>,[<blockcraftery:editable_block> * 4]);
// Plank Doubling
Saw.add(<minecraft:log>,[<minecraft:planks> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<minecraft:log:1>,[<minecraft:planks:1> * 8,<betterwithmods:bark:1>, <betterwithmods:material:22> * 2]);
Saw.add(<minecraft:log:2>,[<minecraft:planks:2> * 8,<betterwithmods:bark:2>, <betterwithmods:material:22> * 2]);
Saw.add(<minecraft:log:3>,[<minecraft:planks:3> * 8,<betterwithmods:bark:3>, <betterwithmods:material:22> * 2]);
Saw.add(<minecraft:log2>,[<minecraft:planks:4> * 8,<betterwithmods:bark:4>, <betterwithmods:material:22> * 2]);
Saw.add(<minecraft:log2:1>,[<minecraft:planks:5> * 8,<betterwithmods:bark:5>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_0:4>,[<biomesoplenty:planks_0> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_0:5>,[<biomesoplenty:planks_0:1> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_0:6>,[<biomesoplenty:planks_0:2> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_0:7>,[<biomesoplenty:planks_0:3> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_1:4>,[<biomesoplenty:planks_0:4> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_1:5>,[<biomesoplenty:planks_0:5> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_1:6>,[<biomesoplenty:planks_0:6> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_1:7>,[<biomesoplenty:planks_0:7> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_2:4>,[<biomesoplenty:planks_0:8> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_2:5>,[<biomesoplenty:planks_0:9> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_2:6>,[<biomesoplenty:planks_0:10> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_2:7>,[<biomesoplenty:planks_0:11> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_3:4>,[<biomesoplenty:planks_0:12> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_3:5>,[<biomesoplenty:planks_0:13> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_3:6>,[<biomesoplenty:planks_0:14> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);
Saw.add(<biomesoplenty:log_3:7>,[<biomesoplenty:planks_0:15> * 8,<betterwithmods:bark>, <betterwithmods:material:22> * 2]);

// Broad Axe Recipes

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:planks>, <minecraft:planks>],
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>],
    [null, <minecraft:planks>, <minecraft:planks>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "wood"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [null, <ore:cobblestone>, <ore:cobblestone>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "stone"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:bone>, <minecraft:bone>],
    [<minecraft:bone>, <minecraft:bone>, <minecraft:bone>],
    [null, <minecraft:bone>, <minecraft:bone>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "bone"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:netherrack>, <minecraft:netherrack>],
    [<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>],
    [null, <minecraft:netherrack>, <minecraft:netherrack>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "netherrack"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [null, <ore:ingotCopper>, <ore:ingotCopper>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "copper"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [null, <ore:ingotIron>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "iron"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, <ore:ingotSteel>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "steel"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:obsidian>, <minecraft:obsidian>],
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>],
    [null, <minecraft:obsidian>, <minecraft:obsidian>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "obsidian"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotLead>, <ore:ingotLead>],
    [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
    [null, <ore:ingotLead>, <ore:ingotLead>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "lead"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:flint>, <minecraft:flint>],
    [<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],
    [null, <minecraft:flint>, <minecraft:flint>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "flint"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <minecraft:prismarine>, <minecraft:prismarine>],
    [<minecraft:prismarine>, <minecraft:prismarine>, <minecraft:prismarine>],
    [null, <minecraft:prismarine>, <minecraft:prismarine>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "prismarine"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotBronze>, <ore:ingotBronze>],
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
    [null, <ore:ingotBronze>, <ore:ingotBronze>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "bronze"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [null, <ore:ingotElectrum>, <ore:ingotElectrum>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "electrum"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <tconstruct:ingots:4>, <tconstruct:ingots:4>],
    [<tconstruct:ingots:4>, <tconstruct:ingots:4>, <tconstruct:ingots:4>],
    [null, <tconstruct:ingots:4>, <tconstruct:ingots:4>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "pigiron"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <tconstruct:ingots>, <tconstruct:ingots>],
    [<tconstruct:ingots>, <tconstruct:ingots>, <tconstruct:ingots>],
    [null, <tconstruct:ingots>, <tconstruct:ingots>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "cobalt"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <tconstruct:ingots:1>, <tconstruct:ingots:1>],
    [<tconstruct:ingots:1>, <tconstruct:ingots:1>, <tconstruct:ingots:1>],
    [null, <tconstruct:ingots:1>, <tconstruct:ingots:1>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "ardite"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <tconstruct:ingots:2>, <tconstruct:ingots:2>],
    [<tconstruct:ingots:2>, <tconstruct:ingots:2>, <tconstruct:ingots:2>],
    [null, <tconstruct:ingots:2>, <tconstruct:ingots:2>]])
  .addTool(<ore:artisansHammer>, 250)
  .addOutput(<tconstruct:broad_axe_head>.withTag({Material: "manyullyn"}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

// TODO: Move all artisan worktable recipes to a single file
recipes.addShaped(<artisanworktables:worktable:3>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, <minecraft:anvil>, <ore:ingotIron>], [<ore:fenceWood>, null, <ore:fenceWood>]]);
