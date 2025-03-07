import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Unlocks modifers
*/

// Stage Name
val stage = "blacksmithing_tech";
val name = "Blacksmithing";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
    for item in loadedMods[mod].items {
        item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
    }
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
    item.addTooltip(format.blue("Required Tech: ") + format.gold(name));
}

mods.TinkerStages.addGeneralModifierStage(stage);