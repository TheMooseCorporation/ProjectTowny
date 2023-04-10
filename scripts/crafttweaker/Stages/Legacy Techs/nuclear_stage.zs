#priority 10
import mods.ItemStages;
import mods.recipestages.Recipes;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.Electrolyzer;
import crafttweaker.item.IItemStack;

//Recipes.setRecipeStageByMod("nuclear_stage", "nuclearcraft");
//ItemStages.stageModItems("nuclear_stage", "nuclearcraft");

ChemicalReactor.removeRecipeWithInput(<liquid:sulfur_trioxide> * 250, <liquid:water> * 250);
Electrolyzer.removeRecipeWithInput(<liquid:water> * 500);
Electrolyzer.removeRecipeWithInput(<liquid:heavy_water> * 500);

val solarItems as IItemStack[] = [
    /*
    <icbmclassic:missile:8>,
    <icbmclassic:missile:9>,
    <icbmclassic:missile:10>,
    <icbmclassic:missile:11>,
    <icbmclassic:missile:12>,
    <icbmclassic:missile:13>,
    <icbmclassic:explosives:8>,
    <icbmclassic:explosives:9>,
    <icbmclassic:explosives:10>,
    <icbmclassic:explosives:11>,
    <icbmclassic:explosives:12>,
    <icbmclassic:explosives:13>,
    <icbmclassic:explosives:14>,
    <icbmclassic:bombcart:10>,
    <icbmclassic:bombcart:8>,
    <icbmclassic:bombcart:11>,
    <icbmclassic:bombcart:13>,
    <icbmclassic:bombcart:9>,
    */
    <icbmclassic:launcherscreen:1>,
    <icbmclassic:launcherbase:1>,
    <icbmclassic:radarstation>,
    <icbmclassic:circuit:1>,  
    <techguns:itemshared:53>,
    <techguns:itemshared:64>,
    <techguns:t3_combat_helmet>,
    <techguns:t3_combat_chestplate>,
    <techguns:t3_combat_leggings>,
    <techguns:t3_combat_boots>,
    <infilter:infilter_block_infilter>,
    <icbmclassic:radarstation>,
    <techguns:itemshared:59>,
    <techguns:itemshared:36>,
    <techguns:itemshared:40>,
    <techguns:itemshared:44>,
    <techguns:itemshared:102>,
    <techguns:multiblockmachine>,
    <techguns:multiblockmachine:1>,
    <techguns:multiblockmachine:2>,
    <techguns:multiblockmachine:3>,
    <techguns:multiblockmachine:4>,
    <techguns:multiblockmachine:5>,
    <techguns:itemshared:67>,
    <techguns:itemshared:69>,
    <techguns:itemshared:104>,
    <techguns:itemshared:105>,
    <techguns:itemshared:120>,
    <techguns:itemshared:153>,
    <techguns:itemshared:154>,
    <techguns:itemshared:155>
];

val nonStagedItems as IItemStack[] = [
    <nuclearcraft:ingot:3>,
    <nuclearcraft:ingot_block:3>,
    <nuclearcraft:ingot:5>,
    <nuclearcraft:ingot_block:5>,
    <nuclearcraft:ingot:4>,
    <nuclearcraft:ingot_block:4>,
    <nuclearcraft:ingot:6>,
    <nuclearcraft:dust:6>,
    <nuclearcraft:ingot_block:6>,
    <nuclearcraft:ingot:7>,
    <nuclearcraft:ingot_block:7>
];

// Add every item to nuclear_stage, except for the items listen in nonStagedItems
var found = false;
for item in loadedMods["nuclearcraft"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage("nuclear_stage", item);
        ItemStages.addItemStage("nuclear_stage", item);
    }
    found = false;
}

for item in solarItems {
    Recipes.setRecipeStage("nuclear_stage", item);
    ItemStages.addItemStage("nuclear_stage", item);
}

