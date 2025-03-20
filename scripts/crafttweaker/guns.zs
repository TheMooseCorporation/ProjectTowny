import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Blueprint;

// <mwc:m45a1mag_2>.displayName = "7rnd 1911 Magazine";

# Guns

# Basic Military
recipes.addShaped(<mwc:m1873>, [[<minecraft:iron_nugget>, null, null],[<immersiveengineering:material:14>, <immersiveengineering:metal:38>, <immersiveengineering:material:16>], [null, null, <contenttweaker:gun_stock1>]]);
recipes.addShaped(<mwc:m1897>, [[<minecraft:iron_nugget>, null, null],[<immersiveengineering:material:14>, <contenttweaker:shotgun_parts>, <contenttweaker:gun_stock1>], [null, null, null]]);
recipes.addShaped(<mwc:python>, [[null, null, null],[<immersiveengineering:material:14>, <immersiveengineering:material:15>, <contenttweaker:pistol_parts>], [null, null, <immersiveengineering:material:13>]]);
recipes.addShaped(<mwc:springfield>, [[<minecraft:iron_nugget>, null, <contenttweaker:rifle_parts>],[<immersiveengineering:material:14>, <immersiveengineering:material:14>, <contenttweaker:rifle_parts>], [null, null, <contenttweaker:gun_stock1>]]);
recipes.addShaped(<mwc:m1_garand>, [[<minecraft:iron_nugget>, null, <contenttweaker:rifle_parts>],[<contenttweaker:gun_barrel2>, <contenttweaker:gun_barrel2>, <contenttweaker:rifle_parts>], [null, null, <contenttweaker:gun_stock1>]]);

# Advanced Military

# Modern Miliary

# Immersive Engineering Component Blueprints
Blueprint.addRecipe("Gun Components", <mwc:ak47>, [<ore:logWood>, <minecraft:dirt>]);

# Components

# Parts
recipes.addShaped(<contenttweaker:rifle_parts>, [[<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>],[<immersiveengineering:material:8>, <immersiveengineering:material:8>, <immersiveengineering:material:16>], [<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>]]);
recipes.addShaped(<contenttweaker:shotgun_parts>, [[<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>],[<immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:16>], [<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>]]);
recipes.addShaped(<contenttweaker:pistol_parts>, [[<ore:plateIron>, <contenttweaker:bolt>, <ore:plateIron>],[<immersiveengineering:material:8>, <locks:spring>, <immersiveengineering:material:16>], [<ore:plateIron>, <contenttweaker:bolt>, <ore:plateIron>]]);

# Stocks
recipes.addShaped(<contenttweaker:gun_stock1>, [[<ore:plankWood>, <ore:plankWood>, <ore:ingotSteel>],[null, <ore:plankWood>, <ore:ingotSteel>], [null, null, <ore:plankWood>]]);

# Barrels
recipes.addShaped(<contenttweaker:gun_barrel2>, [[<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>],[<immersiveengineering:material:2>, <immersiveengineering:material:2>, <immersiveengineering:material:2>], [<enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot:6>]]);
recipes.addShaped(<contenttweaker:gun_barrel3>, [[<ore:plateGunmetal>, <ore:plateGunmetal>, <ore:plateGunmetal>],[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [<ore:plateGunmetal>, <ore:plateGunmetal>, <ore:plateGunmetal>]]);

# Bullets
Blueprint.addRecipe("Ammunition", <mwc:bullet4440>, [<contenttweaker:projectile_44>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet9x19mm>, [<contenttweaker:projectile_9>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet357>, [<contenttweaker:projectile_357>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet45acp>, [<contenttweaker:projectile_45>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet3006springfield>, [<contenttweaker:projectile_30>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet556x45>, [<contenttweaker:projectile_556>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet762x39>, [<contenttweaker:projectile_762>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet792x33kurz>, [<contenttweaker:projectile_792>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet792x57>, [<contenttweaker:projectile_792>, <minecraft:gunpowder> * 2, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:shotgun12gauge>, [<ore:nuggetLead> * 12, <minecraft:gunpowder>, <immersiveengineering:bullet:1>]);

# Projectiles
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "casull"}));
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "armor_piercing"}));
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "silver"}));
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "buckshot"}));
Blueprint.removeRecipe(<immersiveengineering:bullet:2>.withTag({bullet: "he"}));

Blueprint.addRecipe("bullet", <contenttweaker:projectile_44>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_9>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_357>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_45>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_30>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_556>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_762>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_792>, [<ore:nuggetLead>]);
