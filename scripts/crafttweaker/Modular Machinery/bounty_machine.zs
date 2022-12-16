import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var iron = RecipeBuilder.newBuilder("iron", "bountymachine", 100);

iron.addItemInput(<ore:ingotIron>, 16);
iron.addItemOutput(<modcurrency:banknote:2>);

iron.build();

var copper = RecipeBuilder.newBuilder("copper", "bountymachine", 100);

copper.addItemInput(<ore:ingotCopper>, 16);
copper.addItemOutput(<modcurrency:banknote:2>);

copper.build();

var tin = RecipeBuilder.newBuilder("tin", "bountymachine", 100);

tin.addItemInput(<ore:ingotTin>, 16);
tin.addItemOutput(<modcurrency:banknote:2>);

tin.build();

var silver = RecipeBuilder.newBuilder("silver", "bountymachine", 100);

silver.addItemInput(<ore:ingotSilver>, 16);
silver.addItemOutput(<modcurrency:banknote:2>);

silver.build();

var lead = RecipeBuilder.newBuilder("lead", "bountymachine", 100);

lead.addItemInput(<ore:ingotLead>, 16);
lead.addItemOutput(<modcurrency:banknote:2>);

lead.build();

var aluminum = RecipeBuilder.newBuilder("aluminum", "bountymachine", 100);

aluminum.addItemInput(<ore:ingotAluminum>, 16);
aluminum.addItemOutput(<modcurrency:banknote:3>);

aluminum.build();

var nickel = RecipeBuilder.newBuilder("nickel", "bountymachine", 100);

nickel.addItemInput(<ore:ingotNickel>, 16);
nickel.addItemOutput(<modcurrency:banknote:3>);

nickel.build();

var chisel = RecipeBuilder.newBuilder("chisel", "bountymachine", 100);

chisel.addItemInput(<chisel:chisel_diamond>);
chisel.addItemOutput(<modcurrency:banknote:2>);

chisel.build();

var spagetti = RecipeBuilder.newBuilder("spagetti", "bountymachine", 100);

spagetti.addItemInput(<harvestcraft:spagettiandmeatballsitem> * 4);
spagetti.addItemOutput(<modcurrency:banknote:2>);

spagetti.build();

var burger = RecipeBuilder.newBuilder("burger", "bountymachine", 100);

burger.addItemInput(<harvestcraft:hamburgeritem> * 4);
burger.addItemOutput(<modcurrency:banknote:2>);

burger.build();

var pie1 = RecipeBuilder.newBuilder("pie1", "bountymachine", 100);

pie1.addItemInput(<harvestcraft:blueberrypieitem> * 4);
pie1.addItemOutput(<modcurrency:banknote:2>);

pie1.build();

var pie2 = RecipeBuilder.newBuilder("pie2", "bountymachine", 100);

pie2.addItemInput(<harvestcraft:cherrypieitem> * 4);
pie2.addItemOutput(<modcurrency:banknote:2>);

pie2.build();

var pancake = RecipeBuilder.newBuilder("pancake", "bountymachine", 100);

pancake.addItemInput(<harvestcraft:pancakesitem> * 4);
pancake.addItemOutput(<modcurrency:banknote:1>);

pancake.build();

var chili = RecipeBuilder.newBuilder("chili", "bountymachine", 100);

chili.addItemInput(<harvestcraft:chiliitem> * 4);
chili.addItemOutput(<modcurrency:banknote:2>);

chili.build();

var steakchip = RecipeBuilder.newBuilder("steakchip", "bountymachine", 100);

steakchip.addItemInput(<harvestcraft:steakandchipsitem> * 4);
steakchip.addItemOutput(<modcurrency:banknote:2>);

steakchip.build();

var friedchicken = RecipeBuilder.newBuilder("friedchicken", "bountymachine", 100);

friedchicken.addItemInput(<harvestcraft:friedchickenitem> * 4);
friedchicken.addItemOutput(<modcurrency:banknote:3>);

friedchicken.build();

var thankfuldinner = RecipeBuilder.newBuilder("thankfuldinner", "bountymachine", 100);

thankfuldinner.addItemInput(<harvestcraft:thankfuldinneritem> * 4);
thankfuldinner.addItemOutput(<modcurrency:banknote:3> * 2);

thankfuldinner.build();

var steelscaffolding = RecipeBuilder.newBuilder("steelscaffolding", "bountymachine", 100);

steelscaffolding.addItemInput(<ore:scaffoldingSteel>, 8);
steelscaffolding.addItemOutput(<modcurrency:banknote:3>);

steelscaffolding.build();

var lightengineering = RecipeBuilder.newBuilder("lightengineering", "bountymachine", 100);

lightengineering.addItemInput(<immersiveengineering:metal_decoration0:4>);
lightengineering.addItemOutput(<modcurrency:banknote:2>);

lightengineering.build();

var heavyengineering = RecipeBuilder.newBuilder("heavyengineering", "bountymachine", 100);

heavyengineering.addItemInput(<immersiveengineering:metal_decoration0:5>);
heavyengineering.addItemOutput(<modcurrency:banknote:3>);

heavyengineering.build();

var lvwire = RecipeBuilder.newBuilder("lvwire", "bountymachine", 100);

lvwire.addItemInput(<immersiveengineering:wirecoil> * 5);
lvwire.addItemOutput(<modcurrency:banknote:2>);

lvwire.build();

var mvwire = RecipeBuilder.newBuilder("mvwire", "bountymachine", 100);

mvwire.addItemInput(<immersiveengineering:wirecoil:1> * 5);
mvwire.addItemOutput(<modcurrency:banknote:2>);

mvwire.build();

var hvwire = RecipeBuilder.newBuilder("hvwire", "bountymachine", 100);

hvwire.addItemInput(<immersiveengineering:wirecoil:2> * 5);
hvwire.addItemOutput(<modcurrency:banknote:2> * 3);

hvwire.build();

var generator = RecipeBuilder.newBuilder("generator", "bountymachine", 100);

generator.addItemInput(<immersivepetroleum:metal_device:1>);
generator.addItemOutput(<modcurrency:banknote:4>);

generator.build();

var computercase1 = RecipeBuilder.newBuilder("computercase1", "bountymachine", 100);

computercase1.addItemInput(<opencomputers:case1>);
computercase1.addItemOutput(<modcurrency:banknote:4>);

computercase1.build();

var computercase2 = RecipeBuilder.newBuilder("computercase2", "bountymachine", 100);

computercase2.addItemInput(<opencomputers:case2>);
computercase2.addItemOutput(<modcurrency:banknote:3> * 4);

computercase2.build();

var computercase3 = RecipeBuilder.newBuilder("computercase3", "bountymachine", 100);

computercase3.addItemInput(<opencomputers:case3>);
computercase3.addItemOutput(<modcurrency:banknote:4> * 3);

computercase3.build();

var cpu1 = RecipeBuilder.newBuilder("cpu1", "bountymachine", 100);

cpu1.addItemInput(<opencomputers:component>);
cpu1.addItemOutput(<modcurrency:banknote:5>);

cpu1.build();

var cpu2 = RecipeBuilder.newBuilder("cpu2", "bountymachine", 100);

cpu2.addItemInput(<opencomputers:component:1>);
cpu2.addItemOutput(<modcurrency:banknote:5> * 2);

cpu2.build();

var cpu3 = RecipeBuilder.newBuilder("cpu3", "bountymachine", 100);

cpu3.addItemInput(<opencomputers:component:2>);
cpu3.addItemOutput(<modcurrency:banknote:5> * 5);

cpu3.build();

var gpu1 = RecipeBuilder.newBuilder("gpu1", "bountymachine", 100);

gpu1.addItemInput(<opencomputers:card:1>);
gpu1.addItemOutput(<modcurrency:banknote:4>);

gpu1.build();

var gpu2 = RecipeBuilder.newBuilder("gpu2", "bountymachine", 100);

gpu2.addItemInput(<opencomputers:card:2>);
gpu2.addItemOutput(<modcurrency:banknote:5>);

gpu2.build();

var gpu3 = RecipeBuilder.newBuilder("gpu3", "bountymachine", 100);

gpu3.addItemInput(<opencomputers:card:3>);
gpu3.addItemOutput(<modcurrency:banknote:5> * 4);

gpu3.build();

var pistolammo = RecipeBuilder.newBuilder("pistolammo", "bountymachine", 100);

pistolammo.addItemInput(<techguns:itemshared:11> * 4);
pistolammo.addItemOutput(<modcurrency:banknote:3>);

pistolammo.build();

var rifleammo = RecipeBuilder.newBuilder("rifleammo", "bountymachine", 100);

rifleammo.addItemInput(<techguns:itemshared:13> * 4);
rifleammo.addItemOutput(<modcurrency:banknote:3> * 2);

rifleammo.build();

var m4 = RecipeBuilder.newBuilder("m4", "bountymachine", 100);

m4.addItemInput(<techguns:m4>);
m4.addItemOutput(<modcurrency:banknote:5>);

m4.build();

var photovoltaic = RecipeBuilder.newBuilder("photovoltaic", "bountymachine", 100);

photovoltaic.addItemInput(<solarflux:photovoltaic_cell_3> * 2);
photovoltaic.addItemOutput(<modcurrency:banknote:4>);

photovoltaic.build();

var solarpanel = RecipeBuilder.newBuilder("solarpanel", "bountymachine", 100);

solarpanel.addItemInput(<solarflux:solar_panel_4>);
solarpanel.addItemOutput(<modcurrency:banknote:5> * 2);

solarpanel.build();

var mirror = RecipeBuilder.newBuilder("mirror", "bountymachine", 100);

mirror.addItemInput(<solarflux:mirror> * 6);
mirror.addItemOutput(<modcurrency:banknote:2>);

mirror.build();

var me1k = RecipeBuilder.newBuilder("me1k", "bountymachine", 100);

me1k.addItemInput(<appliedenergistics2:material:35>);
me1k.addItemOutput(<modcurrency:banknote:3>);

me1k.build();

var me4k = RecipeBuilder.newBuilder("me4k", "bountymachine", 100);

me4k.addItemInput(<appliedenergistics2:material:36>);
me4k.addItemOutput(<modcurrency:banknote:3> * 4);

me4k.build();

var me16k = RecipeBuilder.newBuilder("me16k", "bountymachine", 100);

me16k.addItemInput(<appliedenergistics2:material:37>);
me16k.addItemOutput(<modcurrency:banknote:5> * 3);

me16k.build();

var me64k = RecipeBuilder.newBuilder("me64k", "bountymachine", 100);

me64k.addItemInput(<appliedenergistics2:material:38>);
me64k.addItemOutput(<contenttweaker:thousand_bill>);

me64k.build();

var rocket = RecipeBuilder.newBuilder("rocket", "bountymachine", 100);

rocket.addItemInput(<advancedrocketry:rocketmotor>);
rocket.addItemOutput(<modcurrency:banknote:1>);
rocket.addItemOutput(<modcurrency:banknote:2>);

rocket.build();

var fueltank = RecipeBuilder.newBuilder("fueltank", "bountymachine", 100);

fueltank.addItemInput(<advancedrocketry:fueltank>);
fueltank.addItemOutput(<modcurrency:banknote:1>);
fueltank.addItemOutput(<modcurrency:banknote:2>);

fueltank.build();

var circuit1 = RecipeBuilder.newBuilder("circuit1", "bountymachine", 100);

circuit1.addItemInput(<mekanism:controlcircuit> * 4);
circuit1.addItemOutput(<modcurrency:banknote:1>);
circuit1.addItemOutput(<modcurrency:banknote:2>);

circuit1.build();

var circuit2 = RecipeBuilder.newBuilder("circuit2", "bountymachine", 100);

circuit2.addItemInput(<mekanism:controlcircuit:1> * 4);
circuit2.addItemOutput(<modcurrency:banknote:3>);

circuit2.build();

var circuit3 = RecipeBuilder.newBuilder("circuit3", "bountymachine", 100);

circuit3.addItemInput(<mekanism:controlcircuit:2> * 4);
circuit3.addItemOutput(<modcurrency:banknote:4>);

circuit3.build();

var circuit4 = RecipeBuilder.newBuilder("circuit4", "bountymachine", 100);

circuit4.addItemInput(<mekanism:controlcircuit:3> * 4);
circuit4.addItemOutput(<modcurrency:banknote:5>);

circuit4.build();

var cobalt = RecipeBuilder.newBuilder("cobalt", "bountymachine", 100);

cobalt.addItemInput(<tconstruct:ingots> * 4);
cobalt.addItemOutput(<modcurrency:banknote:3>);

cobalt.build();

var ardite = RecipeBuilder.newBuilder("ardite", "bountymachine", 100);

ardite.addItemInput(<tconstruct:ingots:1> * 4);
ardite.addItemOutput(<modcurrency:banknote:3>);

ardite.build();