import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Blueprint;

# Guns
recipes.addShaped(<mwc:m1873>, [[<minecraft:iron_nugget>, null, null],[<immersiveengineering:material:14>, <contenttweaker:rifle_parts>, <contenttweaker:gun_stock1>], [null, null, null]]);

# Immersive Engineering Component Blueprints
Blueprint.addRecipe("Gun Components", <mwc:ak47>, [<ore:logWood>, <minecraft:dirt>]);

# Components

# Parts
recipes.addShaped(<contenttweaker:rifle_parts>, [[<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>],[<immersiveengineering:material:8>, <immersiveengineering:material:8>, <immersiveengineering:material:16>], [<ore:plateSteel>, <contenttweaker:bolt_box1>, <ore:plateSteel>]]);

# Stocks
recipes.addShaped(<contenttweaker:gun_stock1>, [[<ore:plankWood>, <ore:plankWood>, <ore:ingotSteel>],[null, <ore:plankWood>, <ore:ingotSteel>], [null, null, <ore:plankWood>]]);

# Barrels

# Bullets
Blueprint.addRecipe("Ammunition", <mwc:bullet4440>, [<contenttweaker:projectile_44>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet9x19mm>, [<contenttweaker:projectile_9>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
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
Blueprint.addRecipe("bullet", <contenttweaker:projectile_45>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_30>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_556>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_762>, [<ore:nuggetLead>]);
Blueprint.addRecipe("bullet", <contenttweaker:projectile_792>, [<ore:nuggetLead>]);
