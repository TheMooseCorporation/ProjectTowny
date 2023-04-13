// Add later HOP graphite dust/ingot, Nitrate/sulfur dust,
import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Heavy Machines
*/

// Stage Name
val stage = "heavy_machinery_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <immersivetech:stone_decoration>,
    <immersivetech:stone_decoration_slab>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}