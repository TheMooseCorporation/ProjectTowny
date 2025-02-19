import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.immersiveengineering.Blueprint;

# Immersive Engineering Component Blueprints
Blueprint.addRecipe("Gun Components", <mwc:ak47>, [<ore:logWood>, <minecraft:dirt>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet4440>, [<contenttweaker:projectile_44>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet792x57>, [<contenttweaker:projectile_792>, <minecraft:gunpowder> * 2, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet792x33kurz>, [<contenttweaker:projectile_792>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet3006springfield>, [<contenttweaker:projectile_30>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet45acp>, [<contenttweaker:projectile_45>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet9x19mm>, [<contenttweaker:projectile_9>, <minecraft:gunpowder>, <contenttweaker:empty_pistol_casing>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet556x45>, [<contenttweaker:projectile_556>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:bullet762x39>, [<contenttweaker:projectile_762>, <minecraft:gunpowder>, <immersiveengineering:bullet>]);
Blueprint.addRecipe("Ammunition", <mwc:shotgun12gauge>, [<ore:nuggetLead> * 12, <minecraft:gunpowder>, <immersiveengineering:bullet:1>]);