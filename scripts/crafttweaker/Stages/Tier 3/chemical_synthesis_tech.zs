import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;
import mods.artisanworktables.builder.RecipeBuilder;

/**
    Chemical Synthesis:
    Unlocks the machines required for chemical manufacturing
    All chemical related items should go here
*/

// Stage Name
val stage = "chemical_synthesis_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <projecttowny:chemical_oxidizer>,
    <projecttowny:chemical_reactor>,
    <projecttowny:isomerization_unit>,
    <projecttowny:compact_chemical_reactor>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Multiblock controller recipes
recipes.addShaped(<projecttowny:isomerization_unit>, [[<ore:blockSheetmetalIron>, <immersiveengineering:metal_device1:6>, <ore:blockSheetmetalIron>],[<ore:blockSheetmetalIron>, <ore:blockSteel>, <ore:blockSheetmetalIron>], [<ore:blockSteel>, <immersiveengineering:metal_decoration0:5>, <ore:blockSteel>]]);
recipes.addShaped(<projecttowny:chemical_oxidizer>, [[<ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>],[<immersiveengineering:metal_device0:6>, <immersiveengineering:metal_device0:5>, <immersiveengineering:metal_device0:6>], [<ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>]]);

//Locks Multiblocks
IEMultiBlockStages.addStage(stage, "IT:electrolyticCrucibleBattery", "Requires " + stage);

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>],
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>],
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>, <engineersdecor:panzerglass_block>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>],
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>, <ore:circuitElite>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>],
    [<immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0>]])
  .addOutput(<projecttowny:chemical_reactor>)
  .create();