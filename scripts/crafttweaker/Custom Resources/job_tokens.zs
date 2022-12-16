#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var mayorToken = VanillaFactory.createItem("mayor_token");

mayorToken.maxStackSize = 1;

mayorToken.register();

var researcherToken = VanillaFactory.createItem("researcher_token");

researcherToken.maxStackSize = 1;

researcherToken.register();