// Add later HOP graphite dust/ingot, Nitrate/sulfur dust,
import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;


/**
    Logistics Tech:
    Funky locomotion, the mod and in general
*/

// Stage Name
val stage = "logistics_tech";

val stageMods as string[] = [
    "funkylocomotion"
];

val stageItems as IItemStack[] = [
    <immersivetech:valve>,
    <immersivetech:valve:2>,
    <immersivetech:valve:1>,
    <immersiveengineering:wooden_device0:7>,
    <immersivetech:metal_trash>,
    <immersivetech:metal_trash:1>,
    <immersivetech:metal_trash:2>,
    <engineersdecor:factory_dropper>,
    <engineersdecor:factory_hopper>,
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
    <immersiveengineering:wooden_device0:3>

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Funky Locomotion Recipe Tweaks
recipes.remove(<funkylocomotion:frame_projector>);
recipes.remove(<funkylocomotion:wrench:1>);
recipes.remove(<funkylocomotion:mass_frame_edge> * 6);
recipes.remove(<funkylocomotion:slider>);
recipes.remove(<funkylocomotion:pusher>);
recipes.remove(<funkylocomotion:booster>);

recipes.addShaped(<funkylocomotion:frame_projector>, [[<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],[<ore:ingotInvar>, <immersiveengineering:metal_decoration0:5>, <ore:ingotInvar>], [<ore:ingotInvar>, <funkylocomotion:pusher:1>, <ore:ingotInvar>]]);
recipes.addShaped(<funkylocomotion:wrench:1>, [[<minecraft:ender_eye>, <minecraft:ender_pearl>, null],[<minecraft:ender_pearl>, <funkylocomotion:wrench>, null], [null, null, null]]);
recipes.addShaped(<funkylocomotion:mass_frame_edge> * 6, [[<funkylocomotion:frame_0>, <funkylocomotion:frame_0>, <funkylocomotion:frame_0>],[null, <minecraft:ender_pearl>, null], [<funkylocomotion:frame_0>, <funkylocomotion:frame_0>, <funkylocomotion:frame_0>]]);
recipes.addShaped(<funkylocomotion:slider>, [[<funkylocomotion:pusher>, <ore:ingotElectrum>, <minecraft:dye:4>],[<minecraft:dye:4>, <minecraft:dye:4>, null], [null, null, null]]);
recipes.addShaped(<funkylocomotion:pusher>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],[<ore:ingotInvar>, <immersiveengineering:metal_decoration0:5>, <ore:ingotInvar>], [<ore:ingotInvar>, <minecraft:diamond>, <ore:ingotInvar>]]);
recipes.addShaped(<funkylocomotion:booster>, [[<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],[<ore:ingotInvar>, <immersiveengineering:metal_decoration0:5>, <ore:ingotInvar>], [<ore:ingotInvar>, <funkylocomotion:pusher>, <ore:ingotInvar>]]);
