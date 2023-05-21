import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Computers:
    Everything related to computers, opencomputers, random mods that are slightly computer related, the works
*/

// Stage Name
val stage = "computer_tech";

val stageMods as string[] = [
    "opensecurity",
    "computronics",
    "networksmanager",
    "jecalculation"
];

val stageItems as IItemStack[] = [
    // Advanced Rocketry's Precision Assembler, we use this to actually create the computer components (not the base microchips that they require)
    <advancedrocketry:precisionassemblingmachine>,
    // Building Gadget items (They seem like they have computers inside them)
    <buildinggadgets:buildingtool>,
    <buildinggadgets:exchangertool>,
    <buildinggadgets:copypastetool>,
    <buildinggadgets:template>,
    // Opencomputer components and blocks
    <opencomputers:material:15>,
    <opencomputers:material:14>,
    <opencomputers:material:5>,
    <opencomputers:material:28>,
    <opencomputers:material:12>,
    <opencomputers:material:23>,
    <opencomputers:material:24>,
    <opencomputers:material:27>,
    <opencomputers:material:26>,
    <opencomputers:adapter>,
    <opencomputers:assembler>,
    <opencomputers:cable>,
    <opencomputers:capacitor>,
    <opencomputers:case1>,
    <opencomputers:case2>,
    <opencomputers:case3>,
    <opencomputers:chameliumblock>,
    <opencomputers:charger>,
    <opencomputers:disassembler>,
    <opencomputers:diskdrive>,
    <opencomputers:geolyzer>,
    <opencomputers:keyboard>,
    <opencomputers:motionsensor>,
    <opencomputers:powerconverter>,
    <opencomputers:printer>,
    <opencomputers:raid>,
    <opencomputers:redstone>,
    <opencomputers:relay>,
    <opencomputers:screen1>,
    <opencomputers:screen2>,
    <opencomputers:screen3>,
    <opencomputers:endstone>,
    <opencomputers:netsplitter>,
    <opencomputers:transposer>,
    <opencomputers:carpetedcapacitor>,
    <opencomputers:material:1>,
    <opencomputers:component:15>,
    <opencomputers:card:10>,
    <opencomputers:card:11>,
    <opencomputers:card:12>,
    <opencomputers:card:1>,
    <opencomputers:card:2>,
    <opencomputers:card:3>,
    <opencomputers:card:6>,
    <opencomputers:card:4>,
    <opencomputers:material:16>,
    <opencomputers:material:17>,
    <opencomputers:material:18>,
    <opencomputers:material:20>,
    <opencomputers:material:21>,
    <opencomputers:tool>,
    <opencomputers:tool:3>,
    <opencomputers:tool:4>,
    <opencomputers:wrench>,
    <opencomputers:hoverboots>,
    <opencomputers:component>,
    <opencomputers:component:1>,
    <opencomputers:component:2>,
    <opencomputers:component:3>,
    <opencomputers:component:4>,
    <opencomputers:component:5>,
    <opencomputers:component:6>,
    <opencomputers:component:7>,
    <opencomputers:component:8>,
    <opencomputers:component:9>,
    <opencomputers:component:10>,
    <opencomputers:component:11>,
    <opencomputers:component:13>,
    <opencomputers:component:14>,
    <opencomputers:component:16>,
    <opencomputers:component:17>,
    <opencomputers:component:20>,
    <opencomputers:hoverboots>,
    <opencomputers:upgrade>,
    <opencomputers:upgrade:1>,
    <opencomputers:upgrade:2>,
    <opencomputers:upgrade:3>,
    <opencomputers:upgrade:5>,
    <opencomputers:upgrade:6>,
    <opencomputers:upgrade:7>,
    <opencomputers:upgrade:8>,
    <opencomputers:upgrade:9>,
    <opencomputers:upgrade:10>,
    <opencomputers:upgrade:11>,
    <opencomputers:upgrade:12>,
    <opencomputers:upgrade:13>,
    <opencomputers:upgrade:14>,
    <opencomputers:upgrade:15>,
    <opencomputers:upgrade:16>,
    <opencomputers:upgrade:17>,
    <opencomputers:upgrade:18>,
    <opencomputers:upgrade:19>,
    <opencomputers:upgrade:20>,
    <opencomputers:upgrade:21>,
    <opencomputers:upgrade:23>,
    <opencomputers:upgrade:24>,
    <opencomputers:upgrade:26>,
    <opencomputers:upgrade:27>,
    <opencomputers:upgrade:28>,
    <opencomputers:upgrade:33>,
    <opencomputers:card:5>,
    <opencomputers:upgrade:25>,
    <opencomputers:upgrade:29>,
    <opencomputers:storage>,
    <opencomputers:storage:1>,
    <opencomputers:storage:2>,
    <opencomputers:storage:3>,
    <opencomputers:storage:4>,
    <opencomputers:microcontroller>,
    <opencomputers:robot>,
    <opencomputers:print>,
    <opencomputers:powerdistributor>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Building Gadgets alternative recipes
recipes.remove(<buildinggadgets:buildingtool>);
recipes.remove(<buildinggadgets:exchangertool>);
recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:buildingtool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:diamond>, <opencomputers:case1>, <minecraft:diamond>], [<ore:ingotIron>, <opencomputers:card:1>, <ore:ingotIron>]]);
recipes.addShaped(<buildinggadgets:exchangertool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:redstone>, <opencomputers:case1>, <minecraft:redstone>], [<ore:gemDiamond>, <opencomputers:card:1>, <ore:gemDiamond>]]);
recipes.addShaped(<buildinggadgets:copypastetool>, [[<ore:ingotIron>, <opencomputers:component>, <ore:ingotIron>],[<minecraft:emerald>, <opencomputers:case1>, <minecraft:emerald>], [<ore:ingotIron>, <opencomputers:card:1>, <ore:ingotIron>]]);
// Computronics Tape Disk
recipes.addShapeless(<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "tape"}, "oc:color": 15, "oc:lootFactory": "computronics:tape"}), [<opencomputers:storage:1>,<computronics:tape>]);
