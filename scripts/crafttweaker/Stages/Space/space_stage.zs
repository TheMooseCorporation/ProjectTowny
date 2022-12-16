import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

val spaceItems as IItemStack[] = [
    <advancedrocketry:guidancecomputer>,
    <advancedrocketry:seat>,
    <advancedrocketry:planetidchip>,
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
    <advancedrocketry:iquartzcrucible>
];

for item in spaceItems{
    Recipes.setRecipeStage("space_stage", item);
    ItemStages.addItemStage("space_stage", item);
}

Recipes.addShaped("space_stage", <photoptics:binoculars_ultimate>, [[<minecraft:glass_pane>, null, <minecraft:glass_pane>],[<mekanism:controlcircuit:2>, <ore:ingotSteel>, <mekanism:controlcircuit:2>], [<minecraft:glass_pane>, null, <minecraft:glass_pane>]]);

Recipes.addShaped("space_stage", <davincisvessels:balloon>, [[<minecraft:wool>, <minecraft:wool>, <minecraft:wool>],[<minecraft:wool>, <forge:bucketfilled>.withTag({FluidName: "helium_3", Amount: 1000}), <minecraft:wool>], [<minecraft:string>, <minecraft:string>, <minecraft:string>]]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:1>, [<ore:dyeOrange>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:2>, [<ore:dyeMagenta>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:3>, [<ore:dyeLightBlue>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:4>, [<ore:dyeYellow>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:5>, [<ore:dyeLime>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:6>, [<ore:dyePink>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:7>, [<ore:dyeGray>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:8>, [<ore:dyeLightGray>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:9>, [<ore:dyeCyan>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:10>, [<ore:dyePurple>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:11>, [<ore:dyeBlue>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:12>, [<ore:dyeBrown>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:13>, [<ore:dyeGreen>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:14>, [<ore:dyeRed>, <davincisvessels:balloon>]);
Recipes.addShapeless("space_stage", <davincisvessels:balloon:15>, [<ore:dyeBlack>, <davincisvessels:balloon>]);

