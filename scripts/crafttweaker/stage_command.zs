#loader crafttweaker

import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

val gameStages = [
    "iron_tech",
    "basic_tools_tech", 
    "cartography_tech",
    "advanced_tools_tech",
    "architecture_tech",
    "cooking_tech",
    "heavy_machinery_tech",
    "steam_energy_tech",
    "arc_smelting_tech",
    "fluidynamics_tech",
    "pollution_management_tech",
    "electricity_tech",
    "railroading_tech",
    "biodiesel_tech",
    "thermodynamics_tech",
    "superconductors_tech",
    "advanced_military_tech",
    "basic_engineering_tech",
    "basic_mechanics_tech",
    "basic_military_tech",
    "basic_circuitry_tech",
    "sailing_tech",
    "blacksmithing_tech",
    "kitchen_tech",
    "oil_processing_tech",
    "pollution_management_tech",
    "chemical_synthesis_tech",
    "computers_tech",
    "automobiles_tech",
    "aeromobiles_tech",
    "server_storage_tech",
    "solar_tech",
    "wireless_technology_tech",
    "atomic_theory_tech",
    "fission_reactors_tech",
    "fusion_reactors_tech",
    "basic_missiles_tech",
    "intercontinental_ballistics_tech",
    "manhatten_project_tech",
    "modern_military_tech",
    "basic_rocketry_tech",
    "space_exploration_tech",
    "space_stations_tech",
    "asteroid_mining_tech",
    "compact_machinery_tech",
    "warp_tech",
    "advanced_compact_machinery_tech",
    "future_tech"
    ] as string[];

events.onCommand(function(event as CommandEvent){

    val command = event.command;

    if(isNull(command) || (command.name != "crafttweaker") || (event.parameters.length == 0) || (event.parameters[0] != "allstage")) {
        return;
    }

    print("Ok the command must be valid");

    if(event.commandSender instanceof IPlayer) {

        val player as IPlayer = event.commandSender;
        player.sendChat("[DEBUG] Unlocking all game stages");

        for stage in gameStages {
            player.addGameStage(stage);
        }
    }
});

