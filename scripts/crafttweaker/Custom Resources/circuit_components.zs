#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var dram = VanillaFactory.createItem("dram");

dram.maxStackSize = 16;

dram.register();