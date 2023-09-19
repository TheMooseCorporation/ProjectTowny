import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Solar Technology:
    SOLAR PANELS BABY!!!! YEAH WE'RE IN BUSINESS NOW!
*/

// Stage Name
val stage = "solar_tech";

val stageMods as string[] = [
    "solarflux"
];

val stageItems as IItemStack[] = [
    <engineersdecor:small_solar_panel>,
    <opencomputers:upgrade:22>,

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Garden Cloche alternative recipe, maybe something to put behind a specialization?
Recipes.addShaped("solar_stage", <immersiveengineering:metal_device1:13>, [[<sereneseasons:greenhouse_glass>, <solarflux:photovoltaic_cell_5>, <sereneseasons:greenhouse_glass>],[<sereneseasons:greenhouse_glass>, <immersiveengineering:material:26>, <sereneseasons:greenhouse_glass>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);


