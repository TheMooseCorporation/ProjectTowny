import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;

val geolosys = loadedMods["geolosys"];

val ingotStackLimited as IOreDictEntry[] = [
    <ore:coal>,
    <ore:crystalCertusQuartzCharged>,
    <ore:crystalCertusQuartz>,
    <ore:gemAmber>,
    <ore:gemAmethyst>,
    <ore:gemDiamond>,
    <ore:gemEmerald>,
    <ore:gemMalachite>,
    <ore:gemPeridot>,
    <ore:gemQuartz>,
    <ore:gemRuby>,
    <ore:gemSapphire>,
    <ore:gemTanzanite>,
    <ore:gemTopaz>,
    <ore:ingotAlubrass>,
    <ore:ingotAluminum>,
    <ore:ingotArdite>,
    <ore:ingotBeryllium>,
    <ore:ingotBronze>,
    <ore:ingotBoron>,
    <ore:ingotCobalt>,
    <ore:ingotCopper>,
    <ore:ingotConductiveIron>,
    <ore:ingotConstantan>,
    <ore:ingotConstructionAlloy>,
    <ore:ingotCrudeSteel>,
    <ore:ingotCrystallineAlloy>,
    <ore:ingotCrystallinePinkSlime>,
    <ore:ingotDarkSteel>,
    <ore:ingotElectrotineAlloy>,
    <ore:ingotElectricalSteel>,
    <ore:ingotElectrum>, 
    <ore:ingotEndSteel>,    
    <ore:ingotEnderium>,
    <ore:ingotEnergeticAlloy>,
    <ore:ingotEnergeticSilver>,
    <ore:ingotExtreme>,
    <ore:ingotFerroboron>,
    <ore:ingotGraphite>,
    <ore:ingotHardCarbon>,
    <ore:ingotHOPGraphite>,
    <ore:ingotHSLASteel>,
    <ore:ingotInvar>,
    <ore:ingotIridium>,
    <ore:ingotIron>,
    <ore:ingotKnightslime>,
    <ore:ingotGold>,
    <ore:ingotLead>,  
    <ore:ingotLeadPlatinum>,
    <ore:ingotLithium>,
    <ore:ingotLithiumManganeseDioxide>,
    <ore:ingotLumium>,
    <ore:ingotRedAlloy>,  
    <ore:ingotRedstoneAlloy>, 
    <ore:ingotRefinedGlowstone>,
    <ore:ingotRefinedObsidian>,
    <ore:ingotMagnesium>, 
    <ore:ingotManganese>,
    <ore:ingotManyullyn>,
    <ore:ingotMagnesiumDiboride>,
    <ore:ingotManganeseDioxide>,
    <ore:ingotManganeseOxide>,
    <ore:ingotMithril>,
    <ore:ingotMelodicAlloy>,
    <ore:ingotNickel>, 
    <ore:ingotObsidianSteel>,
    <ore:ingotOsmium>,
    <ore:ingotPlatinum>,    
    <ore:ingotPigiron>,
    <ore:ingotPulsatingIron>,    
    <ore:ingotShibuichi>,
    <ore:ingotSiCSiCCMC>,
    <ore:ingotSilicon>,
    <ore:ingotSiliconCarbide>,
    <ore:ingotSilver>,
    <ore:ingotSignalum>,
    <ore:ingotSoularium>,
    <ore:ingotSteel>,   
    <ore:ingotStellarAlloy>,
    <ore:ingotThorium>,    
    <ore:ingotThermoconducting>,
    <ore:ingotTin>,
    <ore:ingotTinSilver>,
    <ore:ingotTitanium>,
    <ore:ingotTough>,
    <ore:ingotUranium>,
    <ore:ingotVibrantAlloy>,
    <ore:ingotVividAlloy>,
    <ore:ingotZinc>,
    <ore:ingotZircaloy>,
    <ore:ingotZirconium>,
    <ore:ingotZirconiumMolybdenum>,

];

val clusterStackLimited as IOreDictEntry[] = [
    <ore:oreArdite>,
    <ore:oreAmber>,
    <ore:oreAmethyst>,
    <ore:oreAluminum>,
    <ore:oreBoron>,
    <ore:oreCoal>,
    <ore:oreClathrateRedstone>,
    <ore:oreCobalt>,
    <ore:oreCopper>,
    <ore:oreDiamond>,
    <ore:oreDilithium>,
    <ore:oreEmerald>,
    <ore:oreGold>,
    <ore:oreIron>,
    <ore:oreIridium>,
    <ore:oreLapis>,
    <ore:oreLead>,
    <ore:oreLithium>,
    <ore:oreMalachite>,
    <ore:oreMagnesium>,
    <ore:oreMithril>,
    <ore:oreNickel>,
    <ore:oreOsmium>,
    <ore:orePeridot>,
    <ore:orePlatinum>,
    <ore:oreQuartz>,
    <ore:oreRedstone>,
    <ore:oreRuby>,
    <ore:oreSapphire>,
    <ore:oreSilver>,
    <ore:oreTanzanite>,
    <ore:oreTin>,
    <ore:oreTitanium>,
    <ore:oreThorium>,
    <ore:oreTopaz>,
    <ore:oreUranium>,
    <ore:oreYellorium>,
    <ore:oreZinc>,
    <ore:oreBlockQuartz>,
];

val woodStackLimited as IOreDictEntry[] = [
    <ore:logWood>
];


for oreDictEntry in ingotStackLimited {

    for item in oreDictEntry.items {
        item.maxStackSize = 32;
    }

}

for oreDictEntry in clusterStackLimited {

    for item in oreDictEntry.items {
        item.maxStackSize = 16;
    }

}

for oreDictEntry in woodStackLimited {

    for item in oreDictEntry.items {
        item.maxStackSize = 32;
    }

}