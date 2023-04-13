import mods.ItemStages;
import mods.recipestages.Recipes;
import crafttweaker.item.IItemStack;

#Not disabling the item for this, since it's so early game.

val currencyModItems as IItemStack[] = [
    <modcurrency:guidebook>,
    <modcurrency:wallet>,
    <modcurrency:upgrade:5>,
    <modcurrency:blockexchanger>,
    <modcurrency:blockvending>,
    <modcurrency:upgrade:1>,
    <modcurrency:upgrade:2>,
    <modcurrency:upgrade:3>,
    <modcurrency:upgrade:4>,
    <locks:spring>,
    <locks:wood_lock_mechanism>,
    <locks:iron_lock_mechanism>,
    <locks:wood_lock>,
    <locks:iron_lock>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 46}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 46}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 46}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 46}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 46}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 45}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 45}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 45}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 44}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 44}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 44}]})
];

for item in currencyModItems {
    Recipes.setRecipeStage("iron_stage", item);
}

recipes.addShaped(<fsmm:atm>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:ingotIron>, <modcurrency:banknote:3>, <ore:ingotIron>], [<ore:blockIron>, <ore:blockRedstone>, <ore:blockIron>]]);
