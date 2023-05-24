import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Warp Technology:
    The final tier part of Advanced Rocketry as well as some other teleporty type things 
    Unlocks the ability to visit other planets besides the moon
*/

// Stage Name
val stage = "warp_tech";

val stageMods as string[] = [
    "portality",
    "enderstorage",
];

val stageItems as IItemStack[] = [
    <advancedrocketry:altitudecontroller>,
    <advancedrocketry:gravitycontroller>,
    <advancedrocketry:orientationcontroller>,
    <advancedrocketry:biomescanner>,
    <advancedrocketry:satelliteprimaryfunction:5>,
    <advancedrocketry:spaceelevatorcontroller>,
    <advancedrocketry:elevatorchip>,
    <advancedrocketry:spacelaser>,
    <advancedrocketry:terraformer>,
    <advancedrocketry:deployablerocketbuilder>,
    <advancedrocketry:intake>,
    <advancedrocketry:warpmonitor>,
    <advancedrocketry:warpcore>,
    <advancedrocketry:forcefieldprojector>,
    <advancedrocketry:vacuumlaser>,
    <advancedrocketry:blockpump>,
    <advancedrocketry:centrifuge>,
    <advancedrocketry:blackholegenerator>,
    <advancedrocketry:gravitymachine>,
    <advancedrocketry:railgun>,
    <advancedrocketry:planetselector>,
    <advancedrocketry:planetholoselector>,
    <advancedrocketry:hotturf>,
    <advancedrocketry:basalt>,
    <advancedrocketry:geode>,
    <advancedrocketry:crystal>,
    <advancedrocketry:crystal:1>,
    <advancedrocketry:crystal:2>,
    <advancedrocketry:crystal:3>,
    <advancedrocketry:crystal:4>,
    <advancedrocketry:crystal:5>,
    <advancedrocketry:alienwood>,
    <advancedrocketry:planks>,
    <advancedrocketry:aliensapling>,
    <advancedrocketry:alienleaves>,
    <advancedrocketry:vitrifiedsand>,
    <advancedrocketry:charcoallog>,
    <advancedrocketry:electricmushroom>,
    <advancedrocketry:biomechanger>,
    <advancedrocketry:hovercraft>,
    <advancedrocketry:itemupgrade:5>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

val nonStagedItems as IItemStack[] = [
    // All EnderIO conduits/things to make them (we want to spread these out for more efficient logistics earlier then warp tech)
    <enderio:item_me_conduit:1>,
    <enderio:item_opencomputers_conduit>,
    <enderio:item_item_conduit>,
    <enderio:item_liquid_conduit>,
    <enderio:item_liquid_conduit:1>,
    <enderio:item_liquid_conduit:2>,
    <enderio:item_power_conduit>,
    <enderio:item_power_conduit:1>,
    <enderio:item_power_conduit:2>,
    <enderio:item_redstone_conduit>,
    <enderio:item_me_conduit>,
    <enderio:item_material:22>,
    <enderio:item_material:4>
];

var found = false;
for item in loadedMods["enderio"].items {
    for nonStagedItem in nonStagedItems {
        if (item.matches(nonStagedItem)) {
            found = true;
            break;
        }
    }
    if (!found) {
        Recipes.setRecipeStage(stage, item);
        ItemStages.addItemStage(stage, item);
    }
    found = false;
}
