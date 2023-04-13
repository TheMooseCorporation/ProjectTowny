import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Set sail on OCEANS ONLY
*/

// Stage Name
val stage = "sailing_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <davincisvessels:seat>,
    <davincisvessels:securedbed>,
    <davincisvessels:buffer>,
    <davincisvessels:stickybuffer>,
    <davincisvessels:crate_wood>,
    <davincisvessels:gauge:1>,
    <davincisvessels:floater>,
    <davincisvessels:marker>,
    <davincisvessels:anchorpoint>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}
