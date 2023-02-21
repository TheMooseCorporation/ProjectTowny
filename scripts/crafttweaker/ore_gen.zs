import mods.geolosys.ores;

// Initial test of CraftTweaker Geolosys control.
// This is a much better way of handling ore generation and should be used from here on out.

val onlyEarth = [-1,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35] as int[];

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
    <blockstate:geolosys:ore_vanilla:0>, 
    <blockstate:ore_sample_vanilla:0>, 
    20, 
    60, 
    128, 
    7, 
    0.5 as float, 
    onlyEarth
);