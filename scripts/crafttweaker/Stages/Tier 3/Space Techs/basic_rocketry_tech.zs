import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Basic Rocketry:
    The very first space tech, unlocking the ability to launch rockets with satellites
    You'll have to launch satellites for data to spend on the next tech, space exploration
*/

// Stage Name
val stage = "basic_rocketry_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <advancedrocketry:concrete>,
    <advancedrocketry:dataunit>,
    <advancedrocketry:launchpad>,
    <advancedrocketry:structuretower>,
    <advancedrocketry:rocketbuilder>,
    <advancedrocketry:fuelingstation>,
    <advancedrocketry:rocketmotor>,
    <advancedrocketry:fueltank>,
    <advancedrocketry:satellite>,
    <advancedrocketry:monitoringstation>,
    <advancedrocketry:satellitecontrolcenter>,
    <advancedrocketry:satellitebuilder>,
    <advancedrocketry:satelliteprimaryfunction>,
    <advancedrocketry:satelliteprimaryfunction:1>,
    <advancedrocketry:satelliteprimaryfunction:2>,
    <advancedrocketry:satelliteprimaryfunction:3>,
    <advancedrocketry:ic>,
    <advancedrocketry:ic:1>,
    <advancedrocketry:ic:5>,
    <advancedrocketry:satelliteidchip>,
    <advancedrocketry:itemcircuitplate>,
    <advancedrocketry:lens>,
    <advancedrocketry:loader:1>,
    <advancedrocketry:satellitepowersource>,
    <advancedrocketry:satellitepowersource:1>,
    <advancedrocketry:loader>,
    <advancedrocketry:blastbrick>,
    <advancedrocketry:arcfurnace>,
    <advancedrocketry:lathe>,
    <advancedrocketry:rollingmachine>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// New recipe for mass detector that doesn't require dilithium, might be a good idea to change this later
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:2>, [[null, null, null],[<advancedrocketry:satelliteprimaryfunction>, <scannable:scanner>, <advancedrocketry:satelliteprimaryfunction>], [<advancedrocketry:wafer>, <advancedrocketry:ic>, <advancedrocketry:wafer>]]);