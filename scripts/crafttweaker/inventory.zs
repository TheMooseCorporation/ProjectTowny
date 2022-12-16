import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;

val geolosys = loadedMods["geolosys"];

for item in geolosys.items {

    if (item.maxStackSize == 64) {
        item.maxStackSize = 16;
    }

}