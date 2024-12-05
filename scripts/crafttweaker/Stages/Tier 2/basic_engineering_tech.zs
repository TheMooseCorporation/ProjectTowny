import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.betterwithmods.Mill;

/**
    Basic Engineering:
    Unlocks early game Better with Mods, the late game stuff was all over the place and a pain to fit into progression, might revist later - Moose
    Also unlocks the project red mods, for cooler redstone!
*/

// Stage Name
val stage = "basic_engineering_tech";

val stageMods as string[] = [
    "projectred-core",
    "projectred-integration",
    "projectred-transmission",
    "projectred-illumination"
];

val stageItems as IItemStack[] = [
    // Look at my note at the bottom, this might make everyone mad.
    <minecraft:piston>,
    <minecraft:sticky_piston>,
    <betterwithmods:vase:11>,
    <betterwithmods:vase:12>,
    <betterwithmods:vase:13>,
    <betterwithmods:vase:14>,
    <betterwithmods:vase:15>,
    <betterwithmods:urn>,
    <betterwithmods:unfired_pottery:1>,
    <betterwithmods:unfired_pottery:2>,
    <betterwithmods:unfired_pottery:3>,
    <betterwithmods:anchor>,
    <betterwithmods:single_machine:1>,
    <betterwithmods:single_machine:3>,
    <betterwithmods:wooden_axle>,
    <betterwithmods:wooden_gearbox>,
    <betterwithmods:wooden_broken_gearbox>,
    <betterwithmods:hibachi>,
    <betterwithmods:booster>,
    <betterwithmods:manual>,
    <betterwithmods:planter>,
    <betterwithmods:planter:1>,
    <betterwithmods:planter:2>,
    <betterwithmods:planter:3>,
    <betterwithmods:planter:4>,
    <betterwithmods:planter:5>,
    <betterwithmods:planter:6>,
    <betterwithmods:planter:7>,
    <betterwithmods:planter:8>,
    <betterwithmods:planter:9>,
    <betterwithmods:vase>,
    <betterwithmods:vase:1>,
    <betterwithmods:vase:2>,
    <betterwithmods:vase:3>,
    <betterwithmods:vase:4>,
    <betterwithmods:vase:5>,
    <betterwithmods:vase:6>,
    <betterwithmods:vase:7>,
    <betterwithmods:vase:8>,
    <betterwithmods:vase:9>,
    <betterwithmods:vase:10>,
    <betterwithmods:material:34>,
    <betterwithmods:material:37>,
    <betterwithmods:material:50>,
    <betterwithmods:axle_generator>,
    <betterwithmods:axle_generator:1>,
    <betterwithmods:axle_generator:2>,
    <betterwithmods:fertilizer>,
    <betterwithmods:material:6>,
    <betterwithmods:material:7>,
    <betterwithmods:material:8>,
    <betterwithmods:material:9>,
    <betterwithmods:material:10>,
    <betterwithmods:material:11>,
    <betterwithmods:material:12>,
    <betterwithmods:material:13>,
    <betterwithmods:material:18>,
    <betterwithmods:material:19>,
    <betterwithmods:material:21>,
    <betterwithmods:material:24>,
    <betterwithmods:material:26>,
    <betterwithmods:material:27>,
    <betterwithmods:material:31>,
    <betterwithmods:material:32>,
    <betterwithmods:material:33>,
    <betterwithmods:unfired_pottery:4>,
    <betterwithmods:unfired_pottery:5>,
    <betterwithmods:bellows>,
    <betterwithmods:bellows:1>,
    <betterwithmods:aesthetic:10>,
    <betterwithmods:light>,
    <betterwithmods:platform>,
    <betterwithmods:screw_pump>,
    <betterwithmods:cooking_pot:1>,
    <betterwithmods:stake>,
    <betterwithmods:material:4>,
    <betterwithmods:material:41>,
    <betterwithmods:aesthetic:9>,
    <betterwithmods:material:3>,
    <betterwithmods:rope>,
    <betterwithmods:aesthetic:4>,
    <betterwithmods:wicker>,
    <betterwithmods:aesthetic:12>,
    <betterwithmods:grate>,
    <betterwithmods:grate:1>,
    <betterwithmods:grate:2>,
    <betterwithmods:grate:3>,
    <betterwithmods:grate:4>,
    <betterwithmods:grate:5>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// I'm moving the piston to this tech to better fit into the mechanic parts progression. This might be a terrible idea? - Moose
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],[<ore:cobblestone>, <ore:gearStone>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:redstone>, <ore:cobblestone>]]);

// Better with Mods recipe tweaks
recipes.remove(<betterwithmods:hibachi>);
recipes.addShaped(<betterwithmods:hibachi>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<ore:materialStoneTool>, <betterwithmods:material:27>, <ore:materialStoneTool>], [<ore:materialStoneTool>, <minecraft:redstone>, <ore:materialStoneTool>]]);