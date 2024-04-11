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
recipes.addShaped(<contenttweaker:solar_electronics>, [[null, null, null],[<ore:wireElectrum>, <ore:circuitBasic>, <ore:wireElectrum>], [<ore:wireElectrum>, <contenttweaker:solar_frame>, <ore:wireElectrum>]]);
recipes.addShaped(<contenttweaker:solar_frame>, [[null, null, null],[<ore:plateAluminum>, null, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
recipes.addShaped(<solarflux:solar_panel_1>, [[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],[null, <contenttweaker:solar_electronics>, null], [null, null, null]]);


