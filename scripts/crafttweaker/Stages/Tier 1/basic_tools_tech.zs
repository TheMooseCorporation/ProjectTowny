import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.TinkerStages;

/**
    This gamestage should add tinkers' construct tools pre-smeltery, notably unlocks the part builder, stencil table, and tool station
*/

// Stage Name
val stage = "basic_tools_tech";

val stageMods as string[] = [
    "toolbelt",
    "ironchest"
];

val stageItems as IItemStack[] = [
    <rsgauges:contactmat_rustic2>,
    <rsgauges:contactmat_rustic3>,
    <rsgauges:trapdoorswitch_rustic1>,
    <rsgauges:trapdoorswitch_rustic2>,
    <rsgauges:trapdoorswitch_rustic3>,
    <rsgauges:gauge_rustic2>,
    <rsgauges:indicator_rustic_flag>,
    <rsgauges:bistableswitch_rustic1>,
    <rsgauges:bistableswitch_rustic2>,
    <rsgauges:bistableswitch_rustic3>,
    <rsgauges:bistableswitch_rustic7>,
    <rsgauges:pulseswitch_rustic1>,
    <rsgauges:pulseswitch_rustic2>,
    <rsgauges:pulseswitch_rustic3>,
    <rsgauges:pulseswitch_rustic7>,
    <rsgauges:contactmat_rustic1>,
    <rsgauges:arrowtarget>,
    <tconstruct:tooltables:1>,
    <tconstruct:tooltables:2>,
    <tconstruct:tooltables:3>,
    <tconstruct:tooltables:4>,
    <tconstruct:tooltables:5>,
    <locks:spring>,
    <locks:wood_lock_mechanism>,
    <locks:iron_lock_mechanism>,
    <locks:wood_lock>,
    <locks:iron_lock>,
    <betterwithmods:hand_crank>,
    <betterwithmods:material>,
    <betterwithmods:shaft>,
    <betterwithmods:material:22>
];

val nonStagedItems as IItemStack[] = [
    <tconstruct:seared_tank>,
    <tconstruct:seared_tank:1>,
    <tconstruct:seared_tank:2>,
    <tconstruct:faucet>,
    <tconstruct:smeltery_io>,
    <tconstruct:seared_glass>,
    <tconstruct:seared_furnace_controller>,
    <tconstruct:seared_slab>,
    <tconstruct:seared_slab:1>,
    <tconstruct:soil>,
    <tconstruct:materials>,
    <adchimneys:seared_brick>,
    <adchimneys:seared_brick:1>,
    <adchimneys:seared_brick:2>,
    <adchimneys:seared_brick_fancy>,
    <adchimneys:seared_brick_fancy:1>,
    <adchimneys:seared_brick_fancy:2>,
    <adchimneys:seared_brick_small>,
    <adchimneys:seared_brick_small:1>,
    <adchimneys:seared_brick_small:2>,
    <adchimneys:seared_brick_triangle>,
    <adchimneys:seared_brick_triangle:1>,
    <adchimneys:seared_brick_triangle:2>,
    <tconstruct:materials>,
    <tconstruct:seared>,
    <tconstruct:seared:1>,
    <tconstruct:seared:2>,
    <tconstruct:seared:3>,
    <tconstruct:seared:4>,
    <tconstruct:seared:5>,
    <tconstruct:seared:6>,
    <tconstruct:seared:7>,
    <tconstruct:seared:8>,
    <tconstruct:seared:9>,
    <tconstruct:seared:10>,
    <tconstruct:seared:11>,
    <tconstruct:seared_slab:2>,
    <tconstruct:seared_slab:3>,
    <tconstruct:seared_slab:4>,
    <tconstruct:seared_slab:5>,
    <tconstruct:seared_slab:5>,
    <tconstruct:seared_slab:6>,
    <tconstruct:seared_slab:7>,
    <tconstruct:seared_slab2>,
    <tconstruct:seared_slab2:1>,
    <tconstruct:seared_slab2:2>,
    <tconstruct:seared_slab2:3>,
    <tconstruct:seared_stairs_stone>,
    <tconstruct:seared_stairs_cobble>,
    <tconstruct:seared_stairs_paver>,
    <tconstruct:seared_stairs_brick>,
    <tconstruct:seared_stairs_brick_cracked>,
    <tconstruct:seared_stairs_brick_fancy>,
    <tconstruct:seared_stairs_brick_square>,
    <tconstruct:seared_stairs_brick_triangle>,
    <tconstruct:seared_stairs_brick_small>,
    <tconstruct:seared_stairs_road>,
    <tconstruct:seared_stairs_tile>,
    <tconstruct:seared_stairs_creeper>,
    <tconstruct:seared_slab:2>,
    <tconstruct:seared_slab:3>,
    <tconstruct:seared_slab:4>,
    <tconstruct:seared_slab:5>,
    <tconstruct:seared_slab:5>,
    <tconstruct:seared_slab:6>,
    <tconstruct:seared_slab:7>,
    <tconstruct:seared_slab2>,
    <tconstruct:seared_slab2:1>,
    <tconstruct:seared_slab2:2>,
    <tconstruct:seared_slab2:3>,
    <tconstruct:seared_stairs_stone>,
    <tconstruct:seared_stairs_cobble>,
    <tconstruct:seared_stairs_paver>,
    <tconstruct:seared_stairs_brick>,
    <tconstruct:seared_stairs_brick_cracked>,
    <tconstruct:seared_stairs_brick_fancy>,
    <tconstruct:seared_stairs_brick_square>,
    <tconstruct:seared_stairs_brick_triangle>,
    <tconstruct:seared_stairs_brick_small>,
    <tconstruct:seared_stairs_road>,
    <tconstruct:seared_stairs_tile>,
    <tconstruct:toolforge>,
    <tconstruct:throwball:1>,
    <tconstruct:materials:14>,
    <tconstruct:materials:15>,
    <tconstruct:materials:16>
];


for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

//These were all in the legacy file and looked too important to not have merged over
TinkerStages.addGeneralCraftingStage(stage);
TinkerStages.addGeneralPartBuildingStage(stage);

TinkerStages.addToolTypeStage("disabled", "tconstruct:hammer");
TinkerStages.addToolTypeStage("disabled", "tconstruct:shuriken");
TinkerStages.addModifierStage("disabled", "luck");
TinkerStages.addModifierStage("disabled", "sharp");

// TODO Move to proper tech files
recipes.remove(<tconstruct:materials:13>);
recipes.remove(<tconstruct:materials:12>);
recipes.addShaped(<tconstruct:materials:13>, [[null, <minecraft:piston>, null],[<minecraft:dye:4>, <tconstruct:ingots:2>, <minecraft:dye:4>], [null, <minecraft:piston>, null]]);
recipes.addShaped(<tconstruct:materials:12>, [[null, <minecraft:dye:4>, null],[<minecraft:piston>, <tconstruct:ingots:2>, <minecraft:piston>], [null, <minecraft:dye:4>, null]]);

TinkerStages.addMaterialStage("composite_construction_spec", "pigiron");
TinkerStages.addMaterialStage("asteroid_mining_tech", "cobalt");
TinkerStages.addMaterialStage("warp_tech", "ardite");
TinkerStages.addMaterialStage("warp_tech", "ardite");

var found = false;
for item in loadedMods["tconstruct"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage(stage, item);
        ItemStages.addItemStage(stage, item);
    }
    found = false;
}
