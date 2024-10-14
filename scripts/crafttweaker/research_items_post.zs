import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

// This script is executed after the items are created in research_items.zs
// Put tooltip, recipes, and thing like that here.

val templateItemstacksT1 as IItemStack[] = [
    <contenttweaker:advanced_tools_tech_template>,
    <contenttweaker:architecture_tech_template>,
    <contenttweaker:basic_engineering_tech_template>,
    <contenttweaker:basic_military_tech_template>,
    <contenttweaker:basic_tools_tech_template>,
    <contenttweaker:blacksmithing_tech_template>,
    <contenttweaker:cartography_tech_template>,
    <contenttweaker:cooking_tech_template>,
    <contenttweaker:electricity_tech_template>,
    <contenttweaker:iron_tech_template>,
    <contenttweaker:kitchen_tech_template>,
    <contenttweaker:railroading_tech_template>,
    <contenttweaker:sailing_tech_template>,
    <contenttweaker:steel_tech_template>
];

val templateItemstacksT2 as IItemStack[] = [
    <contenttweaker:advanced_military_tech_template>,
    <contenttweaker:aeromobiles_tech_template>,
    <contenttweaker:arc_smelting_tech_template>,
    <contenttweaker:atomic_theory_tech_template>,
    <contenttweaker:basic_circuitry_tech_template>,
    <contenttweaker:biodiesel_tech_template>,
    <contenttweaker:chemical_synthesis_tech_template>,
    <contenttweaker:computer_tech_template>,
    <contenttweaker:fluidynamics_tech_template>,
    <contenttweaker:heavy_machinery_tech_template>,
    <contenttweaker:logistics_tech_template>,
    <contenttweaker:mechanics_tech_template>,
    <contenttweaker:oil_processing_tech_template>,
    <contenttweaker:pollution_management_tech_template>,
    <contenttweaker:replaceable_parts_tech_template>,
    <contenttweaker:scientific_theory_tech_template>,
    <contenttweaker:server_storage_tech_template>,
    <contenttweaker:solar_tech_template>,
    <contenttweaker:steam_energy_tech_template>,
    <contenttweaker:thermodynamics_tech_template>,
    <contenttweaker:wireless_tech_template>
];

val templateItemstacksT3 as IItemStack[] = [
    <contenttweaker:advanced_compact_machinery_tech_template>, 
    <contenttweaker:asteroid_mining_tech_template>,
    <contenttweaker:basic_missiles_tech_template>,
    <contenttweaker:basic_rocketry_tech_template>,
    <contenttweaker:compact_machinery_tech_template>,
    <contenttweaker:fission_reactors_tech_template>, 
    <contenttweaker:fusion_reactors_tech_template>,
    <contenttweaker:future_tech_template>,
    <contenttweaker:intercontinental_ballistics_tech_template>,
    <contenttweaker:manhattan_project_tech_template>,
    <contenttweaker:modern_military_tech_template>,
    <contenttweaker:space_exploration_tech_template>,
    <contenttweaker:space_stations_tech_template>,
    <contenttweaker:warp_tech_template>
];

val templateItemstacksSpecs as IItemStack[] = [
    <contenttweaker:agriculture_spec_template>,
    <contenttweaker:agriculture_tech_spec_template>,
    <contenttweaker:forestry_spec_template>,
    <contenttweaker:forestry_tech_spec_template>,
    <contenttweaker:mining_spec_template>,
    <contenttweaker:mining_tech_spec_template>,
    <contenttweaker:composite_construction_spec_template>,
    <contenttweaker:composite_construction_tech_spec_template>,
    <contenttweaker:electrical_distribution_spec_template>,
    <contenttweaker:electrical_distribution_tech_spec_template>,
    <contenttweaker:industrial_manufacturing_spec_template>,
    <contenttweaker:industrial_manufacturing_tech_spec_template>,
    <contenttweaker:chemical_engineering_spec_template>,
    <contenttweaker:chemical_engineering_tech_spec_template>,
    <contenttweaker:electrical_engineering_spec_template>,
    <contenttweaker:electrical_engineering_tech_spec_template>,
    <contenttweaker:mechanical_engineering_spec_template>,
    <contenttweaker:mechanical_engineering_tech_spec_template>,
    <contenttweaker:nuclear_engineering_spec_template>,
    <contenttweaker:nuclear_engineering_tech_spec_template>
];

for templateItemstack in templateItemstacksT1 {
    recipes.addShapeless(templateItemstack, [<minecraft:paper>]);
    templateItemstack.addTooltip("An unresearch research template. Research with research points in a research lab.");
}

for templateItemstack in templateItemstacksT2 {
    recipes.addShapeless(templateItemstack, [<minecraft:book>]);
    templateItemstack.addTooltip("An unresearch research template. Research with research points in a research lab.");
}

for templateItemstack in templateItemstacksT3 {
    recipes.addShapeless(templateItemstack, [<ore:oc:floppy>]);
    templateItemstack.addTooltip("An unresearch research template. Research with research points in a research lab.");
}

for templateItemstack in templateItemstacksSpecs {
    recipes.addShapeless(templateItemstack, [<minecraft:writable_book>]);
    templateItemstack.addTooltip("An unresearch research template. Research with research points in a research lab.");
}