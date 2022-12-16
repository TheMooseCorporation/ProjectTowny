import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

Recipes.addShaped("solar_stage", <immersiveengineering:metal_device1:13>, [[<sereneseasons:greenhouse_glass>, <solarflux:photovoltaic_cell_5>, <sereneseasons:greenhouse_glass>],[<sereneseasons:greenhouse_glass>, <immersiveengineering:material:26>, <sereneseasons:greenhouse_glass>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

Recipes.setRecipeStageByMod("solar_stage", "solarflux");
ItemStages.stageModItems("solar_stage", "solarflux");

val solarItems as IItemStack[] = [
    <nuclearcraft:solar_panel_advanced>,
    <nuclearcraft:solar_panel_du>,
    <nuclearcraft:solar_panel_elite>,
    <opencomputers:upgrade:22>,
    <nuclearcraft:solar_panel_basic>,
    <advancedrocketry:solarpanel>,
    <advancedrocketry:solargenerator>,
    <mekanismgenerators:solarpanel>,
    <mekanismgenerators:generator:1>,
    <mekanism:machineblock3:1>,
    <mekanismgenerators:generator:5>,
    <industrialrenewal:dam_outflow>,
    <industrialrenewal:dam_intake>,
    <industrialrenewal:high_pressure_pipe>,
    <industrialrenewal:dam_turbine>,
    <industrialrenewal:dam_generator>,
    <industrialrenewal:dam_axis>,
    <industrialrenewal:firebox_solid>,
    <industrialrenewal:firebox_fluid>,
    <industrialrenewal:steam_boiler>,
    <industrialrenewal:steam_turbine>,
    <industrialrenewal:solar_panel_frame>,
    <industrialrenewal:solar_panel>,
    <immersiveengineering:metal_device1:13>
];

for item in solarItems {
    Recipes.setRecipeStage("solar_stage", item);
    ItemStages.addItemStage("solar_stage", item);
}





