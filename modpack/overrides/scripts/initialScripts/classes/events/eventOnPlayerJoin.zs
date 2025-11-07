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

static welcomeMessage as string = "Test Join Message, TBD";

function init() {
    events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent){
        server.commandManager.executeCommand(server, '/tellraw ' + event.player.name + ' ["\n\n"]');
        server.commandManager.executeCommand(server, '/tellraw ' + event.player.name + ' ["' + welcomeMessage + '"]' );
    });
}
