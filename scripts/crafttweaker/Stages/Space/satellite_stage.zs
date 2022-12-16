import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.jmapstages.JMapStages;

// New recipe for mass detector that doesn't require dilithium, might be a good idea to change this later
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction:2>, [[null, null, null],[<advancedrocketry:satelliteprimaryfunction>, <scannable:scanner>, <advancedrocketry:satelliteprimaryfunction>], [<advancedrocketry:wafer>, <advancedrocketry:ic>, <advancedrocketry:wafer>]]);

val spaceItems as IItemStack[] = [
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

val multiblockMachines as string[] = [
    "modularmachinery:chemicalreactor",
    "modularmachinery:chemicaloxidizer",
    "modularmachinery:hydrator",
    "modularmachinery:isomerizationunit",
    "modularmachinery:heat_exchanger"
];

for item in spaceItems{
    Recipes.setRecipeStage("satellite_stage", item);
    ItemStages.addItemStage("satellite_stage", item);
}

for multiblockMachine in multiblockMachines {
	var item as IItemStack = <modularmachinery:itemblueprint:0>.withTag({dynamicmachine: multiblockMachine});
	ItemStages.addItemStage("satellite_stage", item);
}


JMapStages.setWaypointStage("satellite_stage");

JMapStages.setDeathpointStage("satellite_stage");

JMapStages.setMinimapStage("satellite_stage");

JMapStages.setFullscreenStage("satellite_stage");