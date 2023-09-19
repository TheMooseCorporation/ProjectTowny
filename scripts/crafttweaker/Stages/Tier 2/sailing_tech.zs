import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Sailing:
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
    <davincisvessels:floater>,
    <davincisvessels:marker>,
    <davincisvessels:anchorpoint>,
    <davincisvessels:gauge>,
    <davincisvessels:gauge:1>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Remove the default balloon recipe so we can use our custom one
val balloons as IItemStack[] = [
    <davincisvessels:balloon:15>,
    <davincisvessels:balloon:6>,
    <davincisvessels:balloon:7>,
    <davincisvessels:balloon:8>,
    <davincisvessels:balloon:9>,
    <davincisvessels:balloon:10>,
    <davincisvessels:balloon:11>,
    <davincisvessels:balloon:12>,
    <davincisvessels:balloon:13>,
    <davincisvessels:balloon:14>,
    <davincisvessels:balloon>,
    <davincisvessels:balloon:1>,
    <davincisvessels:balloon:2>,
    <davincisvessels:balloon:3>,
    <davincisvessels:balloon:4>,
    <davincisvessels:balloon:5>,
];

for item in balloons {
    recipes.remove(item);
}