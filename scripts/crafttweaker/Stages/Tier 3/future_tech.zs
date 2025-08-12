// What does the future hold?!? No like actually what are we going to put here?

import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Future Tech, the final tech of the modpack
    We could use some more content here if we can manage it but that might be out of our scope right now
*/

// Stage Name
val stage = "future_tech";
val name = "Future Tech";

val stageMods as string[] = [
    "environmentaltech",
    "valkyrielib"
];

val stageItems as IItemStack[] = [
    <mekanism:basicblock:7>,
    <mekanism:machineblock:11>,
    <mekanism:machineblock3>
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

