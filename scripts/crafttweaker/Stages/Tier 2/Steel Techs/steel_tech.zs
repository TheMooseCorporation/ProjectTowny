import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Unlocks the beginning of Immersive engineering... whatever that means
*/

// Stage Name
val stage = "steel_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:treated_wood>,
    <immersiveengineering:treated_wood:1>,
    <immersiveengineering:treated_wood:2>,
    <immersiveengineering:treated_wood_slab>,
    <immersiveengineering:treated_wood_slab:1>,
    <immersiveengineering:treated_wood_slab:2>,
    <immersiveengineering:sheetmetal:4>,
    <immersiveengineering:sheetmetal:7>,
    <immersiveengineering:sheetmetal:8>,
    <immersiveengineering:sheetmetal:9>,
    <immersiveengineering:sheetmetal:10>,
    <immersiveengineering:sheetmetal_slab>,
    <immersiveengineering:sheetmetal_slab:1>,
    <immersiveengineering:sheetmetal_slab:2>,
    <immersiveengineering:sheetmetal_slab:3>,
    <immersiveengineering:sheetmetal_slab:4>,
    <immersiveengineering:sheetmetal_slab:7>,
    <immersiveengineering:sheetmetal_slab:8>,
    <immersiveengineering:sheetmetal_slab:9>,
    <immersiveengineering:sheetmetal_slab:10>,
    <immersiveengineering:metal_decoration1>,
    <immersiveengineering:metal_decoration1:1>,
    <immersiveengineering:metal_decoration1:2>,
    <immersiveengineering:metal_decoration1:3>,
    <immersiveengineering:metal_decoration1:4>,
    <immersiveengineering:metal_decoration1:5>,
    <immersiveengineering:metal_decoration1:6>,
    <immersiveengineering:metal_decoration1:7>,
    <immersiveengineering:metal_decoration2:4>,
    <immersiveengineering:wooden_device0:1>,
    <immersiveengineering:wooden_device0:2>,
    <immersiveengineering:wooden_device0:5>,
    <immersiveengineering:cloth_device>,
    <immersiveengineering:cloth_device:1>,
    <immersiveengineering:sheetmetal>,
    <immersiveengineering:sheetmetal:1>,
    <immersiveengineering:sheetmetal:2>,
    <immersiveengineering:sheetmetal:3>,
    <immersiveengineering:stone_decoration>,
    <immersiveengineering:stone_decoration:1>,
    <immersiveengineering:stone_decoration:2>,
    <immersiveengineering:stone_decoration:3>,
    <immersiveengineering:stone_decoration:4>,
    <immersiveengineering:stone_decoration:5>,
    <immersiveengineering:stone_decoration:6>,
    <immersiveengineering:stone_decoration:7>,
    <immersiveengineering:stone_decoration:10>,
    <immersiveengineering:stone_decoration_slab>,
    <immersiveengineering:stone_decoration_slab:1>,
    <immersiveengineering:stone_decoration_slab:2>,
    <immersiveengineering:stone_decoration_slab:4>,
    <immersiveengineering:stone_decoration_slab:5>,
    <immersiveengineering:stone_decoration_slab:6>,
    <immersiveengineering:stone_decoration_slab:7>,
    <immersiveengineering:stone_decoration_slab:10>,
    <immersiveengineering:stone_decoration_stairs_hempcrete>,
    <immersiveengineering:stone_decoration_stairs_concrete>,
    <immersiveengineering:stone_decoration_stairs_concrete_tile>,
    <immersiveengineering:stone_decoration_stairs_concrete_leaded>,
    <immersiveengineering:treated_wood_stairs0>,
    <immersiveengineering:treated_wood_stairs1>,
    <immersiveengineering:treated_wood_stairs2>,
    <immersiveengineering:wooden_decoration>,
    <immersiveengineering:wooden_decoration:1>,
    <immersiveengineering:wooden_device0>,
    <immersiveengineering:material:7>,
    <immersiveengineering:material:8>,
    <immersiveengineering:material:9>,
    <immersiveengineering:material:17>,
    <immersiveengineering:material:23>,
    <immersiveengineering:metal:8>,
    <immersiveengineering:metal:9>,
    <immersiveengineering:metal:10>,
    <immersiveengineering:metal:11>,
    <immersiveengineering:metal_decoration2:7>,
    <immersiveengineering:metal_decoration2:8>,
    <immersiveengineering:metal_decoration1_slab:1>,
    <immersiveengineering:metal_decoration1_slab:2>,
    <immersiveengineering:metal_decoration1_slab:3>,
    <immersiveengineering:metal_decoration1_slab:5>,
    <immersiveengineering:metal_decoration1_slab:6>,
    <immersiveengineering:metal_decoration1_slab:7>,
    <immersiveengineering:steel_scaffolding_stairs0>,
    <immersiveengineering:steel_scaffolding_stairs1>,
    <immersiveengineering:steel_scaffolding_stairs2>,
    <immersiveengineering:aluminum_scaffolding_stairs0>,
    <immersiveengineering:aluminum_scaffolding_stairs1>,
    <immersiveengineering:aluminum_scaffolding_stairs2>,
    <immersiveengineering:metal_ladder>,
    <immersiveengineering:metal_ladder:1>,
    <immersiveengineering:metal_ladder:2>,
    <immersiveengineering:conveyor>,
    <immersiveengineering:material>,
    <immersiveengineering:material:1>,
    <immersiveengineering:material:2>,
    <immersiveengineering:material:3>,
    <immersiveengineering:material:5>,
    <immersiveengineering:material:6>,
    <immersiveengineering:earmuffs>,
    <immersiveengineering:shield>,
    <immersiveengineering:maintenance_kit>,
    <immersiveengineering:steel_armor_feet>,
    <immersiveengineering:steel_armor_legs>,
    <immersiveengineering:steel_armor_chest>,
    <immersiveengineering:steel_armor_head>,
    <immersivepetroleum:schematic>,
    <immersiveposts:postbase>,
    <immersiveengineering:metal:19>,
    <immersiveengineering:metal:12>,
    <immersiveengineering:metal:11>,
    <immersiveengineering:metal:18>,
    <immersiveengineering:metal:13>,
    <immersiveengineering:metal:16>,
    <immersiveengineering:metal:17>,
    <immersiveengineering:metal:28>,
    <immersiveengineering:metal:30>,
    <immersiveengineering:metal:31>,
    <immersiveengineering:metal:32>,
    <immersiveengineering:metal:33>,
    <immersiveengineering:metal:34>,
    <immersiveengineering:metal:37>,
    <immersiveengineering:metal:38>,
    <immersiveengineering:metal:39>,
    <immersiveengineering:metal:40>,
    <immersiveengineering:tool>,
    <immersiveengineering:tool:1>,
    <immersiveengineering:tool:3>,
    <immersiveengineering:pickaxe_steel>,
    <immersiveengineering:shovel_steel>,
    <immersiveengineering:axe_steel>,
    <immersiveengineering:hoe_steel>,
    <immersiveengineering:sword_steel>,
    <immersiveengineering:toolbox>,
    <immersiveengineering:blueprint>,
    <immersiveengineering:earmuffs>,
    <immersiveengineering:shield>,
    <immersiveengineering:maintenance_kit>,
    <immersiveengineering:steel_armor_feet>,
    <immersiveengineering:steel_armor_legs>,
    <immersiveengineering:steel_armor_chest>,
    <immersiveengineering:steel_armor_head>,
    <immersivepetroleum:schematic>,
    <immersiveengineering:metal:19>,
    <immersiveengineering:metal:12>,
    <immersiveengineering:metal:11>,
    <immersiveengineering:metal:18>,
    <immersiveengineering:metal:13>,
    <immersiveengineering:metal:16>,
    <immersiveengineering:metal:17>,
    <immersiveengineering:metal:28>,
    <immersiveengineering:metal:30>,
    <immersiveengineering:metal:31>,
    <immersiveengineering:metal:32>,
    <immersiveengineering:metal:33>,
    <immersiveengineering:metal:34>,
    <immersiveengineering:metal:37>,
    <immersiveengineering:metal:38>,
    <immersiveengineering:metal:39>,
    <immersiveengineering:metal:40>,
    <immersiveengineering:tool>,
    <immersiveengineering:tool:1>,
    <immersiveengineering:tool:3>,
    <immersiveengineering:pickaxe_steel>,
    <immersiveengineering:shovel_steel>,
    <immersiveengineering:axe_steel>,
    <immersiveengineering:hoe_steel>,
    <immersiveengineering:sword_steel>,
    <immersiveengineering:toolbox>,
    <immersiveengineering:blueprint>,
    <mekanism:basicblock:5>,
    <mekanism:ingot:4>,
    <mekanism:nugget:4>,
    <mekanism:otherdust:1>,
    <techguns:itemshared:84>,
    <techguns:itemshared:85>,
    <immersiveengineering:sheetmetal:5>,
    <immersiveengineering:sheetmetal:6>,
    <immersiveengineering:sheetmetal_slab:5>,
    <immersiveengineering:sheetmetal_slab:6>,
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_iron"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_steel"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_aluminum"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:chute_copper"}),
    <immersiveengineering:metal:36>,
    <immersiveengineering:metal:35>,
    <engineersdecor:treated_wood_windowsill>,
    <engineersdecor:treated_wood_broad_windowsill>,
    <engineersdecor:iron_inset_light>,
    <engineersdecor:iron_floor_edge_light>,
    <engineersdecor:treated_wood_pole_support>,
    <engineersdecor:treated_wood_pole_head>,
    <engineersdecor:thin_steel_pole>,
    <engineersdecor:thick_steel_pole>,
    <engineersdecor:thin_steel_pole_head>,
    <engineersdecor:rebar_concrete_stairs>,
    <engineersdecor:rebar_concrete_slab>,
    <engineersdecor:rebar_concrete>,
    <engineersdecor:slag_brick_wall>,
    <engineersdecor:slag_brick_stairs>,
    <engineersdecor:slag_brick_slab>,
    <engineersdecor:slag_brick_block>,
    <engineersdecor:labeled_crate>,
    <engineersdecor:treated_wood_crafting_table>,
    <engineersdecor:concrete_wall>,
    <engineersdecor:panzerglass_block>,
    <engineersdecor:gas_concrete_wall>,
    <engineersdecor:gas_concrete_stairs>,
    <engineersdecor:gas_concrete_slab>,
    <engineersdecor:gas_concrete>,
    <engineersdecor:rebar_concrete_tile_slab>,
    <engineersdecor:rebar_concrete_tile>,
    <engineersdecor:rebar_concrete_wall>,
    <engineersdecor:steel_framed_window>,
    <engineersdecor:treated_wood_window>,
    <engineersdecor:treated_wood_stool>,
    <engineersdecor:steel_table>,
    <engineersdecor:treated_wood_table>,
    <engineersdecor:treated_wood_pole>,
    <engineersdecor:treated_wood_ladder>,
    <engineersdecor:metal_rung_steps>,
    <engineersdecor:metal_rung_ladder>,
    <engineersdecor:thick_steel_pole_head>,
    <engineersdecor:steel_double_t_support>,
    <engineersdecor:steel_floor_grating>,
    <engineersdecor:steel_mesh_fence>,
    <engineersdecor:steel_mesh_fence_gate>,
    <engineersdecor:sign_hotwire>,
    <engineersdecor:sign_danger>,
    <engineersdecor:sign_defense>,
    <engineersdecor:sign_factoryarea>,
    <engineersdecor:halfslab_sheetmetal_aluminum>,
    <patchouli:guide_book>.withTag({"patchouli:book": "engineersdecor:engineersdecor_manual"}),
    <engineersdoors:fencegate_aluminium>,
    <engineersdoors:fencegate_steel>,
    <engineersdoors:fencegate_treated>,
    <engineersdoors:trapdoor_concrete>,
    <engineersdoors:trapdoor_steel>,
    <engineersdoors:trapdoor_treated>,
    <engineersdoors:door_concrete>,
    <engineersdecor:treated_wood_side_table>,
    <engineersdecor:halfslab_rebar_concrete>,
    <engineersdecor:halfslab_concrete>,
    <engineersdecor:halfslab_gas_concrete>,
    <engineersdecor:halfslab_treated_wood>,
    <engineersdecor:halfslab_sheetmetal_iron>,
    <engineersdecor:halfslab_sheetmetal_steel>,
    <engineersdecor:halfslab_sheetmetal_copper>,
    <engineersdecor:halfslab_sheetmetal_gold>,
    <engineersdecor:sign_radioactive>,
    <engineersdecor:sign_exit>,
    <engineersdecor:sign_laser>,
    <engineersdecor:sign_caution>,
    <engineersdecor:sign_magichazard>,
    <engineersdecor:sign_firehazard>,
    <engineersdecor:sign_hotsurface>,
    <engineersdecor:sign_magneticfield>,
    <engineersdecor:sign_frost>,
    <engineersdoors:door_concrete>,
    <engineersdoors:door_concrete_ornate>,
    <engineersdoors:door_concrete_reinforced>,
    <engineersdoors:door_steel>,
    <engineersdoors:door_steel_ornate>,
    <engineersdoors:door_steel_reinforced>,
    <engineersdoors:door_treated>,
    <engineersdoors:door_treated_ornate>,
    <engineersdoors:door_treated_reinforced>,
    <rsgauges:relay_pulseswitchrx1>,
    <rsgauges:relay_pulseswitchrx2>,
    <rsgauges:relay_bistableswitchrx1>,
    <rsgauges:relay_bistableswitchrx2>,
    <rsgauges:relay_pulseswitchtx1>,
    <rsgauges:relay_bistableswitchtx1>,
    <rsgauges:industrial_knock_switch>,
    <rsgauges:industrial_knock_button>,
    <rsgauges:flatgauge1>,
    <rsgauges:bistableswitch2>,
    <rsgauges:bistableswitch8>,
    <rsgauges:bistableswitch7>,
    <rsgauges:bistableswitch1>,
    <rsgauges:bistableswitch3>,
    <rsgauges:bistableswitch5>,
    <rsgauges:bistableswitch6>,
    <rsgauges:pulseswitch1>,
    <rsgauges:pulseswitch2>,
    <rsgauges:pulseswitch6>,
    <rsgauges:pulseswitch5>,
    <rsgauges:pulseswitch3>,
    <rsgauges:dimmerswitch1>,
    <rsgauges:contactmat1>,
    <rsgauges:contactmat2>,
    <rsgauges:contactmat3>,
    <rsgauges:trapdoorswitch1>,
    <rsgauges:trapdoorswitch2>,
    <rsgauges:trapdoorswitch3>,
    <rsgauges:automaticswitch4>,
    <rsgauges:automaticswitch7>,
    <rsgauges:automaticswitch1>,
    <rsgauges:automaticswitch2>,
    <rsgauges:automaticswitch3>,
    <rsgauges:automaticswitch5>,
    <rsgauges:automaticswitch6>,
    <rsgauges:observerswitch1>,
    <rsgauges:elevator_button>,
    <rsgauges:door_sensor_switch>,
    <rsgauges:dimmerswitch1>,
    <rsgauges:indicator2blink1>,
    <rsgauges:indicator3>,
    <rsgauges:indicator3blink1>,
    <rsgauges:indicator_led_white>,
    <rsgauges:indicator_led_white_blink>,
    <rsgauges:industrial_comparator_switch>,
    <rsgauges:flatgauge4>,
    <rsgauges:bistableswitch4>,
    <rsgauges:valve_wheel_switch>,
    <rsgauges:flatgauge6>,
    <rsgauges:flatgauge2>,
    <rsgauges:flatgauge3>,
    <rsgauges:flatgauge5>,
    <rsgauges:indicator4>,
    <rsgauges:soundindicator1>,
    <rsgauges:indicator1>,
    <rsgauges:indicator1blink1>,
    <rsgauges:indicator2>,
];  

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}
