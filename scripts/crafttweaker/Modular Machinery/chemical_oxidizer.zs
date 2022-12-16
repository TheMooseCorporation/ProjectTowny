import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

/*
var sulfurdioxide = RecipeBuilder.newBuilder("sulfurdioxide", "chemicaloxidizer", 200);

sulfurdioxide.addEnergyPerTickInput(512);
sulfurdioxide.addItemInput(<ore:dustSulfur>);

sulfurdioxide.addFluidOutput(<liquid:sulfur_dioxide> * 100);
sulfurdioxide.build();

var sulfurtrioxideliquid = RecipeBuilder.newBuilder("sulfurtrioxideliquid", "chemicaloxidizer", 200);

sulfurtrioxideliquid.addEnergyPerTickInput(2048);
sulfurtrioxideliquid.addFluidInput(<liquid:sulfur_dioxide> * 2);
sulfurtrioxideliquid.addFluidInput(<liquid:oxygen> * 1);

sulfurtrioxideliquid.addFluidOutput(<liquid:sulfur_trioxide> * 2);
sulfurtrioxideliquid.build();

*/

var sulfuricacid = RecipeBuilder.newBuilder("sulfuricacid", "chemicaloxidizer", 200);

sulfuricacid.addEnergyPerTickInput(2048);
sulfuricacid.addItemInput(<ore:dustSulfur>);
sulfuricacid.addFluidInput(<liquid:water> * 50);
sulfuricacid.addFluidInput(<liquid:oxygen> * 25);

sulfuricacid.addFluidOutput(<liquid:sulfuric_acid> * 100);
sulfuricacid.build();