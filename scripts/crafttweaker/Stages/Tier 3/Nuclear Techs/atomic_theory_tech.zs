import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.orestages.OreStages;

/**
    Atomic Theory:
    The perfect time to start stockpiling uranium
*/

// Stage Name
val stage = "atomic_theory_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <nuclearcraft:bin>,
    <nuclearcraft:machine_interface>,
    <nuclearcraft:cobblestone_generator>,
    <nuclearcraft:cobblestone_generator_compact>,
    <nuclearcraft:cobblestone_generator_dense>,
    <nuclearcraft:alloy:2>,
    <nuclearcraft:alloy:3>,
    <nuclearcraft:alloy:4>,
    <nuclearcraft:alloy:6>,
    <nuclearcraft:alloy:7>,
    <nuclearcraft:alloy:8>,
    <nuclearcraft:alloy:9>,
    <nuclearcraft:alloy:10>,
    <nuclearcraft:alloy:11>,
    <nuclearcraft:alloy:12>,
    <nuclearcraft:alloy:13>,
    <nuclearcraft:alloy:14>,
    <nuclearcraft:alloy:15>,
    <nuclearcraft:alloy:1>,
    // These parts could be used as comonents for the mechanics system
    <nuclearcraft:part:11>,
    <nuclearcraft:part:9>,
    <nuclearcraft:part:10>,
    <nuclearcraft:part:8>,
    <nuclearcraft:part:4>,
    <nuclearcraft:part:7>,
    <nuclearcraft:part:12>,
    <nuclearcraft:part:13>,
    <nuclearcraft:ingot_block:3>,
    <nuclearcraft:ingot_block:4>,
    <nuclearcraft:ingot:3>,
    <nuclearcraft:ingot:4>,
    <nuclearcraft:upgrade>,
    <nuclearcraft:upgrade:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Ore Stage changing
// Nuclear Ores
OreStages.addReplacement(stage, <geolosys:ore:9>); // Hides Uranium
OreStages.addReplacement(stage, <nuclearcraft:ore:3>); // Hides Thorium