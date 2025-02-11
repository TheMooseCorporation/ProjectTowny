import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemCondition;
import mods.multiblockstages.IEMultiBlockStages;

/**
    Disabled:
    Every item in the back that should be uncraftable and hidden in JEI
    Please keep this organized with what you're putting where
*/

// Stage Name
val stage = "disabled";

val stageItems as IItemStack[] = [
    // Creative Items
    <immersiveengineering:metal_device0:3>, // Creative Capacitor (IE)
    <immersivetech:metal_barrel>, // Creative Barrel (IT)
    <locks:master_key>, // Creative Key
    // Advanced Chimneys
    <adchimneys:bedrock>,
    <adchimneys:bedrock:1>,
    <adchimneys:bedrock:2>,
    // Advanced Rocketry
    <advancedrocketry:solarpanel>,
    <advancedrocketry:platepress>,
    <advancedrocketry:solargenerator>,
    <advancedrocketry:crystallizer>,
    <advancedrocketry:electrolyser>,
    <advancedrocketry:bipropellantrocketmotor>,
    <advancedrocketry:advbipropellantrocketmotor>,
    <advancedrocketry:nuclearrocketmotor>,
    <advancedrocketry:bipropellantfueltank>,
    <advancedrocketry:oxidizerfueltank>,
    <advancedrocketry:nuclearfueltank>,
    <advancedrocketry:nuclearcore>,
    <advancedrocketry:itemupgrade:1>,
    <advancedrocketry:itemupgrade:2>,
    <advancedrocketry:jackhammer>,
    <advancedrocketry:basiclasergun>,
    <advancedrocketry:misc:1>,
    <advancedrocketry:terraformingterminal>,
    <advancedrocketry:satelliteprimaryfunction:6>,
    <advancedrocketry:weathercontroller>,
    <libvulpes:coalgenerator>,
    // AE2
    <appliedenergistics2:network_tool>,
    <appliedenergistics2:material:6>,
    <appliedenergistics2:tiny_tnt>,
    <appliedenergistics2:matter_cannon>,
    // B.A.S.E Wrench - I don't think this has a need to be here, but content tweaker depends on B.A.S.E so this will do
    <base:wrench>,
    // Better with Mods
    <betterwithmods:steel_saw>,
    <betterwithmods:nether_clay>,
    <betterwithmods:steel_pressure_plate>,
    <betterwithmods:infernal_enchanter>,
    <betterwithmods:candle_holder>,
    <betterwithmods:material:1>,
    <betterwithmods:material:14>,
    <betterwithmods:material:15>,
    <betterwithmods:material:16>,
    <betterwithmods:raw_pastry>,
    <betterwithmods:raw_pastry:1>,
    <betterwithmods:raw_pastry:2>,
    <betterwithmods:raw_pastry:4>,
    <betterwithmods:single_machine:2>,
    <betterwithmods:mining_charge>,
    <betterwithmods:steel_axle>,
    <betterwithmods:steel_gearbox>,
    <betterwithmods:steel_broken_gearbox>,
    <betterwithmods:urn:8>,
    <betterwithmods:urn:9>,
    <betterwithmods:detector>,
    <betterwithmods:lens>,
    <betterwithmods:aesthetic>,
    <betterwithmods:aesthetic:1>,
    <betterwithmods:aesthetic:2>,
    <betterwithmods:aesthetic:3>,
    <betterwithmods:aesthetic:5>,
    <betterwithmods:companion_cube>,
    <betterwithmods:block_dispenser>,
    <betterwithmods:buddy_block>,
    <betterwithmods:creative_generator>,
    <betterwithmods:steel_anvil>,
    <betterwithmods:cooking_pot:2>,
    <betterwithmods:iron_wall>,
    <betterwithmods:steel_block>,
    <betterwithmods:steel_hacksaw>,
    <betterwithmods:steel_helmet>,
    <betterwithmods:steel_chest>,
    <betterwithmods:steel_pants>,
    <betterwithmods:steel_boots>,
    <betterwithmods:composite_bow>,
    <betterwithmods:broadhead_arrow>,
    <betterwithmods:material:17>,
    <betterwithmods:material:20>,
    <betterwithmods:material:23>,
    <betterwithmods:material:29>,
    <betterwithmods:material:30>,
    <betterwithmods:material:35>,
    <betterwithmods:material:36>,
    <betterwithmods:material:38>,
    <betterwithmods:material:40>,
    <betterwithmods:material:25>,
    <betterwithmods:material:39>,
    <betterwithmods:material:42>,
    <betterwithmods:material:43>,
    <betterwithmods:material:45>,
    <betterwithmods:material:46>,
    <betterwithmods:material:47>,
    <betterwithmods:material:48>,
    <betterwithmods:material:49>,
    <betterwithmods:material:51>,
    <betterwithmods:ender_spectacles>,
    <betterwithmods:dynamite>,
    <betterwithmods:steel_axe>,
    <betterwithmods:steel_hoe>,
    <betterwithmods:steel_pickaxe>,
    <betterwithmods:steel_shovel>,
    <betterwithmods:steel_sword>,
    <betterwithmods:steel_mattock>,
    <betterwithmods:bamboo_chime>,
    <betterwithmods:bamboo_chime:1>,
    <betterwithmods:bamboo_chime:2>,
    <betterwithmods:bamboo_chime:3>,
    <betterwithmods:bamboo_chime:4>,
    <betterwithmods:bamboo_chime:5>,
    <betterwithmods:metal_chime:3>,
    <betterwithmods:metal_chime:4>,
    <betterwithmods:metal_chime:5>,
    <betterwithmods:slats>,
    <betterwithmods:slats:1>,
    <betterwithmods:slats:2>,
    <betterwithmods:slats:3>,
    <betterwithmods:slats:4>,
    <betterwithmods:slats:5>,
    <betterwithmods:wood_bench>,
    <betterwithmods:wood_bench:1>,
    <betterwithmods:wood_bench:2>,
    <betterwithmods:wood_bench:3>,
    <betterwithmods:wood_bench:4>,
    <betterwithmods:wood_bench:5>,
    <betterwithmods:wood_table>,
    <betterwithmods:wood_table:1>,
    <betterwithmods:wood_table:2>,
    <betterwithmods:wood_table:3>,
    <betterwithmods:wood_table:4>,
    <betterwithmods:wood_table:5>,
    <betterwithmods:metal_chime>,
    <betterwithmods:metal_chime:1>,
    <betterwithmods:metal_chime:2>,
    <betterwithmods:unfired_pottery>,
    <betterwithmods:cooking_pot>,
    <betterwithmods:blood_sapling>,
    <betterwithmods:blood_log>,
    <betterwithmods:blood_leaves>,
    <betterwithmods:bark:6>,
    <betterwithmods:bucket>,
    <betterwithmods:aesthetic:13>,
    <betterwithmods:nether_growth>,
    <betterwithmods:steel_battleaxe>,
    <betterwithmods:material:28>,
    <betterwithmods:donut>,
    <betterwithmods:leather_tanned_boots>,
    <betterwithmods:leather_tanned_pants>,
    <betterwithmods:leather_tanned_chest>,
    <betterwithmods:leather_tanned_helmet>,
    <betterwithmods:wool_boots>,
    <betterwithmods:wool_pants>,
    <betterwithmods:wool_chest>,
    <betterwithmods:wool_helmet>,
    <betterwithmods:material:52>,
    <betterwithmods:material:53>,
    <betterwithmods:material:54>,
    <betterwithmods:dynamite_bundle>,
    <betterwithmods:raw_pastry:3>,
    // Better with Mods food items, I disabled this so we would only have to worry about balancing/staging one food mod, but if we want to re-enable anything from here we can
    <betterwithmods:cooked_scrambled_egg>,
    <betterwithmods:raw_omelet>,
    <betterwithmods:cooked_omelet>,
    <betterwithmods:ham_and_eggs>,
    <betterwithmods:tasty_sandwich>,
    <betterwithmods:beef_dinner>,
    <betterwithmods:beef_potatoes>,
    <betterwithmods:chicken_soup>,
    <betterwithmods:chocolate>,
    <betterwithmods:chowder>,
    <betterwithmods:cooked_kebab>,
    <betterwithmods:hearty_stew>,
    <betterwithmods:raw_kebab>,
    <betterwithmods:pork_dinner>,
    <betterwithmods:creeper_oyster>,
    <betterwithmods:stump_remover>,
    <betterwithmods:raw_scrambled_egg>,
    <betterwithmods:apple_pie>,
    // Biomes of Plenty, BOP boats were causing people to crash for some reason?
    <biomesoplenty:boat_willow>,
    <biomesoplenty:boat_pine>,
    <biomesoplenty:boat_hellbark>,
    <biomesoplenty:boat_jacaranda>,
    <biomesoplenty:boat_mahogany>,
    <biomesoplenty:boat_ebony>,
    <biomesoplenty:boat_eucalyptus>,
    <biomesoplenty:boat_sacred_oak>,
    <biomesoplenty:boat_cherry>,
    <biomesoplenty:boat_umbran>,
    <biomesoplenty:boat_fir>,
    <biomesoplenty:boat_ethereal>,
    <biomesoplenty:boat_magic>,
    <biomesoplenty:boat_mangrove>,
    <biomesoplenty:boat_palm>,
    <biomesoplenty:boat_redwood>,
    // Building Gadgets
    <buildinggadgets:destructiontool>,
    <buildinggadgets:constructionpastecontainercreative>,
    //Fex Mod's
    <fcl:blueprinttable>,
    // ICBM items that we don't use
    <icbmclassic:antidote>,
    <icbmclassic:wire>,
    <icbmclassic:wire:1>,
    <icbmclassic:ingot>,
    <icbmclassic:ingot:1>,
    <icbmclassic:clump>,
    <icbmclassic:signaldisrupter>,
    <icbmclassic:circuit>,
    <icbmclassic:circuit:1>,
    <icbmclassic:circuit:2>,
    //Everything below are items temporarily disabled since they bypass explosion restrictions, until I figure out a solution
    <icbmclassic:grenade:2>,
    <icbmclassic:explosives:2>,
    <icbmclassic:missile:2>,
    <icbmclassic:missile:8>,
    <icbmclassic:missile:9>,
    <icbmclassic:missile:10>,
    <icbmclassic:missile:11>,
    <icbmclassic:missile:12>,
    <icbmclassic:missile:13>,
    <icbmclassic:explosives:8>,
    <icbmclassic:explosives:9>,
    <icbmclassic:explosives:10>,
    <icbmclassic:explosives:11>,
    <icbmclassic:explosives:12>,
    <icbmclassic:explosives:13>,
    <icbmclassic:explosives:14>,
    <icbmclassic:missile:17>,
    <icbmclassic:missile:20>,
    <icbmclassic:missile:16>,
    <icbmclassic:missile:18>,
    <icbmclassic:missile:19>,
    <icbmclassic:missile:15>,
    <icbmclassic:missile:21>,
    <icbmclassic:missile:22>,
    <icbmclassic:missile:23>,
    <icbmclassic:explosives:17>,
    <icbmclassic:explosives:20>,
    <icbmclassic:explosives:16>,
    <icbmclassic:explosives:18>,
    <icbmclassic:explosives:19>,
    <icbmclassic:explosives:15>,
    <icbmclassic:explosives:21>,
    <icbmclassic:explosives:22>,
    <icbmclassic:explosives:23>,
    <icbmclassic:bombcart:10>,
    <icbmclassic:bombcart:8>,
    <icbmclassic:bombcart:11>,
    <icbmclassic:bombcart:13>,
    <icbmclassic:bombcart:9>,
    <icbmclassic:bombcart:22>,
    <icbmclassic:bombcart:23>,
    <icbmclassic:explosives:22>,
    <icbmclassic:explosives:23>,
    <icbmclassic:bombcart:17>,
    <icbmclassic:bombcart:20>,
    <icbmclassic:bombcart:16>,
    <icbmclassic:bombcart:18>,
    <icbmclassic:bombcart:15>,
    <icbmclassic:bombcart:19>,
    <icbmclassic:bombcart:21>,
    <icbmclassic:bombcart:2>,
    // Immersive Engineering
    <immersiveengineering:metal_device1:10>, // IE turrents, maybe reimplement?
    <immersiveengineering:metal_device1:11>,
    // Immersive Tech
    <immersivetech:wooden_crate>,
    // Industiral Wires
    <industrialwires:general_hv>,
    <industrialwires:ic2_connector>,
    <industrialwires:ic2_connector:1>,
    <industrialwires:ic2_connector:2>,
    <industrialwires:ic2_connector:3>,
    <industrialwires:ic2_connector:4>,
    <industrialwires:ic2_connector:5>,
    <industrialwires:ic2_connector:6>,
    <industrialwires:ic2_connector:7>,
    <industrialwires:ic2_wire_coil>,
    <industrialwires:ic2_wire_coil:1>,
    <industrialwires:ic2_wire_coil:2>,
    <industrialwires:ic2_wire_coil:3>,
    <industrialwires:ic2_wire_coil:4>,
    <industrialwires:ic2_wire_coil:5>,
    <industrialwires:ic2_wire_coil:6>,
    <industrialwires:ic2_wire_coil:7>,
    <industrialwires:ic2_connector:8>,
    <industrialwires:ic2_connector:9>,
    // Locks
    <locks:wood_lock_pick>,
    <locks:iron_lock_pick>,
    // Mekanism Cables
    <mekanism:transmitter>.withTag({tier: 0}),
    <mekanism:transmitter>.withTag({tier: 1}),
    <mekanism:transmitter>.withTag({tier: 2}),
    <mekanism:transmitter>.withTag({tier: 3}),
    <mekanism:transmitter:1>.withTag({tier: 0}),
    <mekanism:transmitter:1>.withTag({tier: 1}),
    <mekanism:transmitter:1>.withTag({tier: 2}),
    <mekanism:transmitter:1>.withTag({tier: 3}),
    <mekanism:transmitter:2>.withTag({tier: 0}),
    <mekanism:transmitter:2>.withTag({tier: 1}),
    <mekanism:transmitter:2>.withTag({tier: 2}),
    <mekanism:transmitter:2>.withTag({tier: 3}),
    <mekanism:transmitter:3>.withTag({tier: 0}),
    <mekanism:transmitter:3>.withTag({tier: 1}),
    <mekanism:transmitter:3>.withTag({tier: 2}),
    <mekanism:transmitter:3>.withTag({tier: 3}),
    <mekanism:transmitter:4>.withTag({tier: 0}),
    <mekanism:transmitter:5>.withTag({tier: 0}),
    // Mekanism Generators
    <mekanismgenerators:reactor>,
    <mekanismgenerators:reactor:1>,
    <mekanismgenerators:reactor:2>,
    <mekanismgenerators:reactor:3>,
    <mekanismgenerators:reactorglass>,
    <mekanismgenerators:solarpanel>,
    <mekanismgenerators:generator:1>,
    <mekanismgenerators:generator:5>,
    <mekanism:machineblock3:1>,
    // Misc Mekanism Items
    <mekanism:obsidiantnt>,
    <mekanism:basicblock:6>.withTag({tier: 4}),
    <mekanism:machineblock2:11>.withTag({tier: 4}),
    <mekanism:gastank>.withTag({tier: 4}),
    <mekanism:walkietalkie>,
    <mekanismgenerators:generator:6>,
    <mekanism:cardboardbox>,
    <mekanismgenerators:generator:7>,
    <mekanismgenerators:generator:8>,
    <mekanismgenerators:generator:9>,
    <mekanismgenerators:generator:10>,
    <mekanismgenerators:generator:11>,
    <mekanismgenerators:generator:12>,
    <mekanismgenerators:generator:13>,
    <mekanismgenerators:reactorglass:1>,
    <mekanism:energycube>.withTag({tier: 4}),
    <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}}),
    // Nuclearcraft
    <nuclearcraft:solar_panel_basic>,
    <nuclearcraft:solar_panel_advanced>,
    <nuclearcraft:solar_panel_du>,
    <nuclearcraft:solar_panel_elite>,
    <nuclearcraft:manufactory_idle>,
    <nuclearcraft:pressurizer_idle>,
    <nuclearcraft:alloy_furnace_idle>,
    <nuclearcraft:water_source>,
    <nuclearcraft:water_source_compact>,
    <nuclearcraft:water_source_dense>,
    <nuclearcraft:alloy:5>,
    <nuclearcraft:portable_ender_chest>,
    <nuclearcraft:dry_earth>,
    <nuclearcraft:ingot>,
    <nuclearcraft:ingot:1>,
    <nuclearcraft:ingot:2>,
    <nuclearcraft:ingot:12>,
    <nuclearcraft:ingot:13>,
    <nuclearcraft:dust:13>,
    <nuclearcraft:dust:2>,
    <nuclearcraft:dust:1>,
    <nuclearcraft:dust>,
    <nuclearcraft:dust:12>,
    <nuclearcraft:gem:6>,
    <nuclearcraft:compound:8>,
    <nuclearcraft:ingot_block>,
    <nuclearcraft:ingot_block:1>,
    <nuclearcraft:ingot_block:2>,
    <nuclearcraft:ingot_block:13>,
    <nuclearcraft:ingot_block:12>,
    <nuclearcraft:dominos>,
    <nuclearcraft:alloy>,
    // These seem really good as power storage, maybe we could revist them as like a late game hard to craft power storage solution
    <nuclearcraft:lithium_ion_cell>,
    <nuclearcraft:voltaic_pile_basic>,
    <nuclearcraft:voltaic_pile_advanced>,
    <nuclearcraft:voltaic_pile_du>,
    <nuclearcraft:voltaic_pile_elite>,
    <nuclearcraft:lithium_ion_battery_basic>,
    <nuclearcraft:lithium_ion_battery_advanced>,
    <nuclearcraft:lithium_ion_battery_du>,
    <nuclearcraft:lithium_ion_battery_elite>,
    // Nuclear craft tools
    <nuclearcraft:sword_boron_nitride>,
    <nuclearcraft:pickaxe_boron_nitride>,
    <nuclearcraft:shovel_boron_nitride>,
    <nuclearcraft:axe_boron_nitride>,
    <nuclearcraft:hoe_boron_nitride>,
    <nuclearcraft:spaxelhoe_boron_nitride>,
    <nuclearcraft:chest_hard_carbon>,
    <nuclearcraft:legs_hard_carbon>,
    <nuclearcraft:boots_hard_carbon>,
    <nuclearcraft:sword_boron>,
    <nuclearcraft:pickaxe_boron>,
    <nuclearcraft:shovel_boron>,
    <nuclearcraft:axe_boron>,
    <nuclearcraft:hoe_boron>,
    <nuclearcraft:spaxelhoe_boron>,
    <nuclearcraft:helm_boron>,
    <nuclearcraft:chest_boron>,
    <nuclearcraft:legs_boron>,
    <nuclearcraft:sword_tough>,
    <nuclearcraft:pickaxe_tough>,
    <nuclearcraft:shovel_tough>,
    <nuclearcraft:axe_tough>,
    <nuclearcraft:hoe_tough>,
    <nuclearcraft:spaxelhoe_tough>,
    <nuclearcraft:boots_boron>,
    <nuclearcraft:helm_tough>,
    <nuclearcraft:chest_tough>,
    <nuclearcraft:sword_hard_carbon>,
    <nuclearcraft:pickaxe_hard_carbon>,
    <nuclearcraft:shovel_hard_carbon>,
    <nuclearcraft:axe_hard_carbon>,
    <nuclearcraft:hoe_hard_carbon>,
    <nuclearcraft:spaxelhoe_hard_carbon>,
    <nuclearcraft:legs_tough>,
    <nuclearcraft:boots_tough>,
    <nuclearcraft:helm_hard_carbon>,
    <nuclearcraft:helm_boron_nitride>,
    <nuclearcraft:chest_boron_nitride>,
    <nuclearcraft:legs_boron_nitride>,
    <nuclearcraft:boots_boron_nitride>,
    // Opencomputers
    <opencomputers:material>, // Cutting wire
    <opencomputers:upgrade:4>, // Chunkload upgrade
    // Opencomputers creative items
    <opencomputers:casecreative>,
    <opencomputers:material:25>,
    <opencomputers:material:22>,
    <opencomputers:material:19>,
    <opencomputers:tool:1>,
    <opencomputers:component:18>,
    <opencomputers:component:12>,
    <opencomputers:card>,
    <opencomputers:upgrade:32>,
    // Pams Harvest Craft
    <harvestcraft:well>,
    <harvestcraft:grinder>,
    // RSgauges that we don't use
    <rsgauges:sensitiveglass_black>,
    <rsgauges:sensitiveglass_inverted>,
    <rsgauges:sensitiveglass_magenta>,
    <rsgauges:sensitiveglass_lightblue>,
    <rsgauges:sensitiveglass_lime>,
    <rsgauges:sensitiveglass_pink>,
    <rsgauges:sensitiveglass_gray>,
    <rsgauges:sensitiveglass_lightgray>,
    <rsgauges:sensitiveglass_cyan>,
    <rsgauges:sensitiveglass_purple>,
    <rsgauges:sensitiveglass_brown>,
    <rsgauges:detectorswitch_glass1>,
    <rsgauges:detectorswitch_glass2>,
    <rsgauges:sensitiveglass>,
    <rsgauges:sensitiveglass_white>,
    <rsgauges:sensitiveglass_red>,
    <rsgauges:sensitiveglass_green>,
    <rsgauges:sensitiveglass_blue>,
    <rsgauges:sensitiveglass_yellow>,
    <rsgauges:sensitiveglass_orange>,
    <rsgauges:bistableswitch_glass1>,
    <rsgauges:bistableswitch_glass2>,
    <rsgauges:pulseswitch_glass1>,
    <rsgauges:pulseswitch_glass2>,
    <rsgauges:pulseswitch_glass3>,
    <rsgauges:contactmat_glass1>,
    <rsgauges:contactmat_glass2>,
    <rsgauges:daytimeswitch_glass1>,
    <rsgauges:timerswitch_glass1>,
    <rsgauges:powerplant_red>,
    <rsgauges:powerplant_yellow>,
    // Solar Flux
    <solarflux:solar_panel_7>,
    <solarflux:solar_panel_8>,
    <solarflux:photovoltaic_cell_5>,
    <solarflux:photovoltaic_cell_6>,
    // Storage Drawers
    <storagedrawers:tape>, // Lets players carry mass items in drawers
    // Techguns armor that gives a mood speed buff
    <techguns:t1_scout_helmet>,
    <techguns:t1_scout_chestplate>,
    <techguns:t1_scout_leggings>,
    <techguns:t1_scout_boots>,
    <techguns:t1_miner_chestplate>,
    <techguns:t1_miner_leggings>,
    <techguns:t1_miner_boots>,
    <techguns:t2_combat_helmet>,
    <techguns:t2_combat_chestplate>,
    <techguns:t2_combat_leggings>,
    <techguns:t2_combat_boots>,
    <techguns:t2_riot_helmet>,
    <techguns:t2_riot_chestplate>,
    <techguns:t2_riot_leggings>,
    <techguns:t2_riot_boots>,
    <techguns:t2_commando_helmet>,
    <techguns:t2_commando_chestplate>,
    <techguns:t2_commando_leggings>,
    <techguns:t2_commando_boots>,
    <techguns:t3_combat_helmet>,
    <techguns:t3_combat_chestplate>,
    <techguns:t3_combat_leggings>,
    <techguns:t3_combat_boots>,
    // Misc Techguns items and machines that we don't use
    <techguns:basicmachine:3>,
    <techguns:itemshared:65>,
    <techguns:itemshared:99>,
    <techguns:itemshared:100>,
    <techguns:itemshared:101>,
    <techguns:basicore>,
    <techguns:basicore:1>,
    <techguns:basicore:2>,
    <techguns:basicore:3>,
    <techguns:basicore:4>,
    <techguns:multiblockmachine:3>,
    <techguns:multiblockmachine:4>,
    <techguns:multiblockmachine:5>,
    <techguns:itemshared:77>,
    <techguns:itemshared:104>,
    <techguns:itemshared:105>,
    <techguns:itemshared:125>,
    <techguns:itemshared:126>,
    <techguns:multiblockmachine>,
    <techguns:multiblockmachine:1>,
    <techguns:multiblockmachine:2>,
    <techguns:itemshared:61>,
    <techguns:itemshared:40>,
    <techguns:itemshared:40>,
    <techguns:itemshared:36>,
    <techguns:itemshared:153>,
    <techguns:itemshared:154>,
    <techguns:itemshared:155>,
    <techguns:itemshared:120>,
    <techguns:itemshared:102>,
    <techguns:simplemachine:11>,
    <techguns:basicmachine:1>,
    <techguns:orecluster:6>,
    <techguns:orecluster:7>,
    <techguns:orecluster:8>,
    <techguns:oredrill>,
    <techguns:oredrill:1>,
    <techguns:oredrill:2>,
    <techguns:oredrill:3>,
    <techguns:oredrill:4>,
    <techguns:sand_hard>,
    <techguns:slimy>,
    <techguns:slimyladder:3>,
    <techguns:orecluster>,
    <techguns:orecluster:1>,
    <techguns:orecluster:2>,
    <techguns:orecluster:3>,
    <techguns:orecluster:4>,
    <techguns:orecluster:5>,
    <techguns:tg_spawner>,
    <techguns:tg_spawner:1>,
    <techguns:nethermetal:4>,
    <techguns:bioblob>,
    <techguns:itemshared:66>,
    <techguns:glider>,
    <techguns:itemshared:90>,
    <techguns:itemshared:91>,
    <techguns:itemshared:134>,
    <techguns:itemshared:135>,
    <techguns:itemshared:136>,
    <techguns:itemshared:137>,
    <techguns:itemshared:138>,
    <techguns:itemshared:139>,
    <techguns:itemshared:140>,
    <techguns:itemshared:141>,
    <techguns:itemshared:142>,
    <techguns:itemshared:62>,
    <techguns:itemshared:67>,
    <techguns:itemshared:69>,
    <techguns:itemshared:78>,
    <techguns:itemshared:44>,
    // Tinkers
    <tconstruct:throwball:1>,
    <tconstruct:slimesling>,
    <tconstruct:slimesling:1>,
    <tconstruct:slimesling:2>,
    <tconstruct:slimesling:3>,
    <tconstruct:slimesling:4>,
    <tconstruct:slimesling:5>,
    <tconstruct:slime_boots>,
    <tconstruct:slime_boots:1>,
    <tconstruct:slime_boots:2>,
    <tconstruct:slime_boots:3>,
    <tconstruct:slime_boots:4>,
    <tconstruct:slime_boots:5>,
    // Vanilla
    // This will be an experiment of how this goes. Fights where the fighters have crazy enchants on their armor to the point they're unkillable are really boring.
    <minecraft:enchanting_table>,
    <minecraft:elytra>
    // End
];

// All of the alloys that we don't want to be formable in the smeltry
val disabledAlloys as ILiquidStack[] = [
    <liquid:steel>,
    <liquid:constantan>,
    <liquid:enderium>,
    <liquid:invar>,
    <liquid:signalum>,
    <liquid:lumium>,
    <liquid:pigiron>,
    <liquid:knightslime>,
    <liquid:electrum>,
    <liquid:energetic_alloy>,
    <liquid:vibrant_alloy>,
    <liquid:conductive_iron>,
    <liquid:pulsating_iron>,
    <liquid:dark_steel>,
    <liquid:stone>,
    <liquid:manyullyn>,
    <liquid:ferroboron>,
    <liquid:tough>,
    <liquid:hard_carbon>,
    <liquid:unsweetened_chocolate>,
    <liquid:dark_chocolate>,
    <liquid:milk_chocolate>,
    <liquid:hydrated_gelatin>,
    <liquid:marshmallow>
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

for alloy in disabledAlloys {
    mods.tconstruct.Alloy.removeRecipe(alloy);
}

// Disables the End, this is subject to change but right now we don't have a good place for it
mods.DimensionStages.addDimensionStage(stage, 1);

// Fixes melting related dupes with healing items like spring water
mods.tconstruct.Melting.removeEntityMelting(<entity:minecraft:villager_golem>);
mods.tconstruct.Melting.removeEntityMelting(<entity:minecraft:villager>);

// Immersive Railroading, ugly trains, we hate ugly trains
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rClass B-B-70/70-4HM829 Boxcab Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rGE B40-8w Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rSkookum 2-4-4-2 Front Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rSkookum 2-4-4-2 Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rSkookum Tender Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rE6 Atlantic Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rE6 Atlantic Tender Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rDSP&P Mogul Frame"}}));
    ItemStages.addItemStage("disabled", <immersiverailroading:item_rolling_stock_component>.withTag({display: {Name: "§rD&RGW K36 Frame"}}));

// Disabled Immersive Engineering multiblocks
IEMultiBlockStages.addStage(stage, "IE:Excavator", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:BucketWheel", "Requires " + stage);