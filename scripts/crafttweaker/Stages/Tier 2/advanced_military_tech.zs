import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

/**
    Advanced Military Tech:
    Unlocks better weapons and machines
*/

// Stage Name
val stage = "advanced_military_tech";
val name = "Advanced Military";

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


// Recipe Changes

// Removes Gunpowder
recipes.remove(<minecraft:gunpowder>);

// Enrichment recipe changes
mods.mekanism.enrichment.removeRecipe(<ore:dustSulfur>);
mods.mekanism.enrichment.removeRecipe(<ore:dustSaltpeter>);
mods.mekanism.crusher.removeRecipe(<minecraft:gunpowder>);
