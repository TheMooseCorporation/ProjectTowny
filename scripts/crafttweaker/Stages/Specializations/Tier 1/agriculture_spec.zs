import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.betterwithmods.Mill;

/**
    Agriculture Specilization:
    For towns specilizing in farming. Allows the ignoring of seasons, plus buying seeds from the market.
*/

// Stage Name
val stage = "agriculture_spec";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <harvestcraft:market>,
    <sereneseasons:greenhouse_glass>,
    <sereneseasons:season_sensor_spring>,
    <sereneseasons:season_sensor_summer>,
    <sereneseasons:season_sensor_autumn>,
    <sereneseasons:season_sensor_winter>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Spec Tech


/**
    Agriculture Specilization Tech:
    Unlocks the millstone for more efficient crop processing. 
*/

val spec_tech_stage = "agriculture_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    <betterwithmods:single_machine>
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("basic_tools_tech", <harvestcraft:market>);
ItemStages.addItemStage("basic_tools_tech", <sereneseasons:greenhouse_glass>);
ItemStages.addItemStage("basic_tools_tech", <sereneseasons:season_sensor_spring>);
ItemStages.addItemStage("basic_tools_tech", <sereneseasons:season_sensor_summer>);
ItemStages.addItemStage("basic_tools_tech", <sereneseasons:season_sensor_autumn>);
ItemStages.addItemStage("basic_tools_tech", <sereneseasons:season_sensor_winter>);
ItemStages.addItemStage("basic_tools_tech", <betterwithmods:single_machine>);

// Mill Recipes
Mill.remove([<betterwithmods:raw_pastry:3>]); 
Mill.remove([<harvestcraft:cornmealitem>]); 
Mill.remove([<betterwithmods:material:15>]); 
Mill.remove([<minecraft:string> * 10, <minecraft:dye:1> * 3]); 

Mill.addRecipe([<minecraft:wheat>],[<harvestcraft:flouritem> * 2]);
Mill.addRecipe([<harvestcraft:barleyitem>],[<harvestcraft:flouritem> * 2]);
Mill.addRecipe([<harvestcraft:cornitem>],[<harvestcraft:cornmealitem> * 2]);
// Ground Meat Recipes
Mill.addRecipe([<minecraft:beef>],[<harvestcraft:groundbeefitem> * 2]);
Mill.addRecipe([<minecraft:chicken>],[<harvestcraft:groundchickenitem> * 2]);
Mill.addRecipe([<harvestcraft:duckrawitem>],[<harvestcraft:groundduckitem> * 2]);
Mill.addRecipe([<minecraft:fish>],[<harvestcraft:groundfishitem> * 2]);
Mill.addRecipe([<minecraft:mutton>],[<harvestcraft:groundmuttonitem> * 2]);
Mill.addRecipe([<minecraft:porkchop>],[<harvestcraft:groundporkitem> * 2]);
Mill.addRecipe([<minecraft:rabbit>],[<harvestcraft:groundrabbititem> * 2]);
Mill.addRecipe([<harvestcraft:turkeyrawitem>],[<harvestcraft:groundturkeyitem> * 2]);
Mill.addRecipe([<harvestcraft:venisonrawitem>],[<harvestcraft:groundvenisonitem> * 2]);

















