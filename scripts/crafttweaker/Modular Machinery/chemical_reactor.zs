import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

/*
var isobutylene = RecipeBuilder.newBuilder("isobutylene", "chemicalreactor", 200);

isobutylene.addEnergyPerTickInput(2048);
isobutylene.addFluidInput(<liquid:isobutane> * 100);
// 14:12 isobutane:isobutylene :2 hydrogen
isobutylene.addFluidOutput(<liquid:isobutylene> * 85);
isobutylene.addFluidOutput(<liquid:hydrogen> * 15);
isobutylene.build();
*/

var butylatedhydroxytoluene = RecipeBuilder.newBuilder("butylatedhydroxytoluene", "chemicalreactor", 200);

butylatedhydroxytoluene.addEnergyPerTickInput(1024);
butylatedhydroxytoluene.addFluidInput(<liquid:creosote> * 50);
butylatedhydroxytoluene.addFluidInput(<liquid:isobutylene> * 100);
butylatedhydroxytoluene.addFluidInput(<liquid:sulfuric_acid> * 8);

butylatedhydroxytoluene.addFluidOutput(<liquid:butylated_hydroxytoluene> * 150);

butylatedhydroxytoluene.build();

/*
var rocketfuel = RecipeBuilder.newBuilder("rocketfuel", "chemicalreactor", 400);

rocketfuel.addEnergyPerTickInput(2048);
rocketfuel.addFluidInput(<liquid:refined_kerosene> * 500);
rocketfuel.addFluidInput(<liquid:butylated_hydroxytoluene> * 500);

rocketfuel.addFluidOutput(<liquid:rocketfuel> * 1000);

rocketfuel.build();
*/