import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;
import mods.immersiveengineering.AlloySmelter;

/**
    Electrical Engineering Specilization:
    For towns focused on electricity
*/

// Stage Name
val stage = "electrical_engineering_spec";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Mekanism Batteries

// Remove regular recipes, so only Electrical Engineer's can craft these bad boys
recipes.remove(<mekanism:energycube>.withTag({tier: 0}));
recipes.remove(<mekanism:energycube>.withTag({tier: 1}));
recipes.remove(<mekanism:energycube>.withTag({tier: 2}));
recipes.remove(<mekanism:energycube>.withTag({tier: 3}));

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil>, <immersiveengineering:metal_device0>, <immersiveengineering:wirecoil>],
    [<ore:circuitBasic>, <immersiveengineering:metal_decoration0>, <ore:circuitBasic>],
    [<immersiveengineering:wirecoil>, <immersiveengineering:metal_device0>, <immersiveengineering:wirecoil>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<mekanism:energycube>.withTag({tier: 0}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device0:1>, <immersiveengineering:wirecoil:1>],
    [<ore:circuitAdvanced>, <mekanism:energycube>.withTag({tier: 0}), <ore:circuitAdvanced>],
    [<immersiveengineering:wirecoil:1>, <immersiveengineering:metal_device0:1>, <immersiveengineering:wirecoil:1>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<mekanism:energycube>.withTag({tier: 1}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:metal_device0:2>, <immersiveengineering:wirecoil:2>],
    [<ore:circuitElite>, <mekanism:energycube>.withTag({tier: 1}), <ore:circuitElite>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:metal_device0:2>, <immersiveengineering:wirecoil:2>]])
  .addTool(<ore:artisansSolderer>, 50)
  .addTool(<ore:artisansCutters>, 50)
  .addOutput(<mekanism:energycube>.withTag({tier: 2}))
  .addRequirement(GameStages.allOf([stage]))
  .create();  

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <ore:circuitElite>, <mekanism:energycube>.withTag({tier: 2}), <ore:circuitElite>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_device0:2>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:wirecoil:2>],
    [<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]])
  .addTool(<ore:artisansSolderer>, 100)
  .addTool(<ore:artisansCutters>, 100)
  .addOutput(<mekanism:energycube>.withTag({tier: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

// Mekanism Multiblock Batteries

recipes.remove(<mekanism:basicblock2:1>);
recipes.remove(<mekanism:basicblock2:2>);
recipes.remove(<mekanism:basicblock2:3>.withTag({tier: 0}));
recipes.remove(<mekanism:basicblock2:3>.withTag({tier: 1}));
recipes.remove(<mekanism:basicblock2:3>.withTag({tier: 2}));
recipes.remove(<mekanism:basicblock2:3>.withTag({tier: 3}));
recipes.remove(<mekanism:basicblock2:4>.withTag({tier: 0}));
recipes.remove(<mekanism:basicblock2:4>.withTag({tier: 1}));
recipes.remove(<mekanism:basicblock2:4>.withTag({tier: 2}));
recipes.remove(<mekanism:basicblock2:4>.withTag({tier: 3}));

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotSteel>, null],
    [<ore:ingotSteel>, <immersiveengineering:metal_device0>, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, null]])
  .addOutput(<mekanism:basicblock2:1> * 4)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotSteel>, null],
    [<ore:ingotSteel>, <ore:circuitElite>, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, null]])
  .addOutput(<mekanism:basicblock2:2> * 2)
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:dustLithium>, <immersiveengineering:metal_device0>, <ore:dustLithium>],
    [<immersiveengineering:metal_device0>, <mekanism:energycube>.withTag({tier: 0}), <immersiveengineering:metal_device0>],
    [<ore:dustLithium>, <immersiveengineering:metal_device0>, <ore:dustLithium>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:3>.withTag({tier: 0}))
  .addRequirement(GameStages.allOf([stage]))
  .create();  

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 0}), <immersiveengineering:metal_device0>],
    [<mekanism:basicblock2:3>.withTag({tier: 0}), <mekanism:energycube>.withTag({tier: 1}), <mekanism:basicblock2:3>.withTag({tier: 0})],
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 0}), <immersiveengineering:metal_device0>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:3>.withTag({tier: 1}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 1}), <immersiveengineering:metal_device0>],
    [<mekanism:basicblock2:3>.withTag({tier: 1}), <mekanism:energycube>.withTag({tier: 2}), <mekanism:basicblock2:3>.withTag({tier: 1})],
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 1}), <immersiveengineering:metal_device0>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:3>.withTag({tier: 2}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 2}), <immersiveengineering:metal_device0>],
    [<mekanism:basicblock2:3>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 3}), <mekanism:basicblock2:3>.withTag({tier: 2})],
    [<immersiveengineering:metal_device0>, <mekanism:basicblock2:3>.withTag({tier: 2}), <immersiveengineering:metal_device0>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:3>.withTag({tier: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:dustLithium>, <ore:circuitBasic>, <ore:dustLithium>],
    [<ore:circuitBasic>, <mekanism:energycube>.withTag({tier: 0}), <ore:circuitBasic>],
    [<ore:dustLithium>, <ore:circuitBasic>, <ore:dustLithium>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:4>.withTag({tier: 0}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:circuitAdvanced>, <mekanism:basicblock2:4>.withTag({tier: 0}), <ore:circuitAdvanced>],
    [<mekanism:basicblock2:4>.withTag({tier: 0}), <mekanism:energycube>.withTag({tier: 1}), <mekanism:basicblock2:4>.withTag({tier: 0})],
    [<ore:circuitAdvanced>, <mekanism:basicblock2:4>.withTag({tier: 0}), <ore:circuitAdvanced>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:4>.withTag({tier: 1}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:circuitElite>, <mekanism:basicblock2:4>.withTag({tier: 1}), <ore:circuitElite>],
    [<mekanism:basicblock2:4>.withTag({tier: 1}), <mekanism:energycube>.withTag({tier: 2}), <mekanism:basicblock2:4>.withTag({tier: 1})],
    [<ore:circuitElite>, <mekanism:basicblock2:4>.withTag({tier: 1}), <ore:circuitElite>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:4>.withTag({tier: 2}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:circuitElite>, <mekanism:basicblock2:4>.withTag({tier: 2}), <ore:circuitElite>],
    [<mekanism:basicblock2:4>.withTag({tier: 2}), <mekanism:energycube>.withTag({tier: 3}), <mekanism:basicblock2:4>.withTag({tier: 2})],
    [<ore:circuitElite>, <mekanism:basicblock2:4>.withTag({tier: 2}), <ore:circuitElite>]])
  .addTool(<ore:artisansSolderer>, 75)
  .addOutput(<mekanism:basicblock2:4>.withTag({tier: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

// EnderIO Energy Conduits
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:4>, <ore:ingotIron>, <ore:dustRedstone>, 2000);

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]])
  .addOutput(<enderio:item_power_conduit> * 8)
  .addRequirement(GameStages.anyOf([stage, "advanced_compact_machinery_tech"]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]])
  .addOutput(<enderio:item_power_conduit:1> * 8)
  .addRequirement(GameStages.anyOf([stage, "advanced_compact_machinery_tech"]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]])
  .addOutput(<enderio:item_power_conduit:2> * 8)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
    [<ore:ingotOsmium>, <immersiveengineering:metal_device0:2>, <ore:ingotOsmium>],
    [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]])
  .addOutput(<enderio:item_power_conduit:2> * 8)
  .addRequirement(GameStages.anyOf(["advanced_compact_machinery_tech"]))
  .create();

// Spec Tech

/**
    Electrical Engineering Specilization Tech:
    Unlocks the thermoelectric generator
*/

val spec_tech_stage = "electrical_engineering_tech_spec";

val spec_tech_stageItems as IItemStack[] = [

];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

recipes.remove(<immersiveengineering:metal_device1:3>);
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:fabricHemp>, <immersiveengineering:metal_decoration0>, <ore:fabricHemp>, <ore:ingotSteel>],
    [<ore:plateConstantan>, <ore:fabricHemp>, <immersiveengineering:metal_decoration0>, <ore:fabricHemp>, <ore:plateConstantan>],
    [<ore:plateConstantan>, <ore:fabricHemp>, <immersiveengineering:metal_decoration0>, <ore:fabricHemp>, <ore:plateConstantan>],
    [<ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>]])
  .addTool(<artisanworktables:artisans_solderer_iron>, 100)
  .addTool(<artisanworktables:artisans_cutters_iron>, 100)
  .addOutput(<immersiveengineering:metal_device1:3>)
  .addRequirement(GameStages.anyOf([spec_tech_stage]))
  .create();