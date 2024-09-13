#priority 0
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;

// This script is terribly unorganized, maybe I'll fix it one day... - Moose

val researchPointItems as string[] = [
    "basic_materials_points",
    "blacksmith_points",
    "agriculture_points",
    "advanced_materials_points",
    "engineering_points",
    "military_points",
    "electricity_points",
    "fluid_points",
    "petroleum_points",
    "mechanical_points",
    "electronic_points",
    "chemical_points",
    "nuclear_points",
    "rocketry_points",
    "propellant_points",
    "exotic_materials_points"
];

for researchPointItem in researchPointItems {
    VanillaFactory.createItem(researchPointItem).register();
}

/*
// Research Points
var basicMaterials = VanillaFactory.createItem("basic_materials_points");
basicMaterials.register();
var blacksmith = VanillaFactory.createItem("blacksmith_points");
blacksmith.register();
var agriculture = VanillaFactory.createItem("agriculture_points");
agriculture.register();
var advancedMaterials = VanillaFactory.createItem("advanced_materials_points");
advancedMaterials.register();
var engineering = VanillaFactory.createItem("engineering_points");
engineering.register();
var military = VanillaFactory.createItem("military_points");
military.register();
var electricity = VanillaFactory.createItem("electricity_points");
electricity.register();
var fluid = VanillaFactory.createItem("fluid_points");
fluid.register();
var petroleum = VanillaFactory.createItem("petroleum_points");
petroleum.register();
var mechanical = VanillaFactory.createItem("mechanical_points");
mechanical.register();
var electronic = VanillaFactory.createItem("electronic_points");
electronic.register();
var chemical = VanillaFactory.createItem("chemical_points");
chemical.register();
var nuclear = VanillaFactory.createItem("nuclear_points");
nuclear.register();
var rocketry = VanillaFactory.createItem("rocketry_points");
rocketry.register();
var propellant = VanillaFactory.createItem("propellant_points");
propellant.register();
var exoticMaterials = VanillaFactory.createItem("exotic_materials_points");
exoticMaterials.register();
*/

val tier1Stages = {
    "advanced_redstone_tech" : false,
    "advanced_tools_tech" : false,
    "architecture_tech" : false,
    "basic_engineering_tech" : false,
    "basic_military_tech" : false,
    "basic_tools_tech" : true, 
    "blacksmithing_tech" : false,
    "cartography_tech" : false,
    "cooking_tech" : false,
    "electricity_tech" : true,
    "iron_tech" : true,
    "kitchen_tech" : false,
    "railroading_tech" : false,
    "sailing_tech" : false,
    "steel_tech" : true
} as bool[string];

val tier2Stages = {
    "advanced_military_tech" : false,
    "aeromobiles_tech" : false,
    "arc_smelting_tech" : false,
    "atomic_theory_tech" : false,
    "basic_circuitry_tech" : true,
    "biodiesel_tech" : false,
    "chemical_synthesis_tech" : false,
    "computer_tech" : false,
    "fluidynamics_tech" : false,
    "heavy_machinery_tech" : true,
    "logistics_tech" : false,
    "mechanics_tech" : false,
    "oil_processing_tech" : true,
    "pollution_management_tech" : false,
    "replaceable_parts_tech" : true,
    "scientific_theory_tech" : true,
    "server_storage_tech" : false,
    "solar_tech" : false,
    "steam_energy_tech" : false,
    "thermodynamics_tech" : false,
    "wireless_tech" : false
} as bool[string];

val tier3Stages = {
    "advanced_compact_machinery_tech" : true, 
    "asteroid_mining_tech" : true,
    "basic_missiles_tech" : false,
    "basic_rocketry_tech" : true,
    "compact_machinery_tech" : true,
    "fission_reactors_tech" : true, 
    "fusion_reactors_tech" : false,
    "future_tech" : true,
    "intercontinental_ballistics_tech" : true,
    "manhattan_project_tech" : false,
    "modern_military_tech" : false,
    "space_exploration_tech" : true,
    "space_stations_tech" : true,
    "warp_tech" : true
} as bool[string];

for research, isMainTech in tier1Stages {
    var researchBuilder = VanillaFactory.createItem(research);
    researchBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_main");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_side");
    }
    researchBuilder.register();
    /*
    var researchTemplateBuilder = VanillaFactory.createItem(research~"_template")
    researchTemplateBuilder.maxStackSize = 1;
    researchTemplateBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_template");*/
}

for research, isMainTech in tier2Stages {
    var researchBuilder = VanillaFactory.createItem(research);
    researchBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_main");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_side");
    }
    researchBuilder.register();
}

for research, isMainTech in tier3Stages {
    var researchBuilder = VanillaFactory.createItem(research);
    researchBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("opencomputers:items/floppy_dyered");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("opencomputers:items/floppy_dyegreen");
    }
    researchBuilder.register();
}

val tier1Specs as string[] = [
    "agriculture_spec",
    "agriculture_tech_spec",
    "forestry_spec",
    "forestry_tech_spec",
    "mining_spec",
    "mining_tech_spec"
];

val tier2Specs as string[] = [
    "composite_construction_spec",
    "composite_construction_tech_spec",
    "electrical_distribution_spec",
    "electrical_distribution_tech_spec",
    "industrial_manufacturing_spec",
    "industrial_manufacturing_tech_spec",
    "chemical_engineering_spec",
    "chemical_engineering_tech_spec",
    "electrical_engineering_spec",
    "electrical_engineering_tech_spec",
    "mechanical_engineering_spec",
    "mechanical_engineering_tech_spec",
    "nuclear_engineering_spec",
    "nuclear_engineering_tech_spec"
];

for specialization in tier1Specs {
    var researchBuilder = VanillaFactory.createItem(specialization);
    researchBuilder.maxStackSize = 1;
    researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_spec");
    researchBuilder.register();
}

for specialization in tier2Specs {
    var researchBuilder = VanillaFactory.createItem(specialization);
    researchBuilder.maxStackSize = 1;
    researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_spec");
    researchBuilder.register();
}


/*

// Completed Research Data
// Tier 1 Techs
var iron_tech = VanillaFactory.createItem("iron_tech");
iron_tech.maxStackSize = 1;
iron_tech.register();
var basic_tools_tech = VanillaFactory.createItem("basic_tools_tech");
basic_tools_tech.maxStackSize = 1;
basic_tools_tech.register();
var cooking_tech = VanillaFactory.createItem("cooking_tech");
cooking_tech.maxStackSize = 1;
cooking_tech.register();
var cartography_tech = VanillaFactory.createItem("cartography_tech");
cartography_tech.maxStackSize = 1;
cartography_tech.register();
var architecture_tech = VanillaFactory.createItem("architecture_tech");
architecture_tech.maxStackSize = 1;
architecture_tech.register();
var advanced_tools_tech = VanillaFactory.createItem("advanced_tools_tech");
advanced_tools_tech.maxStackSize = 1;
advanced_tools_tech.register();

// Tier 1 Specs
var forestry_spec = VanillaFactory.createItem("forestry_spec");
forestry_spec.maxStackSize = 1;
forestry_spec.register();
var forestry_tech_spec = VanillaFactory.createItem("forestry_tech_spec");
forestry_tech_spec.maxStackSize = 1;
forestry_tech_spec.register();
var agriculture_spec = VanillaFactory.createItem("agriculture_spec");
agriculture_spec.maxStackSize = 1;
agriculture_spec.register();
var agriculture_tech_spec = VanillaFactory.createItem("agriculture_tech_spec");
agriculture_tech_spec.maxStackSize = 1;
agriculture_tech_spec.register();
var mining_spec = VanillaFactory.createItem("mining_spec");
mining_spec.maxStackSize = 1;
mining_spec.register();
var mining_tech_spec = VanillaFactory.createItem("mining_tech_spec");
mining_tech_spec.maxStackSize = 1;
mining_tech_spec.register();

// Tier 2 Techs
var basic_engineering_tech = VanillaFactory.createItem("basic_engineering_tech");
basic_engineering_tech.maxStackSize = 1;
basic_engineering_tech.register();
var kitchen_tech = VanillaFactory.createItem("kitchen_tech");
kitchen_tech.maxStackSize = 1;
kitchen_tech.register();
var blacksmithing_tech = VanillaFactory.createItem("blacksmithing_tech");
blacksmithing_tech.maxStackSize = 1;
blacksmithing_tech.register();
var sailing_tech = VanillaFactory.createItem("sailing_tech");
sailing_tech.maxStackSize = 1;
sailing_tech.register();
var steel_tech = VanillaFactory.createItem("steel_tech");
steel_tech.maxStackSize = 1;
steel_tech.register();
var railroading_tech = VanillaFactory.createItem("railroading_tech");
railroading_tech.maxStackSize = 1;
railroading_tech.register();
var basic_military_tech = VanillaFactory.createItem("basic_military_tech");
basic_military_tech.maxStackSize = 1;
basic_military_tech.register();
var electricity_tech = VanillaFactory.createItem("electricity_tech");
electricity_tech.maxStackSize = 1;
electricity_tech.register();
var pollution_management_tech = VanillaFactory.createItem("pollution_management_tech");
pollution_management_tech.maxStackSize = 1;
pollution_management_tech.register();
var fluidynamics_tech = VanillaFactory.createItem("fluidynamics_tech");
fluidynamics_tech.maxStackSize = 1;
fluidynamics_tech.register();
var thermodynamics_tech = VanillaFactory.createItem("thermodynamics_tech");
thermodynamics_tech.maxStackSize = 1;
thermodynamics_tech.register();
var steam_energy_tech = VanillaFactory.createItem("steam_energy_tech");
steam_energy_tech.maxStackSize = 1;
steam_energy_tech.register();
var heavy_machinery_tech = VanillaFactory.createItem("heavy_machinery_tech");
heavy_machinery_tech.maxStackSize = 1;
heavy_machinery_tech.register();
var logistics_tech = VanillaFactory.createItem("logistics_tech");
logistics_tech.maxStackSize = 1;
logistics_tech.register();
var arc_smelting_tech = VanillaFactory.createItem("arc_smelting_tech");
arc_smelting_tech.maxStackSize = 1;
arc_smelting_tech.register();
var oil_processing_tech = VanillaFactory.createItem("oil_processing_tech");
oil_processing_tech.maxStackSize = 1;
oil_processing_tech.register();
var biodiesel_tech = VanillaFactory.createItem("biodiesel_tech");
biodiesel_tech.maxStackSize = 1;
biodiesel_tech.register();
var advanced_military_tech = VanillaFactory.createItem("advanced_military_tech");
advanced_military_tech.maxStackSize = 1;
advanced_military_tech.register();
var replaceable_parts_tech = VanillaFactory.createItem("replaceable_parts_tech");
replaceable_parts_tech.maxStackSize = 1;
replaceable_parts_tech.register();
var basic_circuitry_tech = VanillaFactory.createItem("basic_circuitry_tech");
basic_circuitry_tech.maxStackSize = 1;
basic_circuitry_tech.register();

// Tier 2 Specs
var composite_construction_spec = VanillaFactory.createItem("composite_construction_spec");
composite_construction_spec.maxStackSize = 1;
composite_construction_spec.register();
var composite_construction_tech_spec = VanillaFactory.createItem("composite_construction_tech_spec");
composite_construction_tech_spec.maxStackSize = 1;
composite_construction_tech_spec.register();
var electrical_distribution_spec = VanillaFactory.createItem("electrical_distribution_spec");
electrical_distribution_spec.maxStackSize = 1;
electrical_distribution_spec.register();
var electrical_distribution_tech_spec = VanillaFactory.createItem("electrical_distribution_tech_spec");
electrical_distribution_tech_spec.maxStackSize = 1;
electrical_distribution_tech_spec.register();
var industrial_manufacturing_spec = VanillaFactory.createItem("industrial_manufacturing_spec");
industrial_manufacturing_spec.maxStackSize = 1;
industrial_manufacturing_spec.register();
var industrial_manufacturing_tech_spec = VanillaFactory.createItem("industrial_manufacturing_tech_spec");
industrial_manufacturing_tech_spec.maxStackSize = 1;
industrial_manufacturing_tech_spec.register();

// Tier 3 Techs
var chemical_synthesis_tech = VanillaFactory.createItem("chemical_synthesis_tech");
chemical_synthesis_tech.maxStackSize = 1;
chemical_synthesis_tech.register();
var mechanics_tech = VanillaFactory.createItem("mechanics_tech");
mechanics_tech.maxStackSize = 1;
mechanics_tech.register();
var computer_tech = VanillaFactory.createItem("computer_tech");
computer_tech.maxStackSize = 1;
computer_tech.register();
var atomic_theory_tech = VanillaFactory.createItem("atomic_theory_tech");
atomic_theory_tech.maxStackSize = 1;
atomic_theory_tech.register();
var aeromobiles_tech = VanillaFactory.createItem("aeromobiles_tech");
aeromobiles_tech.maxStackSize = 1;
aeromobiles_tech.register();
var server_storage_tech = VanillaFactory.createItem("server_storage_tech");
server_storage_tech.maxStackSize = 1;
server_storage_tech.register();
var wireless_tech = VanillaFactory.createItem("wireless_tech");
wireless_tech.maxStackSize = 1;
wireless_tech.register();
var scientific_theory_tech = VanillaFactory.createItem("scientific_theory_tech");
scientific_theory_tech.maxStackSize = 1;
scientific_theory_tech.register();
var solar_tech = VanillaFactory.createItem("solar_tech");
solar_tech.maxStackSize = 1;
solar_tech.register();
var basic_missiles_tech = VanillaFactory.createItem("basic_missiles_tech");
basic_missiles_tech.maxStackSize = 1;
basic_missiles_tech.register();
var modern_military_tech = VanillaFactory.createItem("modern_military_tech");
modern_military_tech.maxStackSize = 1;
modern_military_tech.register();
var basic_rocketry_tech = VanillaFactory.createItem("basic_rocketry_tech");
basic_rocketry_tech.maxStackSize = 1;
basic_rocketry_tech.register();
var intercontinental_ballistics_tech = VanillaFactory.createItem("intercontinental_ballistics_tech");
intercontinental_ballistics_tech.maxStackSize = 1;
intercontinental_ballistics_tech.register();
var space_exploration_tech = VanillaFactory.createItem("space_exploration_tech");
space_exploration_tech.maxStackSize = 1;
space_exploration_tech.register();
var fission_reactors_tech = VanillaFactory.createItem("fission_reactors_tech");
fission_reactors_tech.maxStackSize = 1;
fission_reactors_tech.register();
var manhattan_project_tech = VanillaFactory.createItem("manhattan_project_tech");
manhattan_project_tech.maxStackSize = 1;
manhattan_project_tech.register();
var space_stations_tech = VanillaFactory.createItem("space_stations_tech");
space_stations_tech.maxStackSize = 1;
space_stations_tech.register();
var fusion_reactors_tech = VanillaFactory.createItem("fusion_reactors_tech");
fusion_reactors_tech.maxStackSize = 1;
fusion_reactors_tech.register();
var compact_machinery_tech = VanillaFactory.createItem("compact_machinery_tech");
compact_machinery_tech.maxStackSize = 1;
compact_machinery_tech.register();
var asteroid_mining_tech = VanillaFactory.createItem("asteroid_mining_tech");
asteroid_mining_tech.maxStackSize = 1;
asteroid_mining_tech.register();
var advanced_compact_machinery_tech = VanillaFactory.createItem("advanced_compact_machinery_tech");
advanced_compact_machinery_tech.maxStackSize = 1;
advanced_compact_machinery_tech.register();
var warp_tech = VanillaFactory.createItem("warp_tech");
warp_tech.maxStackSize = 1;
warp_tech.register();
var future_tech = VanillaFactory.createItem("future_tech");
future_tech.maxStackSize = 1;
future_tech.register();

// Tier 3 Specs
var chemical_engineering_spec = VanillaFactory.createItem("chemical_engineering_spec");
chemical_engineering_spec.maxStackSize = 1;
chemical_engineering_spec.register();
var chemical_engineering_tech_spec = VanillaFactory.createItem("chemical_engineering_tech_spec");
chemical_engineering_tech_spec.maxStackSize = 1;
chemical_engineering_tech_spec.register();
var mechanical_engineering_spec = VanillaFactory.createItem("mechanical_engineering_spec");
mechanical_engineering_spec.maxStackSize = 1;
mechanical_engineering_spec.register();
var mechanical_engineering_tech_spec = VanillaFactory.createItem("mechanical_engineering_tech_spec");
mechanical_engineering_tech_spec.maxStackSize = 1;
mechanical_engineering_tech_spec.register();
var electrical_engineering_spec = VanillaFactory.createItem("electrical_engineering_spec");
electrical_engineering_spec.maxStackSize = 1;
electrical_engineering_spec.register();
var electrical_engineering_tech_spec = VanillaFactory.createItem("electrical_engineering_tech_spec");
electrical_engineering_tech_spec.maxStackSize = 1;
electrical_engineering_tech_spec.register();
var nuclear_engineering_spec = VanillaFactory.createItem("nuclear_engineering_spec");
nuclear_engineering_spec.maxStackSize = 1;
nuclear_engineering_spec.register();
var nuclear_engineering_tech_spec = VanillaFactory.createItem("nuclear_engineering_tech_spec");
nuclear_engineering_tech_spec.maxStackSize = 1;
nuclear_engineering_tech_spec.register();
*/