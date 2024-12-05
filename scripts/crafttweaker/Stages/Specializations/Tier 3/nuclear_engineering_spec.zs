import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;
import mods.immersiveengineering.Mixer;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;
import mods.nuclearcraft.isotope_separator;

/**
    Nuclear Engineering Specilization:
    For towns focused on nuclearcraft
*/

// Stage Name
val stage = "nuclear_engineering_spec";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <nuclearcraft:nuclear_furnace_idle>,
    <nuclearcraft:rtg_uranium>,
    <nuclearcraft:rtg_plutonium>,
    <nuclearcraft:rtg_americium>,
    <nuclearcraft:rtg_californium>,
    <contenttweaker:yellow_cake>,
    <contenttweaker:refined_yellow_cake>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Nuclear Furnace
RecipeBuilder.get("engineer")
  .setShaped([
    [<nuclearcraft:part>, <ore:ingotLithium>, <nuclearcraft:part>],
    [<ore:ingotLithium>, <minecraft:furnace>, <ore:ingotLithium>],
    [<nuclearcraft:part>, <ore:ingotLithium>, <nuclearcraft:part>]])
  .addTool(<ore:artisansDriver>, 100)
  .addOutput(<nuclearcraft:nuclear_furnace_idle>)
  .addRequirement(GameStages.anyOf([stage]))
  .create();

// Spec Tech

/**
    Nuclear Engineering Specilization Tech:
    Unlocks 
*/

val spec_tech_stage = "nuclear_engineering_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Spec Item Staging
ItemStages.addItemStage("basic_circuitry_tech", <nuclearcraft:nuclear_furnace_idle>);
ItemStages.addItemStage("atomic_theory_tech", <nuclearcraft:rtg_uranium>);
ItemStages.addItemStage("atomic_theory_tech", <nuclearcraft:rtg_plutonium>);
ItemStages.addItemStage("atomic_theory_tech", <nuclearcraft:rtg_americium>);
ItemStages.addItemStage("atomic_theory_tech", <nuclearcraft:rtg_californium>);
ItemStages.addItemStage(spec_tech_stage, <contenttweaker:yellow_cake>);
ItemStages.addItemStage(spec_tech_stage, <contenttweaker:refined_yellow_cake>);

// 2x Uranium Isotope Recipe
recipes.addShapeless(<contenttweaker:refined_yellow_cake>, [<contenttweaker:yellow_cake>,<minecraft:clay_ball>]);
Mixer.addRecipe(<liquid:salt_water> * 250, <liquid:water> * 250, [<ore:dustSalt>], 256);
ElectrolyticCrucibleBattery.addRecipe(<liquid:sodium_chlorate> * 50, <liquid:hydrogen> * 150, null, null, <liquid:salt_water> * 200, 512000, 250);
isotope_separator.addRecipe([<contenttweaker:yellow_cake>, <nuclearcraft:uranium:8>, <nuclearcraft:uranium:6>]);
