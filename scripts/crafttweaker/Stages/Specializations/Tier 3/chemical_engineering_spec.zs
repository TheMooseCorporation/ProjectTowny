import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Chemical Engineering Specilization:
    For towns focused on chemistry
*/

// Stage Name
val stage = "chemical_engineering_spec";

val stageMods as string[] = [
    
];

val stageItems as IItemStack[] = [
    <projecttowny:compact_chemical_reactor>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
}

// Spec Tech

/**
    Chemical Engineering Specilization Tech:
    I have no idea what to put here?
*/

val spec_tech_stage = "chemical_engineering_tech_spec";

val spec_tech_stageItems as IItemStack[] = [
    
];

for item in spec_tech_stageItems {
    Recipes.setRecipeStage(spec_tech_stage, item);
}

// Pyrotheum and Petrotheum Dust
recipes.remove(<thermalfoundation:material:1024>);
recipes.remove(<thermalfoundation:material:1027>);

