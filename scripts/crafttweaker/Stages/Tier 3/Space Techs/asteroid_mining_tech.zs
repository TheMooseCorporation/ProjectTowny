import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Asteroid Mining:
    Allows you to create automatic mining via Advanced Rocketry's asteroid mining system
    This is the only wait to obtain cobalt, also makes getting osmium on Earth easier
*/

// Stage Name
val stage = "asteroid_mining_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <advancedrocketry:observatory>,
    <advancedrocketry:blocklens>,
    <advancedrocketry:asteroidchip>,
    <advancedrocketry:planetanalyser>,
    <advancedrocketry:wirelesstransciever>,
    <advancedrocketry:loader:2>,
    <advancedrocketry:loader:3>,
    <advancedrocketry:loader:4>,
    <advancedrocketry:loader:5>,
    <advancedrocketry:loader:6>,
    <advancedrocketry:drill>,
    <advancedrocketry:microwavereciever>,
    <advancedrocketry:advrocketmotor>,
    <advancedrocketry:pressuretank:3>,
    <advancedrocketry:productdust>,
    <advancedrocketry:productdust:1>,
    <advancedrocketry:productingot>,
    <advancedrocketry:productingot:1>,
    <advancedrocketry:productnugget>,
    <advancedrocketry:productnugget:1>,
    <advancedrocketry:productplate>,
    <advancedrocketry:productplate:1>,
    <advancedrocketry:productrod>,
    <advancedrocketry:productrod:1>,
    <advancedrocketry:productsheet>,
    <advancedrocketry:productsheet:1>,
    <advancedrocketry:productgear>,
    <advancedrocketry:productgear:1>,
    <advancedrocketry:metal0>,
    <advancedrocketry:metal0:1>,
    <advancedrocketry:satelliteprimaryfunction:4>,
    <advancedrocketry:orescanner>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}