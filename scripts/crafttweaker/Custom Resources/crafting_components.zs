#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// Circuit Crafting Components

var dram = VanillaFactory.createItem("dram");
dram.maxStackSize = 16;
dram.register();

// Primitive Circuit / Brown Circuit / Tier 0 Circuit
var t0 = VanillaFactory.createItem("tier0_circuit");
t0.maxStackSize = 16;
t0.register();

/* We're using the Immersive Engineering circuit for our tier 1 circuit so we don't need a custom item for this
*Note if we break Immersive Engineering's licensing we'll change these to different textures*

// Basic Circuit / Green Circuit / Tier 1 Circuit
var t1 = VanillaFactory.createItem("tier1_circuit");
t1.maxStackSize = 16;
t1.register();
*/

// Advanced Circuit / Red Circuit / Tier 2 Circuit
var t2 = VanillaFactory.createItem("tier2_circuit");
t2.maxStackSize = 16;
t2.register();

// Elite Circuit / Blue Circuit / Tier 3 Circuit
var t3 = VanillaFactory.createItem("tier3_circuit");
t3.maxStackSize = 16;
t3.register();

// Mechanics Crafting Components

var bolt = VanillaFactory.createItem("bolt");
bolt.register();

var bolt_box1 = VanillaFactory.createItem("bolt_box1");
bolt_box1.register();

var bolt_box2 = VanillaFactory.createItem("bolt_box2");
bolt_box2.register();