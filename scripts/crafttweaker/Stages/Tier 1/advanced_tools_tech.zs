import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/**
    Anything post smeltry should be put here.  basic_tools_tech should have all the prerequisite materials to this stage
*/

// Stage Name
val stage = "advanced_tools_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <tconstruct:smeltery_controller>,
    <tconstruct:channel>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <tconstruct:tinker_tank_controller>,
    <tconstruct:cast>,
    <tconstruct:clay_cast>,
    <tconstruct:toolforge>,
    <tconstruct:soil>,
    <tconstruct:materials>,
    <tconstruct:seared_tank>,
    <tconstruct:seared_tank:1>,
    <tconstruct:seared_tank:2>,
    <tconstruct:faucet>,
    <tconstruct:smeltery_io>,
    <tconstruct:seared_glass>,
    <tconstruct:seared_furnace_controller>,
    <tconstruct:seared_slab>,
    <tconstruct:seared_slab:1>,
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
    <tconstruct:seared_stairs_creeper>
];

val stageAlloys as ILiquidStack[] = [
    <liquid:stone>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for alloy in stageAlloys {
    mods.tconstruct.Alloy.removeRecipe(alloy);
}