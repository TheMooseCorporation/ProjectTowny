import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

/**
    Scientific Theory:
    Unlocks the Modern Research Lab
*/

// Stage Name
val stage = "scientific_theory_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <projecttowny:tier3_research>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

RecipeBuilder.get("engineer")
  .setShaped([
    [<chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>, <chisel:laboratory>],
    [<chisel:laboratory>, <immersiveengineering:metal_decoration0:1>, <opencomputers:component:2>, <immersiveengineering:metal_decoration0:1>, <chisel:laboratory>],
    [<chisel:laboratory>, <ore:circuitAdvanced>, <projecttowny:tier2_research>, <ore:circuitAdvanced>, <chisel:laboratory>],
    [<chisel:laboratory>, <ore:circuitAdvanced>, <immersiveengineering:metal_decoration0:5>, <ore:circuitAdvanced>, <chisel:laboratory>],
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>]])
  .addOutput(<projecttowny:tier3_research>)
  .create();