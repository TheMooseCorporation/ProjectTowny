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
    <projecttowny:war_table>
];

for item in stageItems {
    Recipes.setRecipeStage(stage, item);
    ItemStages.addItemStage(stage, item);
}

// Money mod ATM and Bills
recipes.addShaped(<fsmm:atm>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>], [<ore:blockIron>, <ore:blockRedstone>, <ore:blockIron>]]);
recipes.addShapeless(<contenttweaker:thousand_bill>, [<contenttweaker:fivehundred_bill>,<contenttweaker:fivehundred_bill>]);
recipes.addShapeless(<modcurrency:banknote:5> * 10, [<contenttweaker:thousand_bill>]);
recipes.addShapeless(<contenttweaker:fivehundred_bill> * 2, [<contenttweaker:thousand_bill>]);
recipes.addShapeless(<contenttweaker:fivehundred_bill>, [<modcurrency:banknote:5>,<modcurrency:banknote:5>,<modcurrency:banknote:5>,<modcurrency:banknote:5>,<modcurrency:banknote:5>]);
recipes.addShapeless(<modcurrency:banknote:5> * 5, [<contenttweaker:fivehundred_bill>]);

// Early game multiblock controller recipes (These might be moved around on the culture update)
recipes.addShaped(<projecttowny:tier1_research>, [[<minecraft:book>, <ore:plankWood>, <minecraft:book>],[<ore:plankWood>, <contenttweaker:iron_tech_template>, <ore:plankWood>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<projecttowny:civicsbench>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],[<ore:bookshelf>, <modcurrency:banknote:5>, <ore:bookshelf>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);
recipes.addShaped(<projecttowny:war_table>, [[<ore:blockWoolGreen>, <ore:blockWoolGreen>, <ore:blockWoolGreen>],[<ore:ingotIron>, <projecttowny:civicsbench>, <ore:ingotIron>], [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Basic Artisan Worktables
// Basic
recipes.addShaped(<artisanworktables:worktable:5>, [[<ore:plankWood>, null, <ore:plankWood>],[<ore:plankWood>, <minecraft:crafting_table>, <ore:plankWood>], [<ore:logWood>, null, <ore:logWood>]]);
// Mason
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],[<minecraft:brick_block>, <minecraft:anvil>, <minecraft:brick_block>], [<ore:fenceWood>, null, <ore:fenceWood>]]);
