import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    War Tech:
    All items (that we know of) that can bypass State's claim protections
    This tech can be given out to players by admins for war purposes
*/

// Stage Name
val stage = "war_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <techguns:explosive_charge>,
    <techguns:explosive_charge:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}