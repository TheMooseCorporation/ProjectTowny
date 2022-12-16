import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

//The Dimension ID of Europa
var europaDimension = 10 as int;

events.onPlayerTick(function (event as PlayerTickEvent) {
    
    var player = event.player as IPlayer;

    if (player.dimension == europaDimension && player.y >= 180 && player.y < 256) {
        player.addPotionEffect(<potion:minecraft:posion>.makePotionEffect(20, 1, false, false));
        player.sendStatusMessage(format.darkRed(format.bold("Warning: Jovian Radiation Detected, the thick ice layer should block it!")));
    } 
});