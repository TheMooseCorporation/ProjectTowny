import mods.recipestages.Recipes;
import mods.ItemStages;

// The adding of these gamestages is now handled by Towny Tweaks. This file now only registers the new recipes/backpacks

recipes.removeShaped(<wearablebackpacks:backpack>);
recipes.addShaped(<wearablebackpacks:backpack>, [[<minecraft:leather>, <minecraft:gold_ingot>, <minecraft:leather>],[<minecraft:leather>, <minecraft:wool>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

Recipes.addShaped("developer", <wearablebackpacks:backpack>.withTag({Unbreakable: 1, backpack: {armor: 6, size: [14, 2]}, display: {Lore: ["A special backpack given to members of the development team!"], color: 11546150, Name: "Developer's Backpack"}}), [[<minecraft:leather>, <minecraft:diamond>, <minecraft:leather>],[<minecraft:leather>, <minecraft:wool:14>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
ItemStages.addItemStage("developer", <wearablebackpacks:backpack>.withTag({Unbreakable: 1, backpack: {armor: 4, size: [14, 2]}, display: {Lore: ["A special backpack given to members of the development team!"], color: 11546150, Name: "Developer's Backpack"}}));

Recipes.addShaped("alpha_tester", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who helped test Project Towny in it's alpha days!"], color: 15368089, Name: "Alpha Tester's Backpack"}}), [[<minecraft:leather>, <minecraft:diamond>, <minecraft:leather>],[<minecraft:leather>, <minecraft:wool:6>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
ItemStages.addItemStage("alpha_tester", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who helped test Project Towny in it's alpha days!"], color: 15368089, Name: "Alpha Tester's Backpack"}}));

Recipes.addShaped("builder", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who helped build buildings for Project Towny!"], color: 3837642, Name: "Builder's Backpack"}}), [[<minecraft:leather>, <minecraft:diamond>, <minecraft:leather>],[<minecraft:leather>, <minecraft:wool:3>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
ItemStages.addItemStage("builder", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who helped build buildings for Project Towny!"], color: 3837642, Name: "Builder's Backpack"}}));

Recipes.addShaped("bug_finder", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who reported major gamebreaking bugs!"], color: 8991416, Name: "Bug Finders's Backpack"}}), [[<minecraft:leather>, <minecraft:diamond>, <minecraft:leather>],[<minecraft:leather>, <minecraft:wool:10>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
ItemStages.addItemStage("bug_finder", <wearablebackpacks:backpack>.withTag({backpack: {armor: 4, size: [12, 2]}, display: {Lore: ["A special backpack given to players who reported major gamebreaking bugs!"], color: 8991416, Name: "Bug Finders's Backpack"}}));