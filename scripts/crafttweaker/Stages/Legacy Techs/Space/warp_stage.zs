import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

val spaceItems as IItemStack[] = [
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

for item in spaceItems{
    Recipes.setRecipeStage("warp_stage", item);
    ItemStages.addItemStage("warp_stage", item);
}