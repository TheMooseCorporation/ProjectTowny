/*

Alternate file to use Mekanism gas instead of fluids
Makes it more difficult to transport and store since only Mekanism gas pipes can be used for transport

#priority 10
#loader mekatweaker
import mods.mekatweaker.GasFactory;
import mods.mekatweaker.Gas;
import mods.contenttweaker.Color;

var butane = GasFactory.createGas("butane");
butane.setIcon("blocks/liquid");
butane.register();

var isobutane = GasFactory.createGas("isobutane");
isobutane.setIcon("blocks/liquid");
isobutane.register();

var isobutylene = GasFactory.createGas("isobutylene");
isobutylene.setIcon("blocks/liquid");
isobutylene.register();

*/