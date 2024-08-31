import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

/**
    Modern Military Tech:
    Unlocks the best techguns that you can get right now as well as military themed vehicles
*/

// Stage Name
val stage = "modern_military_tech";

val stageMods as string[] = [
    "openmodularturrets"
];

val stageItems as IItemStack[] = [
    <techguns:itemshared:17>,
    <techguns:itemshared:18>,
    <techguns:itemshared:19>,
    <techguns:itemshared:20>,
    <techguns:itemshared:114>,
    <techguns:itemshared:116>
];

val techGuns as IItemStack[] = [
    <techguns:m4_infiltrator>,
    <techguns:grenadelauncher>,
    <techguns:minigun>,
    <techguns:mac10>,
    <techguns:aug>,
    <techguns:as50>,
    <techguns:vector>,
    <techguns:scar>,
    <techguns:miningdrill>,
    <techguns:lmg>,
    <techguns:nightvisiongoggles>
];

val techGunRecipes as string[] = [
    "techguns:m4_infiltrator_alt",
    "techguns:grenadelauncher",
    "techguns:minigun_alt",
    "techguns:mac10_alt",
    "techguns:aug_alt",
    "techguns:as50_alt",
    "techguns:vector_alt",
    "techguns:scar_alt",
    "techguns:miningdrill_alt",
    "techguns:lmg_alt",
    "techguns:nightvisiongoggles_alt"
    
];

val vehicles as IItemStack[] = [
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_wintercamo>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_desert>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_desertcamo>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_forrest>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_forrestcamo>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_winter>,
    <mts:unumilitary.unumilitary_trailer_unu_wolf_generator_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_ferret_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_ferret_forrest>,
    <mts:unumilitary.unumilitary_plane_unu_aurornis>,
    <mts:unumilitary.unumilitary_plane_unu_navigator_cargo_ang>,
    <mts:unumilitary.unumilitary_plane_unu_navigator_cargo_blackthorne>,
    <mts:unumilitary.unumilitary_plane_unu_navigator_cargo_orange>,
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_desert>,
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_desertcamo>,
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_forrest>,
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_forrestcamo>,
    <mts:unumilitary.unumilitary_trailer_unu_mule_cargo_winter>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_winter>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_wintercamo>,
    <mts:unumilitary.unumilitary_heli_unu_crow_blackthorne>,
    <mts:unumilitary.unumilitary_heli_unu_crow_desert>,
    <mts:unumilitary.unumilitary_heli_unu_crow_desertcamo>,
    <mts:unumilitary.unumilitary_heli_unu_crow_forrest>,
    <mts:unumilitary.unumilitary_heli_unu_crow_forrestcamo>,
    <mts:unumilitary.unumilitary_heli_unu_crow_winter>,
    <mts:unumilitary.unumilitary_heli_unu_crow_wintercamo>,
    <mts:unumilitary.unumilitary_aagun_unu_cicada_desert>,
    <mts:unumilitary.unumilitary_aagun_unu_cicada_forrest>,
    <mts:unumilitary.unumilitary_aagun_unu_cicada_winter>,
    <mts:unumilitary.unumilitary_airship_unu_aerwhale>,
    <mts:unumilitary.unumilitary_boat_unu_dingy>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_desert>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_desertcamo>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_forrest>,
    <mts:unumilitary.unumilitary_boat_unu_salmon_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_desertcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_forrest>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_pantherx>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_desertcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_forrest>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_amphibious_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_wolf_base_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_forrest>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_desertcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_forrest>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_halftrack_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_ferret_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_desertcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_forrest>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_forrestcamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_winter>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_amphibious_wintercamo>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_desert>,
    <mts:unumilitary.unumilitary_vehicle_unu_mule_base_desertcamo>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_attattention>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_attattention_desert>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_attattention_forrest>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_attattention_winter>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_behindblock>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_behindblock_desert>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_behindblock_forrest>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_behindblock_winter>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_lying>,
    <mts:unumilitary.unumilitary_ammo_unu_ammo_0300mmflak>,
    <mts:unumilitary.unumilitary_ammo_unu_ammo_1000mmrailgun>,
    <mts:unumilitary.unumilitary_ammo_unu_bomb_2500mm>,
    <mts:unuparts.unuparts_part_unu_wheel_standard_offroad_desert>,
    <mts:unuparts.unuparts_part_unu_wheel_standard_offroad_forrest>,
    <mts:unuparts.unuparts_part_unu_wheel_standard_offroad_winter>,
    <mts:unuparts.unuparts_part_unu_wheel_truck_budd_desert>,
    <mts:unuparts.unuparts_part_unu_wheel_truck_budd_forrest>,
    <mts:unuparts.unuparts_part_unu_wheel_truck_budd_winter>,
    <mts:unumilitary.unumilitary_gun_unu_m50cal>,
    <mts:unumilitary.unumilitary_gun_unu_mosquito>,
    <mts:unumilitary.unumilitary_gun_unu_rifle1>,
    <mts:unumilitary.unumilitary_gun_unu_stinger>,
    <mts:unumilitary.unumilitary_gun_unu_turret_dualm50cal>,
    <mts:unumilitary.unumilitary_part_unu_barrel_cicada>,
    <mts:unumilitary.unumilitary_part_unu_turret_pantherx>,
    <mts:unumilitary.unumilitary_ammo_unu_ammo_0055mm>,
    <mts:unumilitary.unumilitary_ammo_unu_ammo_0127mm>,
    <mts:unumilitary.unumilitary_part_unu_crate_24_desert>,
    <mts:unumilitary.unumilitary_part_unu_crate_24_forrest>,
    <mts:unumilitary.unumilitary_part_unu_crate_24_winter>,
    <mts:unumilitary.unumilitary_part_unu_crate_6_desert>,
    <mts:unumilitary.unumilitary_part_unu_crate_6_forrest>,
    <mts:unumilitary.unumilitary_part_unu_crate_6_winter>,
    <mts:unumilitary.unumilitary_gun_unu_locust>,
    <mts:unumilitary.unumilitary_gun_unu_locustlong>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_lying_desert>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_lying_forrest>,
    <mts:unumilitary.unumilitary_decor_blackthorne_soldier_lying_winter>,
    <mts:unuparts.unuparts_part_steve_blackthornesoldier>,
    <mts:unuparts.unuparts_part_steve_blackthornesoldier_desert>,
    <mts:unuparts.unuparts_part_steve_blackthornesoldier_forrest>,
    <mts:unuparts.unuparts_part_steve_blackthornesoldier_winter>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Techguns weapon staging

for item in techGuns {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage(stage, recipe);
}

// Military Vehicles

for item in vehicles {
    ItemStages.addItemStage(stage, item);
}