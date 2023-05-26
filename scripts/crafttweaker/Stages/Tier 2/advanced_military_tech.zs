import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;

/**
    Advanced Military Tech:
    Unlocks better techguns weapons and machines
*/

// Stage Name
val stage = "advanced_military_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <techguns:item_door3x3:1>,
    <techguns:item_door3x3:2>,
    <techguns:item_door3x3>,
    <techguns:item_door3x3:3>,
    <techguns:itemshared:133>,
    <techguns:itemshared:132>,
    <techguns:itemshared:14>,
    <techguns:itemshared:12>,
    <techguns:itemshared:11>,
    <techguns:itemshared:13>,
    <techguns:itemshared:35>,
    <techguns:itemshared:43>,
    <techguns:itemshared:44>,
    <techguns:itemshared:72>,
    <techguns:combatknife>,
    <techguns:itemshared:4>,
    <techguns:itemshared:5>,
    <techguns:itemshared:7>,
    <techguns:riot_shield>,
    <techguns:fraggrenade>,
    <techguns:itemshared:8>,
    <techguns:t2_beret>,
    <techguns:simplemachine:8>,
    <techguns:basicmachine:2>,
    <techguns:simplemachine:9>,
    <techguns:simplemachine:10>,
    <techguns:simplemachine2:8>,
    <techguns:nethermetal:6>,
    <techguns:nethermetal:7>,
    <techguns:nethermetal:8>,
    <techguns:nethermetal:9>,
    <techguns:concrete>,
    <techguns:concrete:1>,
    <techguns:concrete:2>,
    <techguns:concrete:3>,
    <techguns:nethermetal:5>,
    <techguns:metalpanel:4>,
    <techguns:metalpanel:5>,
    <techguns:metalpanel:6>,
    <techguns:metalpanel:7>,
    <techguns:nethermetal>,
    <techguns:nethermetal:1>,
    <techguns:nethermetal:2>,
    <techguns:nethermetal:3>,
    <techguns:metalpanel:3>,
    <techguns:sandbags>,
    <techguns:item_bunkerdoor>,
    <techguns:lamp0>,
    <techguns:lamp0:6>,
    <techguns:lamp0:12>,
    <techguns:lamp0:13>,
    <techguns:metalpanel>,
    <techguns:metalpanel:1>,
    <techguns:metalpanel:2>,
    <techguns:itemshared:56>,
    <techguns:military_crate:6>,
    <techguns:military_crate:7>,
    <techguns:military_crate:8>,
    <techguns:explosive_charge>,
    <techguns:explosive_charge:1>,
    <techguns:itemshared:34>,
    <techguns:neonlights:2>,
    <techguns:neonlights:3>,
    <techguns:neonlights:4>,
    <techguns:military_crate>,
    <techguns:military_crate:1>,
    <techguns:military_crate:2>,
    <techguns:military_crate:4>,
    <techguns:military_crate:3>,
    <techguns:military_crate:5>,
    <techguns:camonet_top>,
    <techguns:camonet_top:1>,
    <techguns:camonet_top:2>,
    <techguns:stairs_metal:7>,
    <techguns:stairs_metal:15>,
    <techguns:stairs_concrete:7>,
    <techguns:stairs_concrete:15>,
    <techguns:neonlights>,
    <techguns:neonlights:1>,
    <techguns:concrete:4>,
    <techguns:concrete:5>,
    <techguns:ladder0:8>,
    <techguns:ladder0:9>,
    <techguns:ladder0:10>,
    <techguns:ladder0:11>,
    <techguns:camonet>,
    <techguns:camonet:1>,
    <techguns:camonet:2>,
    <techguns:itemshared:89>,
    <techguns:radaway>,
    <techguns:radpills>,
    <techguns:gasmask>,
    <techguns:itemshared:147>,
    <techguns:itemshared:148>,
    <techguns:itemshared:149>,
    <techguns:itemshared:150>,
    <techguns:itemshared:151>,
    <techguns:itemshared:152>,
    <techguns:itemshared:58>,
    <techguns:itemshared:55>,
    <techguns:itemshared:46>,
    <techguns:itemshared:47>,
    <techguns:itemshared:48>,
    <techguns:itemshared:49>,
    <techguns:itemshared:50>,
    <techguns:itemshared:51>,
    <techguns:itemshared:52>,
    <techguns:itemshared:54>,
    <techguns:simplemachine2:9>,
    <techguns:itemshared:15>,
    <techguns:itemshared:16>,
    <techguns:ballistic_shield>,
    <techguns:advanced_shield>,
    <techguns:itemshared:23>,
    <techguns:itemshared:24>,
    <techguns:itemshared:27>,
    <techguns:itemshared:28>,
    <techguns:itemshared:95>,
    <techguns:itemshared:96>,
    <techguns:itemshared:103>,
    <techguns:scubatanks>,
    <techguns:itemshared:93>,
    <techguns:itemshared:146>,
    <techguns:itemshared:107>,
    <techguns:itemshared:108>,
    <techguns:itemshared:109>,
    <techguns:itemshared:110>,
    <techguns:itemshared:111>,
    <techguns:itemshared:112>,
    <techguns:itemshared:113>,
    <techguns:itemshared:115>,
    <techguns:itemshared:39>,
    <techguns:itemshared:119>,
    <techguns:itemshared:106>,
    <techguns:itemshared:94>,
    <techguns:crowbar>,
    <techguns:hazmat_helmet>,
    <techguns:hazmat_chestplate>,
    <techguns:hazmat_leggings>,
    <techguns:hazmat_boots>

];

val techGuns as IItemStack[] = [
    <techguns:combatshotgun>,
    <techguns:flamethrower>,
    <techguns:ak47>,
    <techguns:m4>,
    <techguns:pistol>,
];

val techGunRecipes as string[] = [
    "techguns:combatshotgun",
    "techguns:flamethrower_alt",
    "techguns:ak47_alt",
    "techguns:m4_alt",
    "techguns:pistol_alt",
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Techguns weapon staging

for item in techGuns {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for recipe in techGunRecipes{
    Recipes.setRecipeStage(stage, recipe);
}

// Recipe Changes

// Removes Gunpowder
recipes.remove(<minecraft:gunpowder>);
recipes.remove(<techguns:itemshared:57>);

// Chemlab recipe changes
mods.techguns.ChemLab.removeRecipe(<minecraft:gunpowder>,null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:96>,null);
mods.techguns.ChemLab.addRecipe(<minecraft:coal>,1,<minecraft:coal>,1,<liquid:oil>*1000,false,<techguns:itemshared:96>,<liquid:water>*0,25);

// Enrichment recipe changes
mods.mekanism.enrichment.removeRecipe(<ore:dustSulfur>);
mods.mekanism.enrichment.removeRecipe(<ore:dustSaltpeter>);
mods.mekanism.crusher.removeRecipe(<minecraft:gunpowder>);

// 40mm Grenade recipe
Recipes.addShaped(stage, <techguns:itemshared:5>, [[<ore:plateIron>, null, <ore:plateIron>],[<ore:plateIron>, <minecraft:tnt>, <ore:plateIron>], [<ore:plateIron>, null, <ore:plateIron>]]);
