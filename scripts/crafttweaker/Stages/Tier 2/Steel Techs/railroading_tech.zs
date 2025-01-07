import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/**
    Adds trains
*/

// Stage Name
val stage = "railroading_tech";

val stageMods as string[] = [
    "immersiverailroading",
    "signal_stuff"
];

val stageItems as IItemStack[] = [

];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

# Small Plates
RecipeBuilder.get("engineer")
  .setShapeless([<ore:plateSteel>])
  .addTool(<ore:artisansHammer>, 2)
  .addOutput(<immersiverailroading:item_plate>.withTag({gauge: 1.435, plate: 0}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Medium Plates
RecipeBuilder.get("engineer")
  .setShapeless([<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>])
  .addTool(<ore:artisansHammer>, 5)
  .addOutput(<immersiverailroading:item_plate>.withTag({gauge: 1.435, plate: 1}) * 2)
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Large Plates
RecipeBuilder.get("engineer")
  .setShapeless([<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({gauge: 1.435, plate: 2}) * 2)
  .addRequirement(GameStages.allOf([stage]))
  .create();

# A1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/a1_peppercorn.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/a1_peppercorn.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Big Boy
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/big_boy.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/big_boy.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# K4 Pacific
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/k4_pacific.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/k4_pacific.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# E6 Atlantic
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/e6_atlantic.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/e6_atlantic.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# A5 Switcher
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/a5_switcher.json", gauge: 1.435, componentType: 32, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/a5_switcher.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Class 38
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/class_38.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/class_38.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();  

# Rodgers 460
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/rodgers_460.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/rodgers_460.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Br01
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/br01.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/br01.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Mogul
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/cooke_mogul.json", gauge: 0.9144, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/cooke_mogul.json", gauge: 0.9144, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# K36
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/k36.json", gauge: 0.9144, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/k36.json", gauge: 0.9144, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Firefly
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/firefly.json", gauge: 2.14, componentType: 9, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/firefly.json", gauge: 2.14, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# Big
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/bigboy.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/bigboy.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# FEF-1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/fef-1.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/fef-1.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();

# CP 0180
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <immersiverailroading:item_rolling_stock_component>.withTag({defID: "rolling_stock/locomotives/cp0180.json", gauge: 1.435, componentType: 5, raw_cast: 0 as byte}), <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiverailroading:item_plate>.withTag({defID: "rolling_stock/locomotives/cp0180.json", gauge: 1.435, plate: 3}))
  .addRequirement(GameStages.allOf([stage]))
  .create();