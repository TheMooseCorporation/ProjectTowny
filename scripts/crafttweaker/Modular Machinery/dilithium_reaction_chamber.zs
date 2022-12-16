import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var dilithium = RecipeBuilder.newBuilder("dilithium", "dilithiumreactionchamber", 2400);

dilithium.addDimensionRequirement([-2]);
dilithium.addEnergyPerTickInput(2048);
dilithium.addItemInput(<ore:dustLithium>, 2);

dilithium.addItemOutput(<libvulpes:productgem>);
dilithium.build();
