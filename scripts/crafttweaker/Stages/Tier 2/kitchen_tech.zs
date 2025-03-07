import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Contains all the necessary items to make your very own home kitchen
*/

// Stage Name
val stage = "kitchen_tech";
val name = "Kitchens";

val stageMods as string[] = [
    "cookingforblockheads"
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