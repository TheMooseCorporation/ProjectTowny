import mods.geolosys.ores;
import mods.orestages.OreStages;

// Initial test of CraftTweaker Geolosys control.
// This is a much better way of handling ore generation and should be used from here on out.

// Ore Stage changing
// Nuclear Ores, unlocked with Nuclear Engineering, or Atomic Theory
OreStages.addReplacement("uranium_tech", <geolosys:ore:9>); // Hides Uranium
OreStages.addReplacement("uranium_tech", <geolosys:ore_sample:9>, <minecraft:tallgrass:1>); // Hides Uranium Sample
OreStages.addReplacement("uranium_tech", <nuclearcraft:ore:3>); // Hides Thorium

/* Biome Ideas:
    Clay - Rivers
    Redstone - Snowy Biomes
    Gold (Extra) - Mesa
    Lapis - Desert
    Nickel - Swamps
    Tin - Swamps and Rivers
    Lead - Plains
    Aluminum - Jungle and Redwood Forests
    Uranium - Extreme Hills
    Lithium - Savannas
*/

val onlyEarth = [-1,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35] as int[];   
val onlyLuna = [-1,0,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34] as int[];   
val onlyMercury = [-1,0,1,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35] as int[];

// Example Ore Deposit
/*
ores.addOre(
    [BlockState] oreBlock, 
    [BlockState] sampleBlock, 
    [int] yMin, 
    [int] yMax, 
    [int] size, 
    [int] chance, 
    [float] density, 
    [List<int>] dimBlacklist,
    [List<String>] biomes,
    [bool] isWhitelist
);
*/

// Clay Deposit
ores.addOre(
    <blockstate:minecraft:clay>, 
    <blockstate:contenttweaker:clay_sample>,
    40, 
    70, 
    120, 
    10, 
    1.0 as float, 
    onlyEarth,
    ["minecraft:river"],
    true
);

// Coal Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=coal>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=coal>, 
    20, 
    60, 
    110, 
    7, 
    0.5 as float, 
    onlyEarth
);

// Redstone Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=cinnabar>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=cinnabar>,  
    25, 
    32, 
    50,
    5, 
    0.5 as float, 
    onlyEarth,
    ["minecraft:taiga", "minecraft:ice_flats", "minecraft:ice_mountains", "minecraft:taiga_hills", "minecraft:taiga_cold", "minecraft:taiga_cold_hills", "biomesoplenty:alps", "biomesoplenty:cold_desert", "biomesoplenty:snowy_coniferous_forest", "biomesoplenty:snowy_forest", "biomesoplenty:alps_foothills", "biomesoplenty:snowy_tundra"],
    true
);

// Gold Deposit
    // Regular World Gold Deposit
    ores.addOre(
        <blockstate:geolosys:ore_vanilla:variant=gold>, 
        <blockstate:geolosys:ore_sample_vanilla:variant=gold>, 
        15, 
        40, 
        70,
        4,   
        0.5 as float, 
        onlyEarth
    );
    // Mesa Biome Gold Deposit
    ores.addOre(
        <blockstate:geolosys:ore_vanilla:variant=gold>, 
        <blockstate:geolosys:ore_sample_vanilla:variant=gold>, 
        15, 
        30, 
        80,
        6,   
        0.5 as float, 
        onlyEarth,
        ["minecraft:mesa", "minecraft:mesa_rock", "minecraft:mesa_clear_rock"],
        true
    );

// Lapis Lazuli Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=lapis>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=lapis>, 
    25, 
    44, 
    32, 
    5,  
    0.5 as float, 
    onlyEarth,
    ["minecraft:desert", "minecraft:mutated_desert", "minecraft:desert_hills", "biomesoplenty:cold_desert"],
    true
);

// Quartz Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=quartz>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=quartz>, 
    26, 
    49, 
    70,
    4,  
    0.5 as float, 
    onlyEarth
);

// Diamond Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=kimberlite>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=kimberlite>, 
    8, 
    16, 
    30,
    4, 
    0.5 as float, 
    onlyEarth
);

// Emerald Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=beryl>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=beryl>, 
    4, 
    32, 
    16,
    3,  
    0.5 as float, 
    onlyEarth
);

// Iron (Hematite) Deposit 
    // Overworld Deposit
    ores.addOre(
        <blockstate:geolosys:ore:variant=hematite>, 
        <blockstate:geolosys:ore_sample:variant=hematite>, 
        32, 
        60, 
        130,
        6,  
        0.5 as float, 
        onlyEarth
    );
    // Luna Deposit
    ores.addOre(
        <blockstate:geolosys:ore:variant=hematite>, 
        <blockstate:geolosys:ore_sample:variant=hematite>, 
        20, 
        54, 
        85,
        6,  
        0.5 as float, 
        onlyLuna
    );
    // Mercury Deposit
    ores.addOre(
        <blockstate:geolosys:ore:variant=hematite>, 
        <blockstate:geolosys:ore_sample:variant=hematite>, 
        24, 
        48, 
        340, 
        6,   
        0.5 as float, 
        onlyMercury
    );

// Iron/Nickel (Limonite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=limonite>, 
    <blockstate:geolosys:ore_sample:variant=limonite>, 
    22, 
    42, 
    60, 
    3, 
    0.5 as float, 
    onlyEarth,
    ["minecraft:swampland", "minecraft:mutated_swampland", "minecraft:mushroom_island", "minecraft:mushroom_island_shore", "biomesoplenty:bayou", "biomesoplenty:bog", "biomesoplenty:dead_swamp", "biomesoplenty:lush_swamp", "biomesoplenty:marsh", "biomesoplenty:quagmire", "biomesoplenty:wetland"],
    true
);

// Copper Deposit 
ores.addOre(
    [<blockstate:geolosys:ore:variant=malachite>,<blockstate:geolosys:ore:variant=azurite>],
    [50,50],
    [<blockstate:geolosys:ore_sample:variant=malachite>,<blockstate:geolosys:ore_sample:variant=azurite>],
    [50, 50],
    22, 
    44, 
    80, 
    6, 
    0.5 as float, 
    onlyEarth
);

// Tin (Cassiterite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=cassiterite>, 
    <blockstate:geolosys:ore_sample:variant=cassiterite>, 
    44, 
    68, 
    60, 
    6, 
    0.5 as float, 
    onlyEarth,
    ["minecraft:swampland", "minecraft:mutated_swampland", "minecraft:mushroom_island", "minecraft:mushroom_island_shore", "biomesoplenty:bayou", "biomesoplenty:bog", "biomesoplenty:dead_swamp", "biomesoplenty:lush_swamp", "biomesoplenty:marsh", "biomesoplenty:quagmire", "biomesoplenty:wetland"],
    true
); 

// Tin (Teallite) Deposit 
ores.addOre(
    [<blockstate:geolosys:ore:variant=teallite>,<blockstate:geolosys:ore_vanilla:variant=beryl>],
    [90, 10],
    [<blockstate:geolosys:ore_sample:variant=teallite>, <blockstate:geolosys:ore_sample_vanilla:variant=beryl>],
    [100, 0],
    22, 
    43, 
    80, 
    2, 
    0.5 as float, 
    onlyEarth,
    ["minecraft:river"],
    true
);

// Lead (Galena) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=galena>, 
    <blockstate:geolosys:ore_sample:variant=galena>, 
    26, 
    50, 
    60,
    2,  
    0.5 as float, 
    onlyEarth,
    ["minecraft:mutated_plains", "minecraft:plains", "minecraft:ice_flats", "minecraft:mutated_ice_flats", "biomesoplenty:lavender_fields", "biomesoplenty:meadow", "biomesoplenty:pasture", "biomesoplenty:prairie"],
    true
);

// Aluminum (Bauxite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=bauxite>, 
    <blockstate:geolosys:ore_sample:variant=bauxite>, 
    45, 
    70, 
    70,
    4,  
    0.5 as float, 
    onlyEarth,
    ["minecraft:jungle", "minecraft:jungle_hills", "minecraft:jungle_edge", "minecraft:mutated_jungle", "minecraft:mutated_jungle_edge", "biomesoplenty:rainforest", "biomesoplenty:temperate_rainforest", "biomesoplenty:tropical_rainforest", "biomesoplenty:bamboo_forest", "biomesoplenty:redwood_forest", "biomesoplenty:redwood_forest_edge"],
    true
);

// Platinum (Osmium) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=platinum>, 
    <blockstate:geolosys:ore_sample:variant=platinum>, 
    23, 
    45, 
    175, 
    4, 
    0.5 as float, 
    onlyLuna
);

// The following two deposits could potentially be made stand-alone deposit:
// Uranium/Thorium (Autunite) Deposit
ores.addOre( 
    [<blockstate:geolosys:ore:variant=autunite>, <blockstate:nuclearcraft:ore:type=thorium>, <blockstate:minecraft:stone:variant=granite>],
    [50, 40, 10], 
    [<blockstate:geolosys:ore_sample:variant=autunite>, <blockstate:nuclearcraft:ore:type=thorium>, <blockstate:minecraft:stone:variant=granite>],
    [100, 0, 0], 
    14, 
    33, 
    60,
    3,  
    0.5 as float, 
    onlyEarth,
    ["minecraft:ice_mountains", "minecraft:extreme_hills_with_trees", "minecraft:mutated_extreme_hills", "minecraft:mutated_extreme_hills_with_trees", "minecraft:extreme_hills", "minecraft:smaller_extreme_hills", "biomesoplenty:alps", "biomesoplenty:alps_foothills", "biomesoplenty:crag", "biomesoplenty:overgrown_cliffs"],
    true
);

// Boron/Lithium/Magnesium (Autunite) Deposit
ores.addOre( 
    [<blockstate:nuclearcraft:ore:type=boron>, <blockstate:nuclearcraft:ore:type=lithium>, <blockstate:nuclearcraft:ore:type=magnesium>, <blockstate:minecraft:stone:variant=granite>],
    [20, 50, 20, 10], 
    [<blockstate:geolosys:ore_sample:variant=autunite>, <blockstate:nuclearcraft:ore:type=lithium>, <blockstate:nuclearcraft:ore:type=magnesium>, <blockstate:minecraft:stone:variant=granite>], 
    [100, 0, 0, 0],
    14, 
    33, 
    60,
    4, 
    0.5 as float, 
    onlyEarth,
    ["minecraft:savanna", "minecraft:savanna_rock", "minecraft:mutated_savanna", "minecraft:mutated_savanna_rock", "biomesoplenty:outback", "biomesoplenty:shrubland", "biomesoplenty:brushland"],
    true
);

// Titanium
ores.addOre(
    <blockstate:libvulpes:ore0:varient=8>, 
    <blockstate:contenttweaker:rutile_sample>, 
    22, 
    40, 
    60,
    3,  
    0.5 as float, 
    onlyEarth
);

/*
// Zinc (Sphalerite) Deposit 
[Disabled] Zinc has no use as of now
ores.addOre( 
    <blockstate:geolosys:ore:variant=sphalerite>, 
    <blockstate:geolosys:ore_sample:variant=sphalerite>, 
    37, 
    46, 
    65, 
    5, 
    0.5 as float, 
    onlyEarth
);
*/

// Ardite Deposit
ores.addOre( 
    [<blockstate:minecraft:netherrack>, <blockstate:tconstruct:ore:type=ardite>],
    [85, 15], 
    [<blockstate:contenttweaker:ardite_sample>, <blockstate:minecraft:netherrack>], 
    [100, 0],
    37, 
    46,
    65, 
    5, 
    0.5 as float, 
    [-1,0,1], // This doesn't matter since volcanicbarren is only found on Venus anyway (I'm like 99% sure - Moose)
    ["advancedrocketry:volcanic", "advancedrocketry:volcanicbarren"],
    true
);