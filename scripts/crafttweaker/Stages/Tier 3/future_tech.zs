// What does the future hold?!? No like actually what are we going to put here?

import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Future Tech, the final tech of the modpack
    We could use some more content here if we can manage it but that might be out of our scope right now
*/

// Stage Name
val stage = "future_tech";

val stageMods as string[] = [
    "environmentaltech",
    "valkyrielib"
];

val stageItems as IItemStack[] = [
    <mekanism:basicblock:7>,
    <mekanism:machineblock:11>,
    <mekanism:machineblock3>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Final Tier Techguns

val techGuns as IItemStack[] = [
    <techguns:rocketlauncher>,
    <techguns:grimreaper>,
    <techguns:guidedmissilelauncher>,
    <techguns:nucleardeathray>,
    <techguns:gaussrifle>,
    <techguns:tfg>,
    <techguns:chainsaw>,
    <techguns:laserpistol>,
    <techguns:lasergun>,
    <techguns:blasterrifle>,
    <techguns:scatterbeamrifle>,
    <techguns:sonicshotgun>,
    <techguns:pdw>,
    <techguns:pulserifle>,
    <techguns:mibgun>,
    <techguns:alienblaster>,
    <techguns:powerhammer>,
    <techguns:netherblaster>,
    <techguns:biogun>,
    <techguns:teslagun>,
    <techguns:itemshared:6>,
    <techguns:itemshared:21>,
    <techguns:itemshared:22>,
    <techguns:itemshared:25>,
    <techguns:itemshared:26>,
    <techguns:itemshared:31>,
    <techguns:itemshared:32>,
    <techguns:itemshared:41>,
    <techguns:itemshared:68>,
    <techguns:itemshared:71>,
    <techguns:itemshared:73>,
    <techguns:itemshared:74>,
    <techguns:itemshared:76>,
    <techguns:itemshared:92>,
    <techguns:itemshared:118>,
    <techguns:itemshared:127>,
    <techguns:itemshared:128>,
    <techguns:itemshared:129>,
    <techguns:itemshared:130>,
    <techguns:itemshared:131>,
    <techguns:jumppack>,
    <techguns:jetpack>,
    <techguns:antigravpack>,
    <techguns:t3_exo_helmet>,
    <techguns:t3_exo_chestplate>,
    <techguns:t3_exo_leggings>,
    <techguns:t3_exo_boots>,
    <techguns:t4_power_helmet>,
    <techguns:t4_power_chestplate>,
    <techguns:t4_power_leggings>,
    <techguns:t4_power_boots>,
    <techguns:t3_power_helmet>,
    <techguns:t3_power_chestplate>,
    <techguns:t3_power_leggings>,
    <techguns:t3_power_boots>,
    <techguns:t3_miner_helmet>,
    <techguns:t3_miner_chestplate>,
    <techguns:t3_miner_leggings>,
    <techguns:t3_miner_boots>,
    <techguns:t4_praetor_helmet>,
    <techguns:t4_praetor_chestplate>,
    <techguns:t4_praetor_leggings>,
    <techguns:t4_praetor_boots>,
    <techguns:itemshared:29>,
    <techguns:itemshared:30>,
    <techguns:itemshared:97>,
    <techguns:itemshared:98>,
    <techguns:tacticalmask>,
    <techguns:itemshared:121>,
    <techguns:itemshared:122>,
    <techguns:itemshared:123>,
    <techguns:itemshared:124>,
    <techguns:itemshared:117>,
    <techguns:itemshared:143>,
    <techguns:itemshared:144>,
    <techguns:itemshared:145>
];

val techGunRecipes as string[] = [
    "techguns:rocketlauncher_altr",
    "techguns:grimreaper",
    "techguns:guidedmissilelauncher_alt",
    "techguns:nucleardeathray_alt",
    "techguns:gaussrifler",
    "techguns:tfg_alt",
    "techguns:chainsaw_alt",
    "techguns:laserpistol_alt",
    "techguns:lasergun_alt",
    "techguns:blasterrifle_alt",
    "techguns:scatterbeamrifle_altr",
    "techguns:sonicshotgun_alt",
    "techguns:pdw_alt",
    "techguns:pulserifle_alt",
    "techguns:mibgun_alt",
    "techguns:alienblaster_alt",
    "techguns:powerhammer_alt",
    "techguns:netherblaster",
    "techguns:biogun_alt",
    "techguns:teslagun_alt",
    "techguns:tacticalmask"
];

// Disabling this for now until I figure out if this is balanced or not
for item in techGuns {
    Recipes.setRecipeStage("disabled", item);
    ItemStages.addItemStage("disabled", item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage("disabled", recipe);
}