import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    This stage should contain all cooking items that make cooking significantly easier or more streamlined.  It should NOT remove basic cooking tools.
*/

// Stage Name
val stage = "cooking_tech";

val stageMods as String[] = [
    "cookingforblockheads",
];

val stageItems as IItemStack[] = [
    <harvestcraft:shippingbin>,
    <harvestcraft:well>,
    <harvestcraft:groundtrap>,
    <harvestcraft:watertrap>,
    <harvestcraft:waterfilter>,
    <harvestcraft:grinder>,
    <harvestcraft:apiary>,
    <harvestcraft:presser>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}