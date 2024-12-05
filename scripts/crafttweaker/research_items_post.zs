import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.formatting.IFormattedText;

// This script is executed after the items are created in research_items.zs
// Put tooltip, recipes, and things like that here.

val templateItemstacksT1 = {
    <contenttweaker:advanced_tools_tech_template> : [<minecraft:paper>, <tconstruct:pick_head>.withTag({Material: "flint"})],
    <contenttweaker:architecture_tech_template> : [<minecraft:paper>, <minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    <contenttweaker:basic_engineering_tech_template> : [<minecraft:paper>, <betterwithmods:material>, <betterwithmods:material>],
    <contenttweaker:basic_military_tech_template> : [<minecraft:paper>, <minecraft:iron_sword>, <minecraft:bow>, <minecraft:shield>],
    <contenttweaker:basic_tools_tech_template> : [<minecraft:paper>, <minecraft:stone_pickaxe>],
    <contenttweaker:blacksmithing_tech_template> : [<minecraft:paper>, <tconstruct:toolforge>],
    <contenttweaker:cartography_tech_template> : [<minecraft:paper>, <minecraft:compass>, <minecraft:map>],
    <contenttweaker:cooking_tech_template> : [<minecraft:paper>, <ore:listAllfruit>, <ore:listAllveggie>, <ore:listAllgrain>],
    <contenttweaker:electricity_tech_template> : [<minecraft:paper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    <contenttweaker:iron_tech_template> : [<minecraft:paper>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
    <contenttweaker:kitchen_tech_template> : [<minecraft:paper>, <harvestcraft:potitem>, <harvestcraft:skilletitem>, <harvestcraft:cuttingboarditem>],
    <contenttweaker:railroading_tech_template> : [<minecraft:paper>, <minecraft:furnace_minecart>, <minecraft:rail>, <minecraft:rail>],
    <contenttweaker:sailing_tech_template> : [<minecraft:paper>, <minecraft:boat>, <minecraft:wooden_shovel>, <minecraft:wooden_shovel>],
    <contenttweaker:steel_tech_template>  : [<minecraft:paper>, <minecraft:coal>, <minecraft:iron_ingot>, <minecraft:lava_bucket>]
} as IIngredient[][IItemStack];

val templateItemstacksT2 = {
    <contenttweaker:advanced_military_tech_template> : [<minecraft:book>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>, <techguns:itemshared:1>],
    <contenttweaker:aeromobiles_tech_template> : [<minecraft:book>, <minecraft:furnace_minecart>, <immersiveengineering:material:5>, <immersiveengineering:material:5>],
    <contenttweaker:arc_smelting_tech_template> : [<minecraft:book>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:material:2>],
    <contenttweaker:atomic_theory_tech_template> : [<minecraft:book>, <betterboilers:controller>, <betterboilers:boiler_valve>, <betterboilers:boiler>, <betterboilers:boiler>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
    <contenttweaker:basic_circuitry_tech_template> : [<minecraft:book>, <contenttweaker:tier0_circuit>, <immersiveengineering:wirecoil>],
    <contenttweaker:biodiesel_tech_template> : [<minecraft:book>, <minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>],
    <contenttweaker:chemical_synthesis_tech_template> : [<minecraft:book>, <artisanworktables:artisans_beaker_iron>],
    <contenttweaker:computer_tech_template> : [<minecraft:book>, <projectred-integration:gate>, <projectred-integration:gate:2>, <projectred-integration:gate:3>, <projectred-integration:gate:17>],
    <contenttweaker:fluidynamics_tech_template> : [<minecraft:book>, <minecraft:water_bucket>],
    <contenttweaker:heavy_machinery_tech_template> : [<minecraft:book>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>],
    <contenttweaker:logistics_tech_template> : [<minecraft:book>, <immersiveengineering:conveyor>, <immersiveengineering:conveyor>, <minecraft:hopper>],
    <contenttweaker:mechanics_tech_template> : [<minecraft:book>, <minecraft:furnace_minecart>, <immersivepetroleum:stone_decoration>, <minecraft:redstone>],
    <contenttweaker:oil_processing_tech_template> : [<minecraft:book>, <immersiveengineering:metal_device0:5>, <immersiveengineering:metal_device1:6>, <immersiveengineering:drillhead>],
    <contenttweaker:pollution_management_tech_template> : [<minecraft:book>, <adchimneys:iron_block:1>, <adchimneys:iron_block:1>, <adchimneys:iron_block:1>, <adchimneys:iron_block:1>, <adchimneys:iron_block:2>],
    <contenttweaker:replaceable_parts_tech_template> : [<minecraft:book>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:9>],
    <contenttweaker:scientific_theory_tech_template> : [<minecraft:book>, <minecraft:paper>, <ore:oc:floppy>],
    <contenttweaker:server_storage_tech_template> : [<minecraft:book>, <ore:oc:floppy>, <minecraft:chest>],
    <contenttweaker:solar_tech_template> : [<minecraft:book>, <advancedrocketry:wafer>, <advancedrocketry:wafer>, <advancedrocketry:wafer>, <ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    <contenttweaker:steam_energy_tech_template> : [<minecraft:book>, <immersiveengineering:metal_device1:1>, <immersiveengineering:metal_device1:1>, <minecraft:water_bucket>],
    <contenttweaker:thermodynamics_tech_template> : [<minecraft:book>, <minecraft:furnace>, <minecraft:flint_and_steel>, <minecraft:netherrack>],
    <contenttweaker:wireless_tech_template> : [<minecraft:book>, <immersiveengineering:wirecoil:1>, <immersiveengineering:tool:1>]
 } as IIngredient[][IItemStack];

val templateItemstacksT3 = {
    <contenttweaker:advanced_compact_machinery_tech_template> : [<ore:oc:floppy>, <mekanism:configurator>, <mekanism:electrolyticcore>, <mekanism:energytablet>],
    <contenttweaker:asteroid_mining_tech_template> : [<ore:oc:floppy>, <immersiveengineering:drillhead>, <ore:chest>, <advancedrocketry:rocketmotor>, <libvulpes:productgem>],
    <contenttweaker:basic_missiles_tech_template> : [<ore:oc:floppy>, <mts:mtsofficialpack.heavy_bomb>, <mts:ivairlinerpack.wing_swept_large>, <immersivetech:metal_barrel:1>, <immersivetech:metal_barrel:1>],
    <contenttweaker:basic_rocketry_tech_template> : [<ore:oc:floppy>, <ore:chest>, <immersivetech:metal_barrel:2>, <icbmclassic:missile>],
    <contenttweaker:compact_machinery_tech_template> : [<ore:oc:floppy>, <ore:circuitElite>, <immersiveengineering:material:9>, <immersiveengineering:material:9>, <libvulpes:productgem>, <libvulpes:productgem>],
    <contenttweaker:fission_reactors_tech_template> : [<ore:oc:floppy>, <nuclearcraft:part:10>, <nuclearcraft:part:10>, <ore:ingotUranium>],
    <contenttweaker:fusion_reactors_tech_template> : [<ore:oc:floppy>, <nuclearcraft:chemical_reactor_idle>, <nuclearcraft:chemical_reactor_idle>, <nuclearcraft:part:10>, <nuclearcraft:part:10>],
    <contenttweaker:future_tech_template> : [<ore:oc:floppy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <mekanism:atomicalloy>, <ore:ingotManyullyn>],
    <contenttweaker:intercontinental_ballistics_tech_template> : [<ore:oc:floppy>, <icbmclassic:launcherbase>, <icbmclassic:launcherscreen>, <icbmclassic:missile>],
    <contenttweaker:manhattan_project_tech_template> : [<ore:oc:floppy>, <icbmclassic:radarstation>, <icbmclassic:emptower>],
    <contenttweaker:modern_military_tech_template> : [<ore:oc:floppy>, <icbmclassic:missile>, <techguns:itemshared:35>],
    <contenttweaker:space_exploration_tech_template> : [<ore:oc:floppy>, <minecraft:minecart>, <advancedrocketry:fueltank>, <advancedrocketry:fueltank>, <advancedrocketry:rocketmotor>],
    <contenttweaker:space_stations_tech_template> : [<ore:oc:floppy>, <ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>, <engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>, <engineersdecor:panzerglass_block>],
    <contenttweaker:warp_tech_template> : [<ore:oc:floppy>, <minecraft:ender_pearl>, <libvulpes:productgem>, <libvulpes:productgem>, <ore:ingotCobalt>, <ore:ingotCobalt>]
} as IIngredient[][IItemStack];

val templateItemstacksSpecs = {
    <contenttweaker:agriculture_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:agriculture_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:forestry_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:forestry_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:mining_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:mining_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:composite_construction_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:composite_construction_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:electrical_distribution_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:electrical_distribution_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:industrial_manufacturing_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:industrial_manufacturing_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:chemical_engineering_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:chemical_engineering_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:electrical_engineering_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:electrical_engineering_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:mechanical_engineering_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:mechanical_engineering_tech_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:nuclear_engineering_spec_template> : [<minecraft:writable_book>],
    <contenttweaker:nuclear_engineering_tech_spec_template> : [<minecraft:writable_book>]
} as IIngredient[][IItemStack];

for templateItemstack, recipe in templateItemstacksT1 {
    recipes.addShapeless(templateItemstack, recipe);
    templateItemstack.addTooltip("An unresearched " ~ format.darkGreen("tier 1") ~ format.gray(" research template. Research with research points in a Primitive Research Bench."));
}

for templateItemstack, recipe in templateItemstacksT2 {
    recipes.addShapeless(templateItemstack, recipe);
    templateItemstack.addTooltip("An unresearched " ~ format.gold("tier 2") ~ format.gray(" research template. Research with research points in a Research Workshop."));
}

for templateItemstack, recipe in templateItemstacksT3 {
    recipes.addShapeless(templateItemstack, recipe);
    templateItemstack.addTooltip("An unresearched " ~ format.darkRed("tier 3") ~ format.gray(" research template. Research with research points in a Research Lab."));
}

for templateItemstack in templateItemstacksSpecs {
    //recipes.addShapeless(templateItemstack, [<minecraft:writable_book>]);
    templateItemstack.addTooltip("An unresearched " ~ format.blue("specialization") ~ format.gray(" template. Research with research points in a Civics Bench."));
}