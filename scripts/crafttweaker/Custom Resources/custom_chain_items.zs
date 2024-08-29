#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var purified_nitrate = VanillaFactory.createItem("purified_nitrate");
purified_nitrate.register();

// Industrial Manufacturing Steel
var treated_iron = VanillaFactory.createItem("treated_iron");
treated_iron.register();
var limestone_dust = VanillaFactory.createItem("limestone_dust");
limestone_dust.register();
var limeslag_compound = VanillaFactory.createItem("limeslag_compound");
limeslag_compound.register();

// Nuclear Engineering Uranium
var yellow_cake = VanillaFactory.createItem("yellow_cake");
yellow_cake.register();

// Mechanical Parts
var mechanical_casing = VanillaFactory.createItem("mechanical_casing");
mechanical_casing.register();
var mechanical_casing_steel = VanillaFactory.createItem("mechanical_casing_steel");
mechanical_casing_steel.register();
var air_scrubber = VanillaFactory.createItem("air_scrubber");
air_scrubber.maxStackSize = 1;
air_scrubber.register();