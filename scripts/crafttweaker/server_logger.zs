import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.item.IItemDefinition;

events.onPlayerLeftClickBlock(function (event as PlayerLeftClickBlockEvent) {
    
    if (isNull(event.item)) return;

    val itemStack = event.item as IItemStack;

    if((itemStack.definition.owner).matches("chiselsandbits")) {
        val player = event.player as IPlayer;
        
        val playerX = player.x as string;
        val playerY = player.y as string;
        val playerZ = player.z as string;

        print("[SERVER LOG]: " + player.name + " (" + player.uuid + ")" + " used " + itemStack.name + " at " + playerX + ", " + playerY + ", " + playerZ + ". If used in a malicious way look into this!");
    }
});