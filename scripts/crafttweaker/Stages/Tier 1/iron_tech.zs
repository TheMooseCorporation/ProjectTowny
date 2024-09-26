import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Iron Tech:
    Anything that we want to lock behind founding a town should go here
    Nothing is currently gated behind this gamestage, it acts as more of tutorial to showcase how the system works.
*/

// Stage Name
val stage = "iron_tech";

val stageItems as IItemStack[] = [
    
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Makes ATM Craftable
recipes.addShaped(<fsmm:atm>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, <modcurrency:banknote:3>, <ore:ingotIron>], [<ore:blockIron>, <ore:blockRedstone>, <ore:blockIron>]]);