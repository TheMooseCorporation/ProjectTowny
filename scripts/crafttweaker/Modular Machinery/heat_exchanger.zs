/*

Heat Exchanger for turning custom fluids to gasses or vise versa
Don't use unless Mekatweaker is being used to create custom gasses

import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var sulfuricacid = RecipeBuilder.newBuilder("sulfuricacid", "heat_exchanger", 10);

sulfuricacid.addFluidInput(<liquid:water> * 1);
sulfuricacid.addGasInput("sulfuricacid", 1);

sulfuricacid.addFluidOutput(<liquid:sulfuric_acid> * 1);
sulfuricacid.addFluidOutput(<liquid:steam> * 1);
sulfuricacid.build();

*/