import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Disabled:
    Every item in the back that should be uncraftable and hidden in JEI
    Please keep this organized with what you're putting where
*/

// Stage Name
val stage = "disabled";

val stageItems as IItemStack[] = [
    // Mekanism Cables
    <mekanism:transmitter>.withTag({tier: 0}),
    <mekanism:transmitter>.withTag({tier: 1}),
    <mekanism:transmitter>.withTag({tier: 2}),
    <mekanism:transmitter>.withTag({tier: 3}),
    <mekanism:transmitter:1>.withTag({tier: 0}),
    <mekanism:transmitter:1>.withTag({tier: 1}),
    <mekanism:transmitter:1>.withTag({tier: 2}),
    <mekanism:transmitter:1>.withTag({tier: 3}),
    <mekanism:transmitter:2>.withTag({tier: 0}),
    <mekanism:transmitter:2>.withTag({tier: 1}),
    <mekanism:transmitter:2>.withTag({tier: 2}),
    <mekanism:transmitter:2>.withTag({tier: 3}),
    <mekanism:transmitter:3>.withTag({tier: 0}),
    <mekanism:transmitter:3>.withTag({tier: 1}),
    <mekanism:transmitter:3>.withTag({tier: 2}),
    <mekanism:transmitter:3>.withTag({tier: 3}),
    <mekanism:transmitter:4>.withTag({tier: 0}),
    <mekanism:transmitter:5>.withTag({tier: 0}),
    <mekanism:transmitter:6>.withTag({tier: 0}),
    <mekanism:transmitter:6>.withTag({tier: 1}),
    <mekanism:transmitter:6>.withTag({tier: 2}),
    <mekanism:transmitter:6>.withTag({tier: 3}),
    // Misc Mekanism Items
    <mekanism:basicblock:6>.withTag({tier: 4}),
    <mekanism:machineblock2:11>.withTag({tier: 4}),
    <mekanism:gastank>.withTag({tier: 4}),
    <mekanism:walkietalkie>,
    <mekanismgenerators:generator:6>,
    <mekanism:cardboardbox>,
    <mekanismgenerators:generator:7>,
    <mekanismgenerators:generator:8>,
    <mekanismgenerators:generator:9>,
    <mekanismgenerators:generator:10>,
    <mekanismgenerators:generator:11>,
    <mekanismgenerators:generator:12>,
    <mekanismgenerators:generator:13>,
    <mekanismgenerators:reactorglass:1>,
    <mekanism:energycube>.withTag({tier: 4}),
    <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
    // Techguns armor that gives a mood speed buff
    <techguns:t1_scout_helmet>,
    <techguns:t1_scout_chestplate>,
    <techguns:t1_scout_leggings>,
    <techguns:t1_scout_boots>,
    <techguns:t1_miner_chestplate>,
    <techguns:t1_miner_leggings>,
    <techguns:t1_miner_boots>,
    <techguns:t2_combat_helmet>,
    <techguns:t2_combat_chestplate>,
    <techguns:t2_combat_leggings>,
    <techguns:t2_combat_boots>,
    <techguns:t2_riot_helmet>,
    <techguns:t2_riot_chestplate>,
    <techguns:t2_riot_leggings>,
    <techguns:t2_riot_boots>,
    <techguns:t2_commando_helmet>,
    <techguns:t2_commando_chestplate>,
    <techguns:t2_commando_leggings>,
    <techguns:t2_commando_boots>,
    <techguns:t3_combat_helmet>,
    <techguns:t3_combat_chestplate>,
    <techguns:t3_combat_leggings>,
    <techguns:t3_combat_boots>,
    <immersivetech:wooden_crate>,
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}