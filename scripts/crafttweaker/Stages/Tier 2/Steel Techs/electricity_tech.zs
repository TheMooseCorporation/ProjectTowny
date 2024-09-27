import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;
import mods.immersiveengineering.Blueprint;

/**
    Allows players to begin making machines from Immersive engineering.  Unlocks basic power options and very basic machines
*/

// Stage Name
val stage = "electricity_tech";

val stageMods as string[] = [
    "immersiveposts"
];

val stageItems as IItemStack[] = [
    <immersiveengineering:wooden_device0:6>,
    <immersiveengineering:wooden_device1>,
    <immersiveengineering:wooden_device1:1>,
    <immersiveengineering:wooden_device1:3>,
    <immersiveengineering:wooden_device1:4>,
    <immersiveengineering:metal_decoration2>,
    <immersiveengineering:metal_decoration2:1>,
    <immersiveengineering:metal_decoration2:2>,
    <immersiveengineering:metal_decoration2:3>,
    <immersiveengineering:cloth_device:2>,
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:metal_decoration0:1>,
    <immersiveengineering:metal_decoration0:2>,
    <immersiveengineering:metal_decoration0:3>,
    <immersiveengineering:metal_decoration0:4>,
    <immersiveengineering:metal_decoration0:5>,
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_decoration0:7>,
    <immersiveengineering:connector>,
    <immersiveengineering:connector:1>,
    <immersiveengineering:connector:2>,
    <immersiveengineering:connector:3>,
    <immersiveengineering:connector:4>,
    <immersiveengineering:connector:5>,
    <immersiveengineering:connector:6>,
    <immersiveengineering:connector:7>,
    <immersiveengineering:connector:8>,
    <immersiveengineering:connector:9>,
    <immersiveengineering:connector:10>,
    <immersiveengineering:connector:11>,
    <immersiveengineering:connector:12>,
    <immersiveengineering:connector:13>,
    <immersiveengineering:wooden_device0:3>,
    <immersiveengineering:wooden_device0:6>,
    <immersiveengineering:wooden_device1>,
    <immersiveengineering:wooden_device1:1>,
    <immersiveengineering:wooden_device1:3>,
    <immersiveengineering:wooden_device1:4>,
    <immersiveengineering:metal_decoration2>,
    <immersiveengineering:metal_decoration2:1>,
    <immersiveengineering:metal_decoration2:2>,
    <immersiveengineering:metal_decoration2:3>,
    <immersiveengineering:cloth_device:2>,
    <immersiveengineering:metal_decoration0>,
    <immersiveengineering:metal_decoration0:1>,
    <immersiveengineering:metal_decoration0:2>,
    <immersiveengineering:metal_decoration0:3>,
    <immersiveengineering:metal_decoration0:4>,
    <immersiveengineering:metal_decoration0:5>,
    <immersiveengineering:metal_decoration0:6>,
    <immersiveengineering:metal_decoration0:7>,
    <immersiveengineering:connector>,
    <immersiveengineering:connector:1>,
    <immersiveengineering:connector:2>,
    <immersiveengineering:connector:3>,
    <immersiveengineering:connector:4>,
    <immersiveengineering:connector:5>,
    <immersiveengineering:connector:6>,
    <immersiveengineering:connector:7>,
    <immersiveengineering:connector:8>,
    <immersiveengineering:connector:9>,
    <immersiveengineering:connector:10>,
    <immersiveengineering:connector:11>,
    <immersiveengineering:connector:12>,
    <immersiveengineering:connector:13>,
    <immersiveengineering:wirecoil:4>,
    <immersiveengineering:wirecoil:5>,
    <immersiveengineering:wirecoil:6>,
    <immersiveengineering:wirecoil:7>,
    <immersiveengineering:mold>,
    <immersiveengineering:mold:1>,
    <immersiveengineering:mold:2>,
    <immersiveengineering:mold:3>,
    <immersiveengineering:mold:4>,
    <immersiveengineering:conveyor>,
    <immersiveengineering:material:10>,
    <immersiveengineering:material:11>,
    <immersiveengineering:material:12>,
    <immersiveengineering:material:26>,
    <immersiveengineering:material:27>,
    <immersiveengineering:material:20>,
    <immersiveengineering:material:21>,
    <immersiveengineering:material:22>,
    <immersiveengineering:tool:2>,
    <immersiveengineering:wirecoil>,
    <immersiveengineering:wirecoil:1>,
    <immersiveengineering:wirecoil:2>,
    <immersiveengineering:wirecoil:3>,
    <immersiveengineering:mold:5>,
    <immersiveengineering:mold:6>,
    <immersiveengineering:mold:7>,
    <immersiveengineering:skyhook>,
    <immersiveengineering:toolupgrade:6>,
    <immersiveengineering:toolupgrade:10>,
    <immersiveengineering:toolupgrade:11>,
    <immersiveengineering:toolupgrade:12>,
    <immersiveengineering:fluorescent_tube>,
    <immersiveengineering:powerpack>,
    <immersiveengineering:metal_device0>,
    <immersiveengineering:metal_device0:1>,
    <immersiveengineering:metal_device0:2>,
    <immersiveengineering:metal_device1:2>,
    <immersiveengineering:metal_device1:5>,
    <immersiveengineering:metal_device1:9>,
    <immersiveengineering:stone_decoration:8>,
    <immersiveengineering:stone_decoration:8>,
    <immersivetech:connectors>,
    <immersivetech:metal_trash:2>,
    <techguns:itemshared:63>,
    <techguns:itemshared:70>,
    <techguns:basicmachine>,
    <techguns:itemshared:10>,
    <techguns:itemshared:65>,
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}),
    <immersivetech:connectors>,
    // Industrial Wires (We can't do the IC2 wires because they cause issues, but we don't need them anyway)
    <industrialwires:jacobs_ladder>,
    <industrialwires:jacobs_ladder:1>,
    <industrialwires:jacobs_ladder:2>,
    <industrialwires:control_panel>,
    <industrialwires:control_panel:1>,
    <industrialwires:control_panel:2>,
    <industrialwires:control_panel:3>,
    <industrialwires:control_panel:4>,
    <industrialwires:control_panel:6>,
    <industrialwires:panel_component>,
    <industrialwires:panel_component:1>,
    <industrialwires:panel_component:2>,
    <industrialwires:panel_component:3>,
    <industrialwires:panel_component:4>,
    <industrialwires:panel_component:5>,
    <industrialwires:panel_component:6>,
    <industrialwires:panel_component:7>,
    <industrialwires:panel_component:8>,
    <industrialwires:panel_component:9>,
    <industrialwires:key>,
    <industrialwires:key:2>,
    <projecttowny:tier2_research>
];

for mod in stageMods {
    Recipes.setRecipeStageByMod(stage, mod);
    ItemStages.stageModItems(stage, mod);
}

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Recipe changes from Immersive Engineering circuit to Primitve Circuit
Blueprint.removeRecipe(<immersiveengineering:material:27>);
Blueprint.addRecipe("components", <contenttweaker:tier0_circuit>, [<immersiveengineering:stone_decoration:8>, <ore:plateCopper>, <immersiveengineering:material:26>, <immersiveengineering:material:26>]);
recipes.remove(<industrialwires:control_panel:3>);
recipes.remove(<immersivetech:connectors>);
recipes.remove(<immersiveengineering:connector:13>);
recipes.addShaped(<industrialwires:control_panel:3>, [[<ore:stickSteel>, <contenttweaker:tier0_circuit>, <ore:stickSteel>],[<immersiveengineering:material:2>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:material:2>], [<ore:stickSteel>, <ore:plateConstantan>, <ore:stickSteel>]]);
recipes.addShaped(<immersivetech:connectors>, [[<ore:paneGlass>, <immersiveengineering:connector:12>, <ore:paneGlass>],[<contenttweaker:tier0_circuit>, <contenttweaker:tier0_circuit>, <contenttweaker:tier0_circuit>], [<ore:paneGlass>, <ore:gemQuartz>, <ore:paneGlass>]]);
recipes.addShaped(<immersiveengineering:connector:13>, [[null, <immersiveengineering:connector:12>, null],[<ore:paneGlass>, <contenttweaker:tier0_circuit>, <ore:paneGlass>], [null, <ore:gemQuartz>, null]]);

//Locks multiblocks
IEMultiBlockStages.addStage(stage, "IE:Assembler", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:MetalPress", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:AutoWorkbench", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:Lightningrod", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IE:FeedThrough", "Requires " + stage);
IEMultiBlockStages.addStage(stage, "IT:Alternator", "Requires " + stage);

// Thermoelectric machines can be used after discovering electricity
ItemStages.addItemStage(stage, <immersiveengineering:metal_device1:3>);

// Tier 2 Engineer Workbench
recipes.addShaped(<artisanworktables:workstation:6>, [[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>],[<ore:plateCopper>, <artisanworktables:worktable:6>, <ore:plateCopper>], [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);
// Tier 2 Lab Multiblock Controller
recipes.addShaped(<projecttowny:tier2_research>, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],[<minecraft:brick_block>, <projecttowny:tier1_research>, <minecraft:brick_block>], [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>]]);

// Mechanical System Related Recipes
recipes.remove(<immersiveengineering:conveyor>);
recipes.remove(<immersiveengineering:metal_device1:2>);

recipes.addShaped(<immersiveengineering:metal_device1:2>, [[null, null, null],[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], [<thermalfoundation:material:24>, <immersiveengineering:material:8>, <thermalfoundation:material:24>]]);

recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],[<ore:ingotSteel>, <ore:gearStone>, <ore:ingotSteel>], [<ore:gearStone>, <ore:ingotSteel>, <ore:gearStone>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 16, [[null, null, null],[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:gearIron>, <ore:ingotSteel>, <ore:gearIron>]]);