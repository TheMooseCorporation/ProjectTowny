import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Wireless Technology:
    Scannable and anything else that we think should be considered wireless
*/

// What if we put OpenComputer internet cards here?

// Stage Name
val stage = "wireless_tech";

val stageMods as string[] = [
    "scannable"
];

val stageItems as IItemStack[] = [
    // All Opencomputers Wireless components and blocks
    <opencomputers:card:8>,
    <opencomputers:material:13>,
    <opencomputers:card:9>,
    <opencomputers:upgrade:31>,
    <opencomputers:card:7>,
    <opencomputers:tool:5>,
    <opencomputers:rack>,
    <opencomputers:tool:2>,
    <opencomputers:component:19>,
    <opencomputers:upgrade:30>,
    <opencomputers:waypoint>,
    <opencomputers:hologram1>,
    <opencomputers:hologram2>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Alternative scanner recipe
recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>, [[<ore:ingotIron>, null, <ore:ingotIron>],[<ore:barsIron>, <minecraft:redstone>, <ore:barsIron>], [<ore:ingotGold>, <opencomputers:material:4>, <ore:ingotGold>]]);


