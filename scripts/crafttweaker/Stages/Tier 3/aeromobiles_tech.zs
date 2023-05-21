import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Aeromobiles:
    Every plane except for the large commercial ones, those are under basic rocketry
*/

// Stage Name
val stage = "aeromobiles_tech";

val stageMods as string[] = [

];

val stageItems as IItemStack[] = [
    <mts:mtsofficialpack.mc172_oak>,
    <mts:mtsofficialpack.mc172_spruce>,
    <mts:mtsofficialpack.mc172_birch>,
    <mts:mtsofficialpack.mc172_jungle>,
    <mts:mtsofficialpack.mc172_acacia>,
    <mts:mtsofficialpack.mc172_darkoak>,
    <mts:mtsofficialpack.propellersmall2blade>,
    <mts:mtsofficialpack.enginelycomingo360>,
    <mts:mtsofficialpack.pzlp11>,
    <mts:mtsofficialpack.trimotor_black>,
    <mts:mtsofficialpack.trimotor_blue>,
    <mts:mtsofficialpack.trimotor_red>,
    <mts:mtsofficialpack.trimotor_white>,
    <mts:mtsofficialpack.vulcanair_dark_red>,
    <mts:mtsofficialpack.vulcanair_white_orange>,
    <mts:mtsofficialpack.comanche_blue>,
    <mts:mtsofficialpack.comanche_grey>,
    <mts:mtsofficialpack.comanche_red>,
    <mts:mtsofficialpack.comanche_yellow>,
    <mts:mtsofficialpack.vulcanair_white>,
    <mts:mtsofficialpack.vulcanair_green>,
    <mts:mtsofficialpack.vulcanair_blue>,
    <mts:mtsofficialpack.vulcanair_black>,
    <mts:mtsofficialpack.vulcanair_red>,
    <mts:mtsofficialpack.bell47g>,
    <mts:mtsofficialpack.propellerlarge2blade>,
    <mts:mtsofficialpack.propellerrotor>,
    <mts:mtsofficialpack.propellersmall3blade>,
    <mts:mtsofficialpack.e500_blue>,
    <mts:mtsofficialpack.e500_green>,
    <mts:mtsofficialpack.e500_red>,
    <mts:mtsofficialpack.e500_yellow>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}