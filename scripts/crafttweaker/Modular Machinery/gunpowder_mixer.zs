import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var recipe = RecipeBuilder.newBuilder("gunpowder", "gunpowdermixer", 100);

recipe.addEnergyPerTickInput(120);
recipe.addItemInput(<contenttweaker:purified_nitrate> * 2);
recipe.addItemInput(<ore:dustSulfur>);
recipe.addItemInput(<ore:dustCharcoal>);

recipe.addItemOutput(<minecraft:gunpowder>);

recipe.build();