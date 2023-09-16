#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var compositeAsphalt = VanillaFactory.createBlock("composite_asphalt", <blockmaterial:rock>);
compositeAsphalt.register();

var compositeConcrete = VanillaFactory.createBlock("composite_concrete", <blockmaterial:rock>);
compositeConcrete.register();