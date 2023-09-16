import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.TinkerStages;
import mods.betterwithmods.Saw;

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

// Saw Recipes
Saw.removeAll(); // Getting a clean slate is probably best here because there are a lot of different woods

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