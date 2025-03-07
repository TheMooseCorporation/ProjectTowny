// Add later HOP graphite dust/ingot, Nitrate/sulfur dust,
import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;

/**
    Heavy Machines
*/

// Stage Name
val stage = "heavy_machinery_tech";
val name = "Heavy Machinery";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <immersivetech:stone_decoration>,
    <immersivetech:stone_decoration_slab>,
    <immersiveengineering:drill>,
    <immersiveengineering:drillhead>,
    <immersiveengineering:drillhead:1>,
    <immersiveengineering:toolupgrade:1>,
    <immersiveengineering:toolupgrade>,
    <immersiveengineering:toolupgrade:2>,
    <artisanworktables:workshop:6>
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

IEMultiBlockStages.addStage(stage, "IE:Crusher", "Requires " + stage);