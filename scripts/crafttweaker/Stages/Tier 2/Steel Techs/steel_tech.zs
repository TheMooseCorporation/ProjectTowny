import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Unlocks the beggining of Immersive engineering... whatever that means
*/

// Stage Name
val stage = "steel_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:treated_wood>,
    <immersiveengineering:treated_wood:1>,
    <immersiveengineering:treated_wood:2>,
    <immersiveengineering:treated_wood_slab>,
    <immersiveengineering:treated_wood_slab:1>,
    <immersiveengineering:treated_wood_slab:2>,
    <immersiveengineering:sheetmetal:4>,
    <immersiveengineering:sheetmetal:7>,
    <immersiveengineering:sheetmetal:8>,
    <immersiveengineering:sheetmetal:9>,
    <immersiveengineering:sheetmetal:10>,
    <immersiveengineering:sheetmetal_slab>,
    <immersiveengineering:sheetmetal_slab:1>,
    <immersiveengineering:sheetmetal_slab:2>,
    <immersiveengineering:sheetmetal_slab:3>,
    <immersiveengineering:sheetmetal_slab:4>,
    <immersiveengineering:sheetmetal_slab:7>,
    <immersiveengineering:sheetmetal_slab:8>,
    <immersiveengineering:sheetmetal_slab:9>,
    <immersiveengineering:sheetmetal_slab:10>,
    <immersiveengineering:metal_decoration1>,
    <immersiveengineering:metal_decoration1:1>,
    <immersiveengineering:metal_decoration1:2>,
    <immersiveengineering:metal_decoration1:3>,
    <immersiveengineering:metal_decoration1:4>,
    <immersiveengineering:metal_decoration1:5>,
    <immersiveengineering:metal_decoration1:6>,
    <immersiveengineering:metal_decoration1:7>,
    <immersiveengineering:metal_decoration2:4>,
    <immersiveengineering:wooden_device0:1>,
    <immersiveengineering:wooden_device0:2>,
    <immersiveengineering:wooden_device0:5>,
    <immersiveengineering:cloth_device>,
    <immersiveengineering:cloth_device:1>,
    <immersiveengineering:sheetmetal>,
    <immersiveengineering:sheetmetal:1>,
    <immersiveengineering:sheetmetal:2>,
    <immersiveengineering:sheetmetal:3>,
    <immersiveengineering:stone_decoration>,
    <immersiveengineering:stone_decoration:1>,
    <immersiveengineering:stone_decoration:2>,
    <immersiveengineering:stone_decoration:3>,
    <immersiveengineering:stone_decoration:4>,
    <immersiveengineering:stone_decoration:5>,
    <immersiveengineering:stone_decoration:6>,
    <immersiveengineering:stone_decoration:7>,
    <immersiveengineering:stone_decoration:10>,
    <immersiveengineering:stone_decoration_slab>,
    <immersiveengineering:stone_decoration_slab:1>,
    <immersiveengineering:stone_decoration_slab:2>,
    <immersiveengineering:stone_decoration_slab:4>,
    <immersiveengineering:stone_decoration_slab:5>,
    <immersiveengineering:stone_decoration_slab:6>,
    <immersiveengineering:stone_decoration_slab:7>,
    <immersiveengineering:stone_decoration_slab:10>,
    <immersiveengineering:stone_decoration_stairs_hempcrete>,
    <immersiveengineering:stone_decoration_stairs_concrete>,
    <immersiveengineering:stone_decoration_stairs_concrete_tile>,
    <immersiveengineering:stone_decoration_stairs_concrete_leaded>,
    <immersiveengineering:treated_wood_stairs0>,
    <immersiveengineering:treated_wood_stairs1>,
    <immersiveengineering:treated_wood_stairs2>,
    <immersiveengineering:wooden_decoration>,
    <immersiveengineering:wooden_decoration:1>,
    <immersiveengineering:wooden_device0>
];  

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}