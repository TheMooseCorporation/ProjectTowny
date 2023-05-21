import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

Recipes.setRecipeStageByMod("sailing_stage", "davincisvessels");
ItemStages.stageModItems("sailing_stage", "davincisvessels");

val sailingItems as IItemStack[] = [
    <davincisvessels:balloon:15>,
    <davincisvessels:seat>,
    <davincisvessels:buffer>,
    <davincisvessels:stickybuffer>,
    <davincisvessels:crate_wood>,
    <davincisvessels:anchorpoint>,
    <davincisvessels:balloon:6>,
    <davincisvessels:balloon:7>,
    <davincisvessels:balloon:8>,
    <davincisvessels:balloon:9>,
    <davincisvessels:balloon:10>,
    <davincisvessels:balloon:11>,
    <davincisvessels:balloon:12>,
    <davincisvessels:balloon:13>,
    <davincisvessels:balloon:14>,
    <davincisvessels:marker>,
    <davincisvessels:securedbed>,
    <davincisvessels:floater>,
    <davincisvessels:balloon>,
    <davincisvessels:balloon:1>,
    <davincisvessels:balloon:2>,
    <davincisvessels:balloon:3>,
    <davincisvessels:balloon:4>,
    <davincisvessels:balloon:5>,
    <photoptics:basichandheldtelescope>
];

for item in sailingItems {
    Recipes.setRecipeStage("sailing_stage", item);
    ItemStages.addItemStage("sailing_stage", item);
}

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

