import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Mechanics:
    Unlocks Immersive Vehicles and Itemducts
*/

// Stage Name
val stage = "mechanics_tech";

val stageMods as string[] = [
    "mts",
    "trafficcontrol"
];

val stageItems as IItemStack[] = [
    <enderio:item_item_conduit>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

recipes.remove(<enderio:item_item_conduit> * 8);

RecipeBuilder.get("engineer")
  .setShaped([
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],
    [<ore:gearIron>, <immersiveengineering:material:8>, <ore:gearIron>],
    [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<enderio:item_item_conduit> * 8)
  .addRequirement(GameStages.allOf([stage]))
  .create();