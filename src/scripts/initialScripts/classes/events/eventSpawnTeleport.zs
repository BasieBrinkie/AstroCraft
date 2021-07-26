import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerLoggedOutEvent;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntity;
import crafttweaker.command.ICommandManager;
import crafttweaker.server.IServer;
import crafttweaker.world.IWorldInfo;
import crafttweaker.text.ITextComponent;
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;


/*	
	----------------------------------------------------------------------------------------------
	When joined for the first time you will get tag firstJoin=1. When you log out it will
    permanently change to firstJoin=0.

    Also checks the generatorOptions for other world spawns. Gives you the corresponding spawn 
    items.
	----------------------------------------------------------------------------------------------
*/


function init() {
    events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent){
        if (isNull(event.player.data.firstJoin)) {
            event.player.update({firstJoin: 1});

            // Save player coords/world object
            val pos = event.player.position;
            var posX as int = pos.getX();
            var posZ as int = pos.getZ();
            
            // Set so recurrent complex can generate structure without #confirm
            server.commandManager.executeCommand(server, "#preview none");

            if event.player.world.worldInfo.getGeneratorOptions() == '{"Topography-Preset":"Glacidus"}' { 
                server.commandManager.executeCommand(server, "#gen galcidusSpawn1 -d 4 -x " + posX + " -z " + posZ);
                server.commandManager.executeCommand(server, "tpj " + event.player.name + " 4 " + posX + 3 + " 90 " + posZ + 3);
                server.commandManager.executeCommand(server, "clear " + event.player.name);
                val startingItems as IItemStack[][string] = scripts.initialScripts.initialInventory.initialInventory.startingItems;
                for item in startingItems['{"Topography-Preset":"Glacidus"}'] {
                    event.player.give(item);
                }
            }
            if event.player.world.worldInfo.getGeneratorOptions() == '{"Topography-Preset":"Aquarius-66B"}' {
                server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 3 -x " + posX + " -z " + posZ);
                server.commandManager.executeCommand(server, "tpj " + event.player.name + " 5 " + posX + " 248 " + posZ);
                server.commandManager.executeCommand(server, "clear " + event.player.name);
                val startingItems as IItemStack[][string] = scripts.initialScripts.initialInventory.initialInventory.startingItems;
                for item in startingItems['{"Topography-Preset":"Aquarius-66B"}'] {
                    event.player.give(item);
                }
            }
        }
    });
    
    events.onPlayerLoggedOut(function(event as crafttweaker.event.PlayerLoggedOutEvent){
        if event.player.data.firstJoin == 1 {
            event.player.update({firstJoin: 0});
            print(event.player.data.firstJoin);
        }
    });
}

init();
