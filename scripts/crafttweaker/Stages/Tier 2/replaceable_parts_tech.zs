import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Replaceable Parts:
    We should create a mechanical system that goes along side our circuit system
    Is that within the scope of 0.7?
    Probably not...
    Will look more into this later - Moose 5/21/23

    Welp I got talked into it, I guess it was within scope... - Moose 5/22/23

    I think I figured out how to make it work! - Moose 2/16/24

    Project Towny Mechanical System
    Please note that this feature is in an alpha state, more will be added to this, and additional polish will come!
*/

// Stage Name
val stage = "replaceable_parts_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <enderio:item_liquid_conduit>,
    <projecttowny:air_intake>,
    <projecttowny:fuel_aerator>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Mechanics System
RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:mechanical_casing>, <ore:gearIron>])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<immersiveengineering:material:8> * 4)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<contenttweaker:mechanical_casing_steel>, <ore:gearSteel>])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<immersiveengineering:material:9> * 4)
  .addRequirement(GameStages.allOf([stage]))
  .create();

// Mechanics System Recipe Changes
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateIron>, <ore:ingotCopper>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],[<ore:plateSteel>, <ore:ingotCopper>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
