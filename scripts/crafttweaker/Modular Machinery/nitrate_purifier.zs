import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var recipe = RecipeBuilder.newBuilder("purified_nitrate", "nitratepurifier", 50);

recipe.addEnergyPerTickInput(80);
recipe.addItemInput(<ore:dustSaltpeter>);
recipe.addItemInput(<ore:dustSaltpeter>);
recipe.addItemOutput(<contenttweaker:purified_nitrate>);

recipe.build();