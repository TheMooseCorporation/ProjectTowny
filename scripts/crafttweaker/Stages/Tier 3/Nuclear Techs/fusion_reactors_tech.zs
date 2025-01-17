import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Fusion Reactors:
    Unlocks everything to create fusion reactors and molten salt reactors, I may stage this better when I figure out more how they work
*/

// Stage Name
val stage = "fusion_reactors_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    // Everything for molten salt reactors
    <nuclearcraft:salt_fission_controller>,
    <nuclearcraft:salt_fission_wall>,
    <nuclearcraft:salt_fission_glass>,
    <nuclearcraft:salt_fission_frame>,
    <nuclearcraft:salt_fission_beam>,
    <nuclearcraft:salt_fission_vent>,
    <nuclearcraft:salt_fission_vessel>,
    <nuclearcraft:salt_fission_heater>,
    <nuclearcraft:salt_fission_moderator>,
    <nuclearcraft:turbine_glass>,
    <nuclearcraft:turbine_frame>,
    <nuclearcraft:turbine_rotor_shaft>,
    <nuclearcraft:turbine_rotor_blade_steel>,
    <nuclearcraft:turbine_rotor_blade_extreme>,
    <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>,
    <nuclearcraft:turbine_rotor_stator>,
    <nuclearcraft:turbine_rotor_bearing>,
    <nuclearcraft:heat_exchanger_tube_copper>,
    <nuclearcraft:heat_exchanger_tube_hard_carbon>,
    <nuclearcraft:heat_exchanger_tube_thermoconducting>,
    <nuclearcraft:heat_exchanger_condenser_tube_copper>,
    <nuclearcraft:heat_exchanger_condenser_tube_hard_carbon>,
    <nuclearcraft:heat_exchanger_condenser_tube_thermoconducting>,
    <nuclearcraft:heat_exchanger_computer_port>,
    <nuclearcraft:turbine_controller>,
    <nuclearcraft:turbine_wall>,
    <nuclearcraft:salt_fission_distributor>,
    <nuclearcraft:salt_fission_retriever>,
    <nuclearcraft:salt_fission_redstone_port>,
    <nuclearcraft:salt_fission_computer_port>,
    <nuclearcraft:heat_exchanger_controller>,
    <nuclearcraft:heat_exchanger_wall>,
    <nuclearcraft:heat_exchanger_glass>,
    <nuclearcraft:heat_exchanger_frame>,
    <nuclearcraft:heat_exchanger_vent>,
    <nuclearcraft:turbine_dynamo_coil>,
    <nuclearcraft:turbine_dynamo_coil:1>,
    <nuclearcraft:turbine_dynamo_coil:2>,
    <nuclearcraft:turbine_dynamo_coil:3>,
    <nuclearcraft:turbine_dynamo_coil:4>,
    <nuclearcraft:turbine_dynamo_coil:5>,
    <nuclearcraft:turbine_inlet>,
    <nuclearcraft:turbine_outlet>,
    <nuclearcraft:turbine_computer_port>,
    <nuclearcraft:turbine_coil_connector>,
    // Fusion Reactor
    <nuclearcraft:accelerator_electromagnet_idle>,
    <nuclearcraft:electromagnet_supercooler_idle>,
    <nuclearcraft:fusion_core>,
    <nuclearcraft:fusion_connector>,
    <nuclearcraft:fusion_electromagnet_idle>,
    <nuclearcraft:fusion_electromagnet_transparent_idle>,
    // Other Nuclearcraft Lategame items
    <nuclearcraft:helium_collector>,
    <nuclearcraft:helium_collector_compact>,
    <nuclearcraft:helium_collector_dense>,
    <nuclearcraft:nitrogen_collector>,
    <nuclearcraft:nitrogen_collector_compact>,
    <nuclearcraft:nitrogen_collector_dense>,
    <nuclearcraft:tritium_lamp>,
    <nuclearcraft:supercooler_idle>,
    <nuclearcraft:electrolyser_idle>,
    <nuclearcraft:irradiator_idle>,
    <nuclearcraft:dissolver_idle>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}