import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Circuitry:
    Everything related to our custom circuit system
*/

// Stage Name
val stage = "basic_circuitry_tech";

val stageMods as string[] = [
    "libvulpes"
];

val stageItems as IItemStack[] = [
    // Advanced rocketry components that we use for making microchips
    <advancedrocketry:cuttingmachine>,
    <advancedrocketry:wafer>,
    <advancedrocketry:ic:3>,
    <advancedrocketry:ic:4>,
    <advancedrocketry:misc>,
    <advancedrocketry:sawblade>,
    <advancedrocketry:sawbladeiron>,
    // EnderIO Conduit Materials
    <enderio:item_material:22>,
    <enderio:item_material:4>,
    <enderio:item_power_conduit>,
    <enderio:item_alloy_ingot:4>,
    // Opencomputers components that we use for making microchips
    <opencomputers:material:10>,
    <opencomputers:material:11>,
    <opencomputers:material:29>,
    <opencomputers:material:7>,
    <opencomputers:material:8>,
    <opencomputers:material:9>,
    <opencomputers:material:4>,
    <opencomputers:material:2>,
    <opencomputers:material:6>,
    // Multiblocked multiblocks for creating microchips, not computer components, those are in the precision assembler from computer_tech
    <projecttowny:crystallizer>,
    <projecttowny:microchip_inscriber>,
    // Nuclearcraft parts for making basic plating
    <nuclearcraft:part>,
    <nuclearcraft:dust:8>,
    <contenttweaker:dram>,
    <nuclearcraft:ingot:8>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Removes default recipes for components we use for our circuit system
recipes.remove(<opencomputers:material:2>); // Raw Circuit
recipes.remove(<opencomputers:material:9>);
recipes.remove(<opencomputers:material:8>);
recipes.remove(<opencomputers:material:7>);
recipes.remove(<opencomputers:material:11>);
recipes.remove(<opencomputers:material:29>);
recipes.remove(<opencomputers:material:6>);
recipes.remove(<opencomputers:material:10>);

// Raw circuit new recipe
recipes.addShapeless(<opencomputers:material:2>, [<ore:plateCopper>,<immersiveengineering:stone_decoration:8>]);


//Recipes for Multiblocked Inputs/Outputs
recipes.addShaped(<multiblocked:energy_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:1>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:energy_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:1>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);
recipes.addShaped(<multiblocked:fluid_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:4>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:fluid_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:4>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);
recipes.addShaped(<multiblocked:item_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:conveyor>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:item_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:conveyor>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);