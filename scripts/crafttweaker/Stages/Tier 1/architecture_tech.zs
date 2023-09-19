import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Architecture:
    This stage should contain all non-consequential building items
*/

// Stage Name
val stage = "architecture_tech";

val stageMods as string[] = [
    "bibliocraft",
    "chisel",
    "chiselsandbits",
    "littletiles",
    "cfm",
    "fairylights",
    "microblockcbe",
    "blockcraftery"
];

val stageItems as IItemStack[] = [
    <rsgauges:bistableswitch_oldfancy1>,
    <rsgauges:bistableswitch_oldfancy2>,
    <rsgauges:pulseswitch_oldfancy1>,
    <rsgauges:pulseswitch_oldfancy2>,
    <rsgauges:pulseswitch_oldfancy4>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}