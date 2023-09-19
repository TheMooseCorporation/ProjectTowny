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
    <projecttowny:dilithium_chamber>,
    // Thermal Foundation stuff, subject to moving, maybe subject to removal
    <thermalfoundation:glass_alloy>,
    <thermalfoundation:glass_alloy:1>,
    <thermalfoundation:glass_alloy:2>,
    <thermalfoundation:glass_alloy:3>,
    <thermalfoundation:glass_alloy:4>,
    <thermalfoundation:glass_alloy:5>,
    <thermalfoundation:glass_alloy:6>,
    <thermalfoundation:glass_alloy:7>,
    <thermalfoundation:security>,
    <thermalfoundation:diagram_redprint>,
    <thermalfoundation:material:512>,
    <thermalfoundation:material:513>,
    <thermalfoundation:material:514>,
    <thermalfoundation:material:515>,
    <thermalfoundation:material:640>,
    <thermalfoundation:material:656>,
    <thermalfoundation:material:657>,
    <thermalfoundation:meter>,
    <thermalfoundation:upgrade>,
    <thermalfoundation:upgrade:1>,
    <thermalfoundation:upgrade:2>,
    <thermalfoundation:upgrade:3>,
    <thermalfoundation:upgrade:33>,
    <thermalfoundation:upgrade:34>,
    <thermalfoundation:upgrade:35>,
    <thermalfoundation:upgrade:256>,
    <thermalfoundation:glass>,
    <thermalfoundation:glass:1>,
    <thermalfoundation:glass:2>,
    <thermalfoundation:glass:3>,
    <thermalfoundation:glass:4>,
    <thermalfoundation:glass:5>,
    <thermalfoundation:glass:6>,
    <thermalfoundation:glass:7>,
    <thermalfoundation:glass:8>,
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
