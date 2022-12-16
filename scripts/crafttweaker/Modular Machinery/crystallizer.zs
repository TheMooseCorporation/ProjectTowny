import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var siliconboule = RecipeBuilder.newBuilder("siliconboule", "crystallizer", 6000);

siliconboule.addEnergyPerTickInput(256);
siliconboule.addItemInput(<minecraft:quartz>);
siliconboule.addFluidInput(<liquid:molten_silicon> * 1000);

siliconboule.addItemOutput(<libvulpes:productboule:3>);

siliconboule.build();