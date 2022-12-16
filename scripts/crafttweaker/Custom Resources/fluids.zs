#priority 5
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var kerosene = VanillaFactory.createFluid("kerosene", Color.fromHex("385585"));
kerosene.density = 780;
kerosene.viscosity = 1750;
kerosene.register();

var jet_fuel = VanillaFactory.createFluid("jet_fuel", Color.fromHex("faf88e"));
jet_fuel.density = 780;
jet_fuel.viscosity = 1200;
jet_fuel.register();

var butane = VanillaFactory.createFluid("butane", Color.fromHex("a6a6a6"));
butane.gaseous = true;
butane.register();

var isobutane = VanillaFactory.createFluid("isobutane", Color.fromHex("a6a6a6"));
isobutane.gaseous = true;
isobutane.register();

var isobutylene = VanillaFactory.createFluid("isobutylene", Color.fromHex("a6a6a6"));
isobutylene.gaseous = true;
isobutylene.register();

var refined_kerosene = VanillaFactory.createFluid("refined_kerosene", Color.fromHex("fa8e8e"));
refined_kerosene.density = 780;
refined_kerosene.viscosity = 1750;
refined_kerosene.register();

var hydroxytoluene = VanillaFactory.createFluid("butylated_hydroxytoluene", Color.fromHex("e0b000"));
hydroxytoluene.density = 780;
hydroxytoluene.viscosity = 1200 ;
hydroxytoluene.register();

var refined_petroleum = VanillaFactory.createFluid("refined_petroleum", Color.fromHex("9e001d"));
refined_petroleum.density = 780;
refined_petroleum.viscosity = 1200;
refined_petroleum.register();

var silicon = VanillaFactory.createFluid("molten_silicon", Color.fromHex("0f0f0f"));
silicon.viscosity = 1500;
silicon.register();