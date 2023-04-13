import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    This stage should contain all cooking items that make cooking significantly easier or more streamlined.  It should NOT remove basic cooking tools.
*/

// Stage Name
val stage = "cooking_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <harvestcraft:shippingbin>,
    <harvestcraft:well>,
    <harvestcraft:groundtrap>,
    <harvestcraft:watertrap>,
    <harvestcraft:waterfilter>,
    <harvestcraft:grinder>,
    <harvestcraft:apiary>,
    <harvestcraft:presser>,
    <harvestcraft:fruitbaititem>,
    <harvestcraft:grainbaititem>,
    <harvestcraft:veggiebaititem>,
    <harvestcraft:fishtrapbaititem>,
    <harvestcraft:juiceritem>,
    <harvestcraft:mixingbowlitem>,
    <harvestcraft:mortarandpestleitem>,
    <harvestcraft:bakewareitem>,
    <harvestcraft:saucepanitem>,
    <harvestcraft:skilletitem>,
    <harvestcraft:potitem>,
    <harvestcraft:cuttingboarditem>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}