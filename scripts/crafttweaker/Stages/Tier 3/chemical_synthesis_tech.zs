import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

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
    <projecttowny:isomerization_unit>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}