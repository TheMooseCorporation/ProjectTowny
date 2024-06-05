import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Solar Technology:
    SOLAR PANELS BABY!!!! YEAH WE'RE IN BUSINESS NOW!
*/

// Stage Name
val stage = "solar_tech";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <engineersdecor:small_solar_panel>,
    <opencomputers:upgrade:22>,
    <solarflux:blank_upgrade>,
    <solarflux:block_charging_upgrade>,
    <solarflux:capacity_upgrade>,
    <solarflux:dispersive_upgrade>,
    <solarflux:efficiency_upgrade>,
    <solarflux:furnace_upgrade>,
    <solarflux:transfer_rate_upgrade>,
    <solarflux:traversal_upgrade>,
    <solarflux:mirror>,
    <solarflux:photovoltaic_cell_1>,
    <solarflux:photovoltaic_cell_2>,
    <solarflux:photovoltaic_cell_3>,
    <solarflux:photovoltaic_cell_4>,
    <solarflux:solar_panel_1>,
    <solarflux:solar_panel_2>,
    <solarflux:solar_panel_3>,
    <solarflux:solar_panel_4>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>
    // TODO Add contenttweaker components in here
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Garden Cloche alternative recipe, maybe something to put behind a specialization?
Recipes.addShaped("solar_stage", <immersiveengineering:metal_device1:13>, [[<sereneseasons:greenhouse_glass>, <solarflux:photovoltaic_cell_5>, <sereneseasons:greenhouse_glass>],[<sereneseasons:greenhouse_glass>, <immersiveengineering:material:26>, <sereneseasons:greenhouse_glass>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

// Solar Flux Reborn Rework
recipes.remove(<solarflux:photovoltaic_cell_1>);
recipes.remove(<solarflux:photovoltaic_cell_2>);
recipes.remove(<solarflux:photovoltaic_cell_3>);
recipes.remove(<solarflux:photovoltaic_cell_4>);

recipes.remove(<solarflux:solar_panel_1>);
recipes.remove(<solarflux:solar_panel_4>);
recipes.remove(<solarflux:solar_panel_5>);
recipes.remove(<solarflux:solar_panel_6>);

recipes.addShaped(<solarflux:photovoltaic_cell_1>, [[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],[<advancedrocketry:wafer>, <advancedrocketry:wafer>, <advancedrocketry:wafer>], [<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>]]);
recipes.addShaped(<solarflux:photovoltaic_cell_2>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>], [<solarflux:mirror>, <solarflux:photovoltaic_cell_1>, <solarflux:mirror>]]);
recipes.addShaped(<solarflux:photovoltaic_cell_3>, [[<engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>],[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>], [<ore:plateAluminum>, <solarflux:photovoltaic_cell_2>, <ore:plateAluminum>]]);
recipes.addShaped(<solarflux:photovoltaic_cell_4>, [[<engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>],[<ore:ingotOsmium>, <minecraft:glowstone_dust>, <ore:ingotOsmium>], [<ore:blockQuartz>, <solarflux:photovoltaic_cell_3>, <ore:blockQuartz>]]);

recipes.addShaped(<solarflux:solar_panel_1>, [[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],[null, <contenttweaker:solar_electronics>, null], [null, null, null]]);
recipes.addShaped(<solarflux:solar_panel_4> * 2, [[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>],[<solarflux:solar_panel_3>, <ore:circuitBasic>, <solarflux:solar_panel_3>], [<solarflux:solar_panel_3>, <ore:blockIron>, <solarflux:solar_panel_3>]]);
recipes.addShaped(<solarflux:solar_panel_5> * 2, [[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],[<solarflux:solar_panel_4>, <ore:plateTitanium>, <solarflux:solar_panel_4>], [<solarflux:solar_panel_4>, <ore:blockSteel>, <solarflux:solar_panel_4>]]);
recipes.addShaped(<solarflux:solar_panel_6> * 2, [[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>],[<solarflux:solar_panel_5>, <ore:plateConstantan>, <solarflux:solar_panel_5>], [<solarflux:solar_panel_5>, <ore:blockDiamond>, <solarflux:solar_panel_5>]]);


// Custom Frame Components - I think this is cool, other's might not care
recipes.addShaped(<contenttweaker:solar_electronics>, [[null, null, null],[<ore:wireElectrum>, <ore:circuitBasic>, <ore:wireElectrum>], [<ore:wireElectrum>, <contenttweaker:solar_frame>, <ore:wireElectrum>]]);
recipes.addShaped(<contenttweaker:solar_frame>, [[null, null, null],[<ore:plateAluminum>, null, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
