import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var recipe = RecipeBuilder.newBuilder("isobutylene", "isomerizationunit", 200);

recipe.addEnergyPerTickInput(1024);

recipe.addFluidInput(<liquid:butane> * 100);

recipe.addFluidOutput(<liquid:isobutylene> * 85);
recipe.addFluidOutput(<liquid:hydrogen> * 15);

recipe.build();