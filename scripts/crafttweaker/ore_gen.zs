import mods.geolosys.ores;

// Initial test of CraftTweaker Geolosys control.
// This is a much better way of handling ore generation and should be used from here on out.

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
    [List<int>] dimBlacklist
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
    onlyEarth
);

// Coal Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=coal>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=coal>, 
    20, 
    60, 
    128, 
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
    5, 
    50, 
    0.5 as float, 
    onlyEarth
);

// Gold Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=gold>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=gold>, 
    15, 
    40, 
    6, 
    70, 
    0.5 as float, 
    onlyEarth
);

// Lapis Lazuli Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=lapis>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=lapis>, 
    25, 
    44, 
    5, 
    32, 
    0.5 as float, 
    onlyEarth
);

// Quartz Deposit
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=quartz>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=quartz>, 
    26, 
    49, 
    4, 
    70, 
    0.5 as float, 
    onlyEarth
);

// Diamond Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=kimberlite>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=kimberlite>, 
    8, 
    16, 
    4, 
    30, 
    0.5 as float, 
    onlyEarth
);

// Emerald Deposit 
ores.addOre(
    <blockstate:geolosys:ore_vanilla:variant=beryl>, 
    <blockstate:geolosys:ore_sample_vanilla:variant=beryl>, 
    4, 
    32, 
    3, 
    16, 
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
        6, 
        170, 
        0.5 as float, 
        onlyEarth
    );
    // Luna Deposit
    ores.addOre(
        <blockstate:geolosys:ore:variant=hematite>, 
        <blockstate:geolosys:ore_sample:variant=hematite>, 
        32, 
        60, 
        6, 
        85, 
        0.5 as float, 
        onlyLuna
    );
    // Mercury Deposit
    ores.addOre(
        <blockstate:geolosys:ore:variant=hematite>, 
        <blockstate:geolosys:ore_sample:variant=hematite>, 
        32, 
        60, 
        6, 
        340, 
        0.5 as float, 
        onlyEarth
    );

// Iron/Nickel (Limonite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=limonite>, 
    <blockstate:geolosys:ore_sample:variant=limonite>, 
    22, 
    42, 
    4, 
    80, 
    0.5 as float, 
    onlyEarth
);

// Copper Deposit 
ores.addOre(
    [<blockstate:geolosys:ore:variant=malachite>,<blockstate:geolosys:ore:variant=azurite>],
    [50,50],
    [<blockstate:geolosys:ore_sample:variant=malachite>,<blockstate:geolosys:ore_sample:variant=azurite>],
    [50, 50],
    22, 
    44, 
    6, 
    120, 
    0.5 as float, 
    onlyEarth
);

// Tin (Cassiterite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=cassiterite>, 
    <blockstate:geolosys:ore_sample:variant=cassiterite>, 
    44, 
    68, 
    6, 
    60, 
    0.5 as float, 
    onlyEarth
); 

// Tin (Teallite) Deposit 
ores.addOre(
    [<blockstate:geolosys:ore:variant=teallite>,<blockstate:geolosys:ore_vanilla:variant=beryl>],
    [90, 10],
    [<blockstate:geolosys:ore_sample:variant=teallite>, <blockstate:geolosys:ore_sample_vanilla:variant=beryl>],
    [100, 0],
    22, 
    43, 
    2, 
    80, 
    0.5 as float, 
    onlyEarth
);

// Lead (Galena) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=galena>, 
    <blockstate:geolosys:ore_sample:variant=galena>, 
    26, 
    50, 
    2, 
    52, 
    0.5 as float, 
    onlyEarth
);

// Aluminum (Bauxite) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=bauxite>, 
    <blockstate:geolosys:ore_sample:variant=bauxite>, 
    45, 
    70, 
    4, 
    90, 
    0.5 as float, 
    onlyEarth
);

// Platinum (Osmium) Deposit 
ores.addOre(
    <blockstate:geolosys:ore:variant=platinum>, 
    <blockstate:geolosys:ore_sample:variant=platinum>, 
    23, 
    45, 
    4, 
    175, 
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
    3, 
    60, 
    0.5 as float, 
    onlyEarth
);

// Boron/Lithium/Magnesium (Autunite) Deposit
ores.addOre( 
    [<blockstate:nuclearcraft:ore:type=boron>, <blockstate:nuclearcraft:ore:type=lithium>, <blockstate:nuclearcraft:ore:type=magnesium>, <blockstate:minecraft:stone:variant=granite>],
    [20, 50, 20, 10], 
    [<blockstate:geolosys:ore_sample:variant=autunite>, <blockstate:nuclearcraft:ore:type=lithium>, <blockstate:nuclearcraft:ore:type=magnesium>, <blockstate:minecraft:stone:variant=granite>], 
    [100, 0, 0, 0],
    14, 
    33, 
    7, 
    60, 
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
    5, 
    65, 
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
    5, 
    65, 
    0.5 as float, 
    onlyEarth
);