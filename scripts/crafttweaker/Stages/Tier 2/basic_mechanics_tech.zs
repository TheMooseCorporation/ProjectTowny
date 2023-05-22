import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Mechanics:
    We should create a mechanical system that goes along side our circuit system
    Is that within the scope of 0.7?
    Probably not...
    Will look more into this later - Moose 5/21/23

    Doesn't do anything as of now
*/

// Stage Name
val stage = "basic_mechanics_tech";

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