import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

// Coal/Charcoal ore dictionary (This is so that Better with Mod can use CoFH dust)
oreDict.get("dustCarbon").add(<thermalfoundation:material:768>);
oreDict.get("dustCarbon").add(<thermalfoundation:material:769>);

// New circuit ore dictionary
oreDict.get("circuitBasic").add(<immersiveengineering:material:27>);
oreDict.get("circuitAdvanced").add(<contenttweaker:tier2_circuit>);
oreDict.get("circuitElite").add(<contenttweaker:tier3_circuit>);