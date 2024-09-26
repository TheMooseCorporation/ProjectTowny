#priority 0
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import crafttweaker.item.IItemStack;

// Handles initialization of research items, including resarch points, items, and templates
// For thing registered after creation like tooltips, recipes, etc check research_items_post.zs 

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
    var templateBuilder = VanillaFactory.createItem(research ~ "_template");
    researchBuilder.maxStackSize = 1;
    templateBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_main");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_side");
    }
    templateBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_template");
    researchBuilder.register();
    templateBuilder.register();
}

for research, isMainTech in tier2Stages {
    var researchBuilder = VanillaFactory.createItem(research);
    var templateBuilder = VanillaFactory.createItem(research ~ "_template");
    researchBuilder.maxStackSize = 1;
    templateBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_main");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_side");
    }
    templateBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_template");
    researchBuilder.register();
    templateBuilder.register();
}

for research, isMainTech in tier3Stages {
    var researchBuilder = VanillaFactory.createItem(research);
    var templateBuilder = VanillaFactory.createItem(research ~ "_template");
    researchBuilder.maxStackSize = 1;
    templateBuilder.maxStackSize = 1;
    if (isMainTech) {
        researchBuilder.textureLocation = ResourceLocation.create("opencomputers:items/floppy_dyered");
    }
    else {
        researchBuilder.textureLocation = ResourceLocation.create("opencomputers:items/floppy_dyegreen");
    }
    templateBuilder.textureLocation = ResourceLocation.create("opencomputers:items/floppy_dyegray");
    researchBuilder.register();
    templateBuilder.register();
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
    var templateBuilder = VanillaFactory.createItem(specialization ~ "_template");
    researchBuilder.maxStackSize = 1;
    templateBuilder.maxStackSize = 1;
    researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_spec");
    templateBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_one_template");
    researchBuilder.register();
    templateBuilder.register();
}

for specialization in tier2Specs {
    var researchBuilder = VanillaFactory.createItem(specialization);
    var templateBuilder = VanillaFactory.createItem(specialization ~ "_template");
    researchBuilder.maxStackSize = 1;
    templateBuilder.maxStackSize = 1;
    researchBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_spec");
    templateBuilder.textureLocation = ResourceLocation.create("contenttweaker:items/tier_two_template");
    researchBuilder.register();
    templateBuilder.register();
}