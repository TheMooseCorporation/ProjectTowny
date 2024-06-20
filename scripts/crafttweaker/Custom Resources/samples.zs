#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.ItemList;

var sampleBounds = AxisAlignedBB.create(0.2, 0.0, 0.2, 0.8, 0.25, 0.8);

var claySample = VanillaFactory.createBlock("clay_sample", <blockmaterial:clay>);

claySample.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:minecraft:clay_ball>);
	return;
});

claySample.fullBlock = false;
claySample.blockHardness = 0.2;
claySample.passable = false;
claySample.toolLevel = 0;
claySample.blockLayer = "CUTOUT_MIPPED";
claySample.blockSoundType = <soundtype:ground>;
claySample.axisAlignedBB = sampleBounds;
claySample.register();


var rutileSample = VanillaFactory.createBlock("rutile_sample", <blockmaterial:clay>);

rutileSample.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	return;
});

rutileSample.fullBlock = false;
rutileSample.blockHardness = 0.2;
rutileSample.passable = true;
rutileSample.toolLevel = 0;
rutileSample.blockSoundType = <soundtype:ground>;
rutileSample.axisAlignedBB = sampleBounds;
rutileSample.register();


var arditeSample = VanillaFactory.createBlock("ardite_sample", <blockmaterial:clay>);

arditeSample.setDropHandler(function(drops, world, position, state, fortune) {
	drops.clear();
	drops.add(<item:tconstruct:shard>.withTag({Material: "ardite"}));
	return;
});

arditeSample.fullBlock = false;
arditeSample.blockHardness = 0.2;
arditeSample.passable = false;
arditeSample.toolLevel = 0;
arditeSample.axisAlignedBB = sampleBounds;
arditeSample.register();
