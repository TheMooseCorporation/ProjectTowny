import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var transistor = RecipeBuilder.newBuilder("transistor", "microchip_inscriber", 300);

transistor.addEnergyPerTickInput(1024);

transistor.addItemInput(<advancedrocketry:wafer>);
transistor.addItemInput(<ore:ingotIron>, 3);
transistor.addItemInput(<ore:nuggetGold>, 2);
transistor.addItemInput(<minecraft:redstone>);

transistor.addItemOutput(<opencomputers:material:6> * 4);

transistor.build();

var microchip1 = RecipeBuilder.newBuilder("microchip1", "microchip_inscriber", 600);

microchip1.addEnergyPerTickInput(1024);

microchip1.addItemInput(<opencomputers:material:6> * 32);
microchip1.addItemInput(<ore:nuggetIron>, 18);
microchip1.addItemInput(<minecraft:redstone> * 6);

microchip1.addItemOutput(<opencomputers:material:7> * 8);

microchip1.build();

var microchip2 = RecipeBuilder.newBuilder("microchip2", "microchip_inscriber", 1200);

microchip2.addEnergyPerTickInput(1024);

microchip2.addItemInput(<opencomputers:material:6> * 32);
microchip2.addItemInput(<ore:nuggetGold>, 36);
microchip2.addItemInput(<minecraft:redstone> * 12);

microchip2.addItemOutput(<opencomputers:material:8> * 8);

microchip2.build();

var microchip3 = RecipeBuilder.newBuilder("microchip3", "microchip_inscriber", 3000);

microchip3.addEnergyPerTickInput(1024);

microchip3.addItemInput(<opencomputers:material:6> * 32);
microchip3.addItemInput(<opencomputers:material:29> * 6);
microchip3.addItemInput(<minecraft:redstone> * 12);

microchip3.addItemOutput(<opencomputers:material:9> * 4);

microchip3.build();

var cu = RecipeBuilder.newBuilder("cu", "microchip_inscriber", 3000);

cu.addEnergyPerTickInput(1024);

cu.addItemInput(<opencomputers:material:6> * 32);
cu.addItemInput(<minecraft:clock>);
cu.addItemInput(<minecraft:redstone> * 12);
cu.addItemInput(<ore:nuggetGold>, 36);

cu.addItemOutput(<opencomputers:material:11>);

cu.build();

var alu = RecipeBuilder.newBuilder("alu", "microchip_inscriber", 3000);

alu.addEnergyPerTickInput(1024);

alu.addItemInput(<opencomputers:material:6> * 32);
alu.addItemInput(<opencomputers:material:7> * 4);
alu.addItemInput(<minecraft:redstone> * 12);
alu.addItemInput(<ore:nuggetGold>, 36);

alu.addItemOutput(<opencomputers:material:10>);

alu.build();

var dram = RecipeBuilder.newBuilder("dram", "microchip_inscriber", 1200);

dram.addEnergyPerTickInput(1024);

dram.addItemInput(<opencomputers:material:6> * 64);
dram.addItemInput(<opencomputers:material:7> * 4);
dram.addItemInput(<minecraft:redstone> * 4);
dram.addItemInput(<ore:nuggetIron>, 4);

dram.addItemOutput(<contenttweaker:dram> * 4);

dram.build();