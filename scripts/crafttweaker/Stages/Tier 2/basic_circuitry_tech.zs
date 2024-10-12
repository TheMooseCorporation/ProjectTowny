import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Basic Circuitry:
    Everything related to our custom circuit system
*/

// Stage Name
val stage = "basic_circuitry_tech";

val stageMods as string[] = [
    
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
    <enderio:item_alloy_ingot:4>,
    <enderio:item_basic_capacitor>,
    <enderio:item_redstone_conduit>,
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
    <contenttweaker:dram>,
    // Multiblocked multiblocks for creating microchips, not computer components, those are in the precision assembler from computer_tech
    <projecttowny:crystallizer>,
    <projecttowny:microchip_inscriber>,
    // Custom circuits
    <contenttweaker:tier2_circuit>,
    <contenttweaker:tier3_circuit>,
    <immersiveengineering:material:27>,
    // Nuclearcraft parts for making basic plating
    <nuclearcraft:part>,
    <nuclearcraft:dust:8>,
    <nuclearcraft:ingot:8>
];

val nonStagedItems as IItemStack[] = [
    <libvulpes:ore0:8>,
    <libvulpes:coalgenerator>
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
recipes.remove(<enderio:item_basic_capacitor>);

// Raw circuit new recipe
recipes.addShapeless(<opencomputers:material:2>, [<ore:plateCopper>,<immersiveengineering:stone_decoration:8>]);

// Tier 3 Engineering Workbench
recipes.addShaped(<artisanworktables:workshop:6>, [[<ore:circuitBasic>, <ore:blockCopper>, <ore:circuitBasic>],[<immersivetech:metal_barrel:2>, <artisanworktables:workstation:6>, <immersivetech:metal_barrel:2>], [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

// Crystallizer Multiblock Controller
recipes.addShaped(<projecttowny:crystallizer>, [[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>],[<immersiveengineering:metal_decoration0:5>, <minecraft:dispenser>, <immersiveengineering:metal_decoration0:5>], [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

// Microchip Inscriber
RecipeBuilder.get("engineer")
  .setShaped([
    [<chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>],
    [<immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:3>],
    [<immersiveengineering:metal_decoration0:3>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <immersiveengineering:metal_decoration0:3>],
    [<immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:3>],
    [<chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>]])
  .addOutput(<projecttowny:microchip_inscriber>)
  .create();

// Circuit Recipes
// Basic Circuit
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:20>, <opencomputers:material:7>, <immersiveengineering:material:20>],
    [<opencomputers:material:7>, <opencomputers:material:4>, <opencomputers:material:7>],
    [<immersiveengineering:material:20>, <opencomputers:material:7>, <immersiveengineering:material:20>]])
  .addTool(<ore:artisansSolderer>, 10)
  .setFluid(<liquid:tin> * 50)
  .addOutput(<immersiveengineering:material:27>)
  .addRequirement(GameStages.allOf([stage]))
  .create();
// Advanced Circuit
  RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:21>, <enderio:item_basic_capacitor>, <immersiveengineering:material:21>, <enderio:item_basic_capacitor>, <immersiveengineering:material:21>],
    [<enderio:item_basic_capacitor>, <opencomputers:material:6>, <opencomputers:material:8>, <opencomputers:material:6>, <enderio:item_basic_capacitor>],
    [<immersiveengineering:material:21>, <opencomputers:material:8>, <opencomputers:material:4>, <opencomputers:material:8>, <immersiveengineering:material:21>],
    [<enderio:item_basic_capacitor>, <opencomputers:material:6>, <opencomputers:material:8>, <opencomputers:material:6>, <enderio:item_basic_capacitor>],
    [<immersiveengineering:material:21>, <enderio:item_basic_capacitor>, <immersiveengineering:material:21>, <enderio:item_basic_capacitor>, <immersiveengineering:material:21>]])
  .addTool(<ore:artisansSolderer>, 10)
  .setFluid(<liquid:tin> * 50)
  .addOutput(<contenttweaker:tier2_circuit>)
  .addRequirement(GameStages.allOf([stage]))
  .create();
// Elite Circuit
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:23>, <enderio:item_basic_capacitor>, <opencomputers:material:6>, <enderio:item_basic_capacitor>, <immersiveengineering:material:23>],
    [<enderio:item_basic_capacitor>, <contenttweaker:dram>, <opencomputers:material:9>, <contenttweaker:dram>, <enderio:item_basic_capacitor>],
    [<opencomputers:material:6>, <opencomputers:material:9>, <opencomputers:material:4>, <opencomputers:material:9>, <opencomputers:material:6>],
    [<enderio:item_basic_capacitor>, <contenttweaker:dram>, <opencomputers:material:9>, <contenttweaker:dram>, <enderio:item_basic_capacitor>],
    [<immersiveengineering:material:23>, <enderio:item_basic_capacitor>, <opencomputers:material:6>, <enderio:item_basic_capacitor>, <immersiveengineering:material:23>]])
  .setFluid(<liquid:tin> * 100)
  .addTool(<ore:artisansSolderer>, 10)
  .addOutput(<contenttweaker:tier3_circuit>)
  .addRequirement(GameStages.allOf([stage]))
  .create();

// EnderIO Energy Conduits, unuseable unless you've figured out basic circuitry
recipes.remove(<enderio:item_power_conduit>);
recipes.remove(<enderio:item_power_conduit:1>);
recipes.remove(<enderio:item_power_conduit:2>);

ItemStages.addItemStage(stage, <enderio:item_power_conduit>);
ItemStages.addItemStage(stage, <enderio:item_power_conduit:1>);
ItemStages.addItemStage(stage, <enderio:item_power_conduit:2>);

//Recipes for Multiblocked Inputs/Outputs
recipes.addShaped(<multiblocked:energy_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:1>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:energy_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:1>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);
recipes.addShaped(<multiblocked:fluid_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:4>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:fluid_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:metal_device0:4>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);
recipes.addShaped(<multiblocked:item_output>, [[null, <ore:ingotSteel>, null],[<ore:ingotSteel>, <immersiveengineering:conveyor>, <ore:ingotSteel>], [<ore:chest>, <minecraft:hopper>, <ore:chest>]]);
recipes.addShaped(<multiblocked:item_input>, [[null, <minecraft:hopper>, null],[<ore:ingotSteel>, <immersiveengineering:conveyor>, <ore:ingotSteel>], [<ore:chest>, <ore:ingotSteel>, <ore:chest>]]);

var found = false;
for item in loadedMods["libvulpes"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage(stage, item);
        ItemStages.addItemStage(stage, item);
    }
    found = false;
}