#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var inscriberPresses = VanillaFactory.createItem("inscriber_press_mold");
inscriberPresses.maxStackSize = 1;
inscriberPresses.register();

var casings = VanillaFactory.createItem("casing_mold");
casings.maxStackSize = 1;
casings.register();

var bullet_mold = VanillaFactory.createItem("mold_pistol_casing");
bullet_mold.maxStackSize = 1;
bullet_mold.register();