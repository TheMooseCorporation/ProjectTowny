import mods.ItemStages;
import crafttweaker.item.IItemStack;

val planes as IItemStack[] = [
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

for item in planes {
    ItemStages.addItemStage("flight_stage", item);
}

