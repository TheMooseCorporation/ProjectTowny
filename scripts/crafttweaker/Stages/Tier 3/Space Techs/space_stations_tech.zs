import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Space Stations:
    Space stations are unlocked, requiring the town to build a space station to create the Dilithium Chamber to create dilithium
*/

// Stage Name
val stage = "space_stations_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <advancedrocketry:stationbuilder>,
    <advancedrocketry:spacestationchip>,
    <advancedrocketry:ic:2>,
    <advancedrocketry:itemcircuitplate:1>,
    <advancedrocketry:oxygenvent>,
    <advancedrocketry:oxygenscrubber>,
    <advancedrocketry:stationmarker>,
    <advancedrocketry:circlelight>,
    <advancedrocketry:smallairlockdoor>,
    <advancedrocketry:carbonscrubbercartridge>,
    <advancedrocketry:landingpad>,
    <advancedrocketry:solararray>,
    <advancedrocketry:solararraypanel>,
    <advancedrocketry:chemicalreactor>,
    <advancedrocketry:precisionlaseretcher>,
    <advancedrocketry:pressuretank:2>,
    <advancedrocketry:jetpack>,
    <advancedrocketry:itemupgrade>,
    <projecttowny:dilithium_chamber>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// I don't remember why these were removed, but I'm putting them here just in case they're important (darn undocumented code *shakes fist*)
recipes.remove(<libvulpes:productdust>);
recipes.remove(<libvulpes:productgem>);

// Alternative station builder and oxygen scrubber recipes
recipes.remove(<advancedrocketry:stationbuilder>);
recipes.remove(<advancedrocketry:oxygenscrubber>);
Recipes.addShaped("space_station_stage", <advancedrocketry:stationbuilder>, [[<advancedrocketry:misc>, <ore:dustLithium>, <libvulpes:productgear:7>],[<ore:dustLithium>, <advancedrocketry:rocketbuilder>, <ore:dustLithium>], [<advancedrocketry:ic:2>, <ore:dustLithium>, <advancedrocketry:ic:2>]]);
Recipes.addShaped("space_station_stage", <advancedrocketry:oxygenscrubber>, [[<minecraft:iron_bars>, <libvulpes:productfan:6>, <minecraft:iron_bars>],[<minecraft:iron_bars>, <ore:blockMotor>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <immersiveengineering:material:19>, <minecraft:iron_bars>]]);
