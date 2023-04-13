import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Wiring and bits
*/

// Stage Name
val stage = "electricity_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersiveengineering:wooden_device0:3>,
    <immersiveengineering:wooden_device0:6>,
    <immersiveengineering:wooden_device0:7>,
    <immersiveengineering:wooden_device1>,
    <immersiveengineering:wooden_device1:1>,
    <immersiveengineering:wooden_device1:3>,
    <immersiveengineering:wooden_device1:4>,
    <immersiveengineering:metal_decoration2>,
    <immersiveengineering:metal_decoration2:1>,
    <immersiveengineering:metal_decoration2:2>,
    <immersiveengineering:metal_decoration2:3>,
    <immersiveengineering:cloth_device:2>,
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:metal_decoration0:1>,
    <immersiveengineering:metal_decoration0:2>,
    <immersiveengineering:metal_decoration0:3>,
    <immersiveengineering:metal_decoration0:4>,
    <immersiveengineering:metal_decoration0:5>,
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_decoration0:7>,
    <immersiveengineering:connector>,
    <immersiveengineering:connector:1>,
    <immersiveengineering:connector:2>,
    <immersiveengineering:connector:3>,
    <immersiveengineering:connector:4>,
    <immersiveengineering:connector:5>,
    <immersiveengineering:connector:6>,
    <immersiveengineering:connector:7>,
    <immersiveengineering:connector:8>,
    <immersiveengineering:connector:9>,
    <immersiveengineering:connector:10>,
    <immersiveengineering:connector:11>,
    <immersiveengineering:connector:12>,
    <immersiveengineering:connector:13>,
    <immersiveengineering:wooden_device0:3>,
    <immersiveengineering:wooden_device0:6>,
    <immersiveengineering:wooden_device0:7>,
    <immersiveengineering:wooden_device1>,
    <immersiveengineering:wooden_device1:1>,
    <immersiveengineering:wooden_device1:3>,
    <immersiveengineering:wooden_device1:4>,
    <immersiveengineering:metal_decoration2>,
    <immersiveengineering:metal_decoration2:1>,
    <immersiveengineering:metal_decoration2:2>,
    <immersiveengineering:metal_decoration2:3>,
    <immersiveengineering:cloth_device:2>,
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:metal_decoration0:1>,
    <immersiveengineering:metal_decoration0:2>,
    <immersiveengineering:metal_decoration0:3>,
    <immersiveengineering:metal_decoration0:4>,
    <immersiveengineering:metal_decoration0:5>,
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_decoration0:7>,
    <immersiveengineering:connector>,
    <immersiveengineering:connector:1>,
    <immersiveengineering:connector:2>,
    <immersiveengineering:connector:3>,
    <immersiveengineering:connector:4>,
    <immersiveengineering:connector:5>,
    <immersiveengineering:connector:6>,
    <immersiveengineering:connector:7>,
    <immersiveengineering:connector:8>,
    <immersiveengineering:connector:9>,
    <immersiveengineering:connector:10>,
    <immersiveengineering:connector:11>,
    <immersiveengineering:connector:12>,
    <immersiveengineering:connector:13>,
    <immersiveengineering:wirecoil:4>,
    <immersiveengineering:wirecoil:5>,
    <immersiveengineering:wirecoil:6>,
    <immersiveengineering:wirecoil:7>,
    <immersiveengineering:mold>,
    <immersiveengineering:mold:1>,
    <immersiveengineering:mold:2>,
    <immersiveengineering:mold:3>,
    <immersiveengineering:mold:4>,
    <immersiveengineering:conveyor>,
    <immersiveengineering:material:10>,
    <immersiveengineering:material:11>,
    <immersiveengineering:material:12>,
    <immersiveengineering:material:26>,
    <immersiveengineering:material:27>,
    <immersiveengineering:material:20>,
    <immersiveengineering:material:21>,
    <immersiveengineering:material:22>,
    <immersiveengineering:tool:2>,
    <immersiveengineering:wirecoil>,
    <immersiveengineering:wirecoil:1>,
    <immersiveengineering:wirecoil:2>,
    <immersiveengineering:wirecoil:3>,
    <immersiveengineering:mold:5>,
    <immersiveengineering:mold:6>,
    <immersiveengineering:mold:7>,
    <immersiveengineering:railgun>,
    <immersiveengineering:skyhook>,
    <immersiveengineering:toolupgrade:6>,
    <immersiveengineering:toolupgrade:8>,
    <immersiveengineering:toolupgrade:9>,
    <immersiveengineering:toolupgrade:10>,
    <immersiveengineering:toolupgrade:11>,
    <immersiveengineering:toolupgrade:12>,
    <immersiveengineering:faraday_suit_feet>,
    <immersiveengineering:faraday_suit_legs>,
    <immersiveengineering:faraday_suit_chest>,
    <immersiveengineering:faraday_suit_head>,
    <immersiveengineering:fluorescent_tube>,
    <immersiveengineering:powerpack>,
    <immersiveengineering:metal_device0>,
    <immersiveengineering:metal_device0:1>,
    <immersiveengineering:metal_device0:2>,
    <immersiveengineering:metal_device1:2>,
    <immersiveengineering:metal_device1:4>,
    <immersiveengineering:metal_device1:5>,
    <immersiveengineering:metal_device1:8>,
    <immersiveengineering:metal_device1:9>,
    <immersiveengineering:conveyor>,
    <immersiveengineering:stone_decoration:8>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}