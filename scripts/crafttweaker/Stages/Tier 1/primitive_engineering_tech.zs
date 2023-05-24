import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Primitive Engineering:
    Not a visible tech on the tech tree, acts as a hidden tech that the foresty and agriculture stages use so they can use their machines without unlocking basic engineering
*/

// Stage Name
val stage = "primitive_engineering_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}