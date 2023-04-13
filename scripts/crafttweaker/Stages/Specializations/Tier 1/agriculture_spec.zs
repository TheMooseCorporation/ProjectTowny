import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    This stage should contain all cooking items that make cooking significantly easier or more streamlined.  It should NOT remove basic cooking tools.
*/

// Stage Name
val stage = "agriculture_spec";

val stageMods as String[] = [

];

val stageItems as IItemStack[] = [
    <harvestcraft:market>,
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}