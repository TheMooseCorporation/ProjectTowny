import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

/**
    Iron Tech:
    Anything that we want to lock behind founding a town should go here
    Nothing is currently gated behind this gamestage, it acts as more of tutorial to showcase how the system works.
*/

// Stage Name
val stage = "iron_tech";

val stageItems as IItemStack[] = [
    <projecttowny:civicsbench>,
    <projecttowny:war_table>,
    <fsmm:atm>
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Money mod ATM
recipes.addShaped(<fsmm:atm>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, <modcurrency:banknote:3>, <ore:ingotIron>], [<ore:blockIron>, <ore:blockRedstone>, <ore:blockIron>]]);

// Early game multiblock controller recipes (These might be moved around on the culture update)
recipes.addShaped(<projecttowny:tier1_research>, [[<minecraft:book>, <ore:plankWood>, <minecraft:book>],[<ore:plankWood>, <contenttweaker:iron_tech_template>, <ore:plankWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<projecttowny:civicsbench>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],[<ore:bookshelf>, <modcurrency:banknote:5>, <ore:bookshelf>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<projecttowny:war_table>, [[<ore:blockWoolGreen>, <ore:blockWoolGreen>, <ore:blockWoolGreen>],[<ore:ingotIron>, <projecttowny:civicsbench>, <ore:ingotIron>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Basic Artisan Worktables
// Basic
recipes.addShaped(<artisanworktables:worktable:5>, [[<ore:plankWood>, null, <ore:plankWood>],[<ore:plankWood>, <minecraft:crafting_table>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);
// Mason
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],[<minecraft:brick_block>, <minecraft:anvil>, <minecraft:brick_block>], [<ore:fenceWood>, null, <ore:fenceWood>]]);
