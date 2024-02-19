#priority 0
#loader crafttweaker

import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

events.onCommand(function(event as CommandEvent){

    val command = event.command;

    if(isNull(command) || (command.name != "crafttweaker") || (event.parameters.length == 0) || (event.parameters[0] != "allstage")) {
        return;
    }

    print("Ok the command must be valid");

    if(event.commandSender instanceof IPlayer) {

        val player as IPlayer = event.commandSender;
        player.sendChat("[DEBUG] Unlocking all game stages");

        for stage in scripts.crafttweaker.Utils.all_stages.gameStages {
            player.addGameStage(stage);
        }
    }
});

