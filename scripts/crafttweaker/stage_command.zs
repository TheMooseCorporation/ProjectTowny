import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;

val gameStages = [
    "",
    "", 
    ""
    ] as string[];

events.onCommand(function(event as CommandEvent){

    val command = event.command;

    if(isNull(command) || (command.name != "dev") || (event.parameters.length == 0) || (event.parameters[0] != "allstage")) {
        return;
    }

    if(event.commandSender instanceof IPlayer) {

        val player as IPlayer = event.commandSender;
        player.sendChat("[DEBUG] Unlocking all game stages");

        for stage in gameStages {
            player.addGameStage(stage);
        }
    }
});

