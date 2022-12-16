import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import mods.recipestages.Recipes;
import mods.ItemStages;

#Project Towny Cosmetic System - V1
#Written by Moose1002

#Array of developer UUID's
val developerArray = ["1cbcbfd5-0abc-41b6-a04f-d78a4ea32505", "525e43b1-5901-47fa-a779-6dcdc69c3f47", "abdf8c5e-44c4-4b67-8f12-0628867b3366"] as string[];
val alphaTesterArray = ["a136645b-be77-4531-97ed-7803e5e1ee57", "94028398-3422-4e8d-980e-13cf54d19d5d"] as string[];
val builderArray = ["5fc881bb-a314-45e4-84f6-262756746bd6", "f569ad78-faef-4c17-8b07-e8ad0ff79a71", "a136645b-be77-4531-97ed-7803e5e1ee57"] as string[];
val bugFinderArray = ["f569ad78-faef-4c17-8b07-e8ad0ff79a71", "467a4aaf-5343-41f7-8f1f-abf25ea37863", "83e6fe9d-e39b-4d0a-872f-2495f6e650d6", "33f71b20-0388-453a-9897-160e2f81c887"] as string[];

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

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {
    
    var player = event.player as IPlayer;

    #Check all of the uuid's in the array, and if the player logging in has a matching uuid, they must be a developer
    for uuid in developerArray {
        if(player.uuid == uuid) {
            player.addGameStage("developer");
            player.addGameStage("alpha_tester");
            player.addGameStage("builder");
            player.addGameStage("bug_finder");
            return;
        }
    }

    for uuid in alphaTesterArray {
        if(player.uuid == uuid) {
            player.addGameStage("alpha_tester");
            break;
        }
    }

    for uuid in builderArray {
        if(player.uuid == uuid) {
            player.addGameStage("builder");
            break;
        }
    }

    for uuid in bugFinderArray {
        if(player.uuid == uuid) {
            player.addGameStage("bug_finder");
            return;
        }
    }
});