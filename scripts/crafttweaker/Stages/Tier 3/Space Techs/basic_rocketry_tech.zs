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
    <advancedrocketry:rollingmachine>,
    // Large Commerical Planes
    <mts:ivairlinerpack.crj200_canada>,
    <mts:ivairlinerpack.crj200_lufthansa>,
    <mts:ivairlinerpack.crj200_iberia>,
    <mts:ivairlinerpack.crj200_aerlingus>,
    <mts:ivairlinerpack.crj200_britishairways>,
    <mts:ivairlinerpack.crj200_lufthansa>,
    <mts:ivairlinerpack.crj200_unu>,
    <mts:ivairlinerpack.unucivil_vehicle_unu_camel2_tanker_gap>,
    <mts:ivairlinerpack.trin_cator>,
    <mts:ivairlinerpack.trin_cator_gap>,
    <mts:mtsofficialpack.e500_blue>,
    <mts:mtsofficialpack.e500_green>,
    <mts:mtsofficialpack.e500_red>,
    <mts:mtsofficialpack.e500_yellow>,
    <mts:ivairlinerpack.crj200>,
    <mts:ivairlinerpack.crj200_gap>,
    <mts:ivairlinerpack.crj200_ryanair>,
    <mts:ivairlinerpack.crj200_unu>,
    <mts:ivairlinerpack.crj200_trin>,
    <mts:ivairlinerpack.737-300_qantas>,
    <mts:ivairlinerpack.737-300_ryanair>,
    <mts:ivairlinerpack.737-300_southwest>,
    <mts:ivairlinerpack.737-300_trin>,
    <mts:ivairlinerpack.737-300_tui>,
    <mts:ivairlinerpack.737-300_united>,
    <mts:ivairlinerpack.737-300_unu>,
    <mts:ivairlinerpack.737-300_delta>,
    <mts:ivairlinerpack.737-300_gap>,
    <mts:ivairlinerpack.737-300_janet>,
    <mts:ivairlinerpack.737-300_klm>,
    <mts:ivairlinerpack.737-300_lot>,
    <mts:ivairlinerpack.737-300_lufthansa>,
    <mts:ivairlinerpack.737-300_mai>,
    <mts:ivairlinerpack.737-300_nolinor>,
    <mts:ivairlinerpack.737-300_norwegian>,
    <mts:ivairlinerpack.737-300>,
    <mts:ivairlinerpack.737-300_adria>,
    <mts:ivairlinerpack.737-300_aerlingus>,
    <mts:ivairlinerpack.737-300_ansett>,
    <mts:ivairlinerpack.737-300_asiana>,
    <mts:ivairlinerpack.737-300_belavia>,
    <mts:ivairlinerpack.737-300_cea>,
    <mts:ivairlinerpack.737-300_continental>,
    <mts:ivairlinerpack.737-300_copa>
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