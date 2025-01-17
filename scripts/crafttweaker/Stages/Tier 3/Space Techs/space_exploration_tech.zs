import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.jmapstages.JMapStages;

/**
    Space Exploration:
    The portion of the space techs where you have to do manned missions to collect surface samples on the moon.
    This tech also unlocks satellites from the data you submitted to unlock the tech
*/

// Stage Name
val stage = "space_exploration_tech";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <advancedrocketry:seat>,
    <advancedrocketry:spacehelmet>,
    <advancedrocketry:spacechestplate>,
    <advancedrocketry:spaceleggings>,
    <advancedrocketry:spaceboots>,
    <advancedrocketry:pressuretank>,
    <advancedrocketry:pressuretank:1>,
    <advancedrocketry:oxygencharger>,
    <advancedrocketry:suitworkstation>,
    <advancedrocketry:liquidtank>,
    <advancedrocketry:beacon>,
    <advancedrocketry:landingfloat>,
    <advancedrocketry:oxygendetection>,
    <advancedrocketry:pipesealer>,
    <advancedrocketry:thermitetorch>,
    <advancedrocketry:moonturf>,
    <advancedrocketry:moonturf_dark>,
    <advancedrocketry:thermite>,
    <advancedrocketry:unlittorch>,
    <advancedrocketry:atmanalyser>,
    <advancedrocketry:beaconfinder>,
    <advancedrocketry:itemupgrade:3>,
    <advancedrocketry:itemupgrade:4>,
    <advancedrocketry:sealdetector>,
    <advancedrocketry:iquartzcrucible>,
    <mekanism:basicblock>,
    <mekanism:ingot:1>,
    <mekanism:dust:2>,
    <mekanism:nugget:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Davincis Vessels Harder Balloon Recipe, this isn't that great of a recipe we should change this based on player feedback
Recipes.addShaped(stage, <davincisvessels:balloon>, [[<minecraft:wool>, <minecraft:wool>, <minecraft:wool>],[<minecraft:wool>, <forge:bucketfilled>.withTag({FluidName: "helium3", Amount: 1000}), <minecraft:wool>], [<minecraft:string>, <minecraft:string>, <minecraft:string>]]);
Recipes.addShapeless(stage, <davincisvessels:balloon:1>, [<ore:dyeOrange>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:2>, [<ore:dyeMagenta>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:3>, [<ore:dyeLightBlue>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:4>, [<ore:dyeYellow>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:5>, [<ore:dyeLime>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:6>, [<ore:dyePink>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:7>, [<ore:dyeGray>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:8>, [<ore:dyeLightGray>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:9>, [<ore:dyeCyan>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:10>, [<ore:dyePurple>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:11>, [<ore:dyeBlue>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:12>, [<ore:dyeBrown>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:13>, [<ore:dyeGreen>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:14>, [<ore:dyeRed>, <davincisvessels:balloon>]);
Recipes.addShapeless(stage, <davincisvessels:balloon:15>, [<ore:dyeBlack>, <davincisvessels:balloon>]);

// Journeymap unlock because you launched a satellite
JMapStages.setWaypointStage(stage);
JMapStages.setDeathpointStage(stage);
JMapStages.setMinimapStage(stage);
JMapStages.setFullscreenStage(stage);