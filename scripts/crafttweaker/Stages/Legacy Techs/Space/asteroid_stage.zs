import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

val spaceItems as IItemStack[] = [
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

for item in spaceItems{
    Recipes.setRecipeStage("asteroid_stage", item);
    ItemStages.addItemStage("asteroid_stage", item);
}