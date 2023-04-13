import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Anything post smeltry should be put here.  basic_tools_tech should have all the prerequisite materials to this stage
*/

// Stage Name
val stage = "advanced_tools_tech";

val stageMods as String[] = [

];

val stageItems as IItemStack[] = [
    <tconstruct:toolforge>,
    <tconstruct:soil>,
    <tconstruct:materials>,
    <tconstruct:seared>,
    <tconstruct:seared:1>,
    <tconstruct:seared:2>,
    <tconstruct:seared:3>,
    <tconstruct:seared:4>,
    <tconstruct:seared:5>,
    <tconstruct:seared_tank:2>,
    <tconstruct:faucet>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <tconstruct:smeltery_io>,
    <tconstruct:seared_glass>,
    <tconstruct:seared:6>,
    <tconstruct:seared:7>,
    <tconstruct:seared:8>,
    <tconstruct:seared:9>,
    <tconstruct:seared:10>,
    <tconstruct:seared:11>,
    <tconstruct:smeltery_controller>,
    <tconstruct:seared_tank>,
    <tconstruct:seared_tank:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}