#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.AxisAlignedBB;

// Solar Frame
var frameBounds = AxisAlignedBB.create(0, 0, 0, 1, 0.375, 1);
var solarFrame = VanillaFactory.createBlock("solar_frame", <blockmaterial:iron>);
solarFrame.setFullBlock(false);
solarFrame.setAxisAlignedBB(frameBounds);
solarFrame.register();

// Solar Electronics
var solarElectronics = VanillaFactory.createBlock("solar_electronics", <blockmaterial:iron>);
solarElectronics.setFullBlock(false);
solarElectronics.setAxisAlignedBB(frameBounds);
solarElectronics.register();