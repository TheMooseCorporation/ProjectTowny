#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var mechanicalParts = VanillaFactory.createItem("mechanical_parts_mold");
mechanicalParts.maxStackSize = 1;
mechanicalParts.register();

var inscriberPresses = VanillaFactory.createItem("inscriber_press_mold");
inscriberPresses.maxStackSize = 1;
inscriberPresses.register();

var casings = VanillaFactory.createItem("casing_mold");
casings.maxStackSize = 1;
casings.register();