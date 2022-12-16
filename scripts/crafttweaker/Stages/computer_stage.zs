import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

Recipes.setRecipeStageByMod("computer_stage", "opensecurity");
Recipes.setRecipeStageByMod("computer_stage", "computronics");
Recipes.setRecipeStageByMod("computer_stage", "networksmanager");
Recipes.setRecipeStageByMod("computer_stage", "opencomputers");
Recipes.setRecipeStageByMod("computer_stage", "wrcbe");
Recipes.setRecipeStageByMod("computer_stage", "computercraft");
Recipes.setRecipeStageByMod("computer_stage", "scannable");
Recipes.setRecipeStageByMod("computer_stage", "libvulpes");
Recipes.setRecipeStageByMod("computer_stage", "jecalculation");

ItemStages.stageModItems("computer_stage", "opensecurity");
ItemStages.stageModItems("computer_stage", "computronics");
ItemStages.stageModItems("computer_stage", "networksmanager");
ItemStages.stageModItems("computer_stage", "opencomputers");
ItemStages.stageModItems("computer_stage", "wrcbe");
ItemStages.stageModItems("computer_stage", "computercraft");
ItemStages.stageModItems("computer_stage", "scannable");
ItemStages.stageModItems("computer_stage", "libvulpes");
ItemStages.stageModItems("computer_stage", "jecalculation");

recipes.remove(<scannable:scanner>);
Recipes.addShaped("computer_stage", <scannable:scanner>, [[<ore:ingotIron>, null, <ore:ingotIron>],[<ore:barsIron>, <minecraft:redstone>, <ore:barsIron>], [<ore:ingotGold>, <opencomputers:material:4>, <ore:ingotGold>]]);
Recipes.addShaped("computer_stage", <buildinggadgets:buildingtool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:diamond>, <opencomputers:case1>, <minecraft:diamond>], [<ore:ingotIron>, <opencomputers:card:1>, <ore:ingotIron>]]);
Recipes.addShaped("computer_stage", <buildinggadgets:exchangertool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:redstone>, <opencomputers:case1>, <minecraft:redstone>], [<ore:gemDiamond>, <opencomputers:card:1>, <ore:gemDiamond>]]);
Recipes.addShaped("computer_stage", <buildinggadgets:copypastetool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:emerald>, <opencomputers:case1>, <minecraft:emerald>], [<ore:ingotIron>, <opencomputers:card:1>, <ore:ingotIron>]]);

// OpenComputers Rework
// Removals
recipes.remove(<opencomputers:material:2>); // Raw Circuit
recipes.remove(<opencomputers:material:9>);
recipes.remove(<opencomputers:material:8>);
recipes.remove(<opencomputers:material:7>);
recipes.remove(<opencomputers:material:11>);
recipes.remove(<opencomputers:material:29>);
recipes.remove(<opencomputers:material:6>);
recipes.remove(<opencomputers:material:10>);

// Additions
Recipes.addShapeless("computer_stage", <opencomputers:material:2>, [<ore:plateCopper>,<immersiveengineering:stone_decoration:8>]); // Raw Circuit
recipes.addShapeless(<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "tape"}, "oc:color": 15, "oc:lootFactory": "computronics:tape"}), [<opencomputers:storage:1>,<computronics:tape>]);

val stageItems as IItemStack[] = [
    <industrialrenewal:small_wind_turbine_pillar>,
    <industrialrenewal:cartridge_plus>,
    <industrialrenewal:cartridge_minus>,
    <industrialrenewal:cartridge_half>,
    <industrialrenewal:cartridge_double>,
    <industrialrenewal:cartridge_inverter>,
    <industrialrenewal:small_wind_blade>,
    <industrialrenewal:sensor_rain>,
    <industrialrenewal:safety_belt>,
    <industrialrenewal:energy_cable_lv>,
    <industrialrenewal:energy_cable>,
    <industrialrenewal:energy_cable_hv>,
    <industrialrenewal:flame_detector>,
    <industrialrenewal:small_wind_turbine>,
    <industrialrenewal:traffic_light>,
    <industrialrenewal:button_red>,
    <industrialrenewal:isolator_hv>,
    <industrialrenewal:transformer_hv>,
    <industrialrenewal:coil_hv>,
    <industrialrenewal:signal_indicator>,
    <industrialrenewal:conduit_connector>,
    <industrialrenewal:fuse_box>,
    <industrialrenewal:cable_tray>,
    <industrialrenewal:platform>,
    <industrialrenewal:conveyor_bulk>,
    <industrialrenewal:energy_level>,
    <industrialrenewal:fluid_gauge>,
    <industrialrenewal:entity_detector>,
    <industrialrenewal:conduit_extension>,
    <industrialrenewal:battery>,
    <industrialrenewal:battery_bank>,
    <industrialrenewal:fluid_tank>,
    <industrialrenewal:ind_battery_bank>,
    <buildinggadgets:constructionpastecontainer>,
    <buildinggadgets:constructionpastecontainert2>,
    <buildinggadgets:constructionpastecontainert3>,
    <buildinggadgets:constructionpaste>,
    <buildinggadgets:constructionblock_dense>,
    <buildinggadgets:constructionblock>,
    <buildinggadgets:constructionblockpowder>,
    <buildinggadgets:construction_chunk_dense>,
    <buildinggadgets:templatemanager>,
    <advancedrocketry:cuttingmachine>,
    <advancedrocketry:precisionassemblingmachine>,
    <advancedrocketry:wafer>,
    <advancedrocketry:ic:3>,
    <advancedrocketry:ic:4>,
    <advancedrocketry:misc>,
    <advancedrocketry:sawblade>,
    <advancedrocketry:sawbladeiron>
];

val multiblockMachines as string[] = [
    "modularmachinery:crystallizer",
    "modularmachinery:microchip_inscriber"
];

for multiblockMachine in multiblockMachines {
	var item as IItemStack = <modularmachinery:itemblueprint:0>.withTag({dynamicmachine: multiblockMachine});
	ItemStages.addItemStage("computer_stage", item);
}

for item in stageItems{
    Recipes.setRecipeStage("computer_stage", item);
    ItemStages.addItemStage("computer_stage", item);
}