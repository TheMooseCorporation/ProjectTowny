import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.TinkerStages;

/**
    Forestry Specilization:
    Specilize in the chopping and refining of lumber
*/

// Stage Name
val stage = "forestry_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

TinkerStages.addToolTypeStage(stage, "tconstruct:lumberaxe");
