import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.StringList;

import crafttweaker.player.IPlayer;

static startingWorlds as string[] = [
    "Glacidus",
    "Aquarius-66B"
];

static glacidusSpawnStages as string[] = [
    stageGlacidusSpawn.stage
];

static aquariusSpawnStages as string[] = [
    stageAquariusSpawn.stage
];

val astroCraft as ZenCommand = ZenCommand.create("astrocraft");
astroCraft.getCommandUsage = function(sender) {
    return "astrocraft.user_command.usage"; // return localization key
};
astroCraft.requiredPermissionLevel = 0; // require no permission, everyone can execute the command.

astroCraft.tabCompletionGetters = [function(server, player, pos) {
    return StringList.create(["startworld"]);}, function(server, player, pos) {
    return StringList.create(startingWorlds);
}];
astroCraft.execute = function(command, server, sender, params) {
    if (params.length == 2) {
        if (params[1] == "Glacidus") {
            val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
            if player.data.firstJoin == 1 {
                for stage in glacidusSpawnStages { 
                    player.addGameStage(stage);
                }
                server.commandManager.executeCommand(server, "#preview none");
                server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + player.x + " -z " + player.z );
                server.commandManager.executeCommand(server, "tpj " + player.name + " 4 " + player.x + 3 + " 81 " + player.z + 3);
                server.commandManager.executeCommand(server, "clear " + player.name);
            }
            else {
                player.sendChat("Ask an admin to change your spawn area, this is done so you cannot accidentally reset your base");
            }
        }        
     if (params[2] == "Aquarius-66B") {
        val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
        if player.data.firstJoin == 1 {
            for stage in aquariusSpawnStages {
                player.addGameStage(stage);
            }
            server.commandManager.executeCommand(server, "#preview none");
            server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + player.x + " -z " + player.z );
            server.commandManager.executeCommand(server, "tpj " + player.name + " 5 " + player.x + " 90 " + player.z);
            server.commandManager.executeCommand(server, "clear " + player.name);
        }
        else {
            player.sendChat("Ask an admin to change your spawn area, this is done so you cannot accidentally reset your base");
        }                    
    }
    // notify command sender wrong using and the proper usage.
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
astroCraft.register();


//
// Admin commands
//

val astroCraftAdmin as ZenCommand = ZenCommand.create("astrocraft_admin");
astroCraftAdmin.getCommandUsage = function(sender) {
    return "astrocraft.admin_command.usage"; // return localization key
};
astroCraftAdmin.requiredPermissionLevel = 4; // require OP permission
astroCraftAdmin.tabCompletionGetters = [function(server, player, pos) {
    return StringList.create(["resetWorldOption"]);
}, IGetTabCompletion.player(), function(server, player, pos) {
    return StringList.create(startingWorlds);
}];
astroCraftAdmin.execute = function(command, server, sender, params) {
     if (params.length == 5 && params[0] == "resetWorldOption" && params[2] == "Glacidus") {
        val tpPlayer as string = params[1];
        var posX as string = params[3];
        var posZ as string = params[4];
        
        for stage in glacidusSpawnStages { 
            CommandUtils.getPlayer(server, sender, tpPlayer).addGameStage(stage);
        }
        server.commandManager.executeCommand(server, "#preview none");
        server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + posX + " -z " + posZ);
        server.commandManager.executeCommand(server, "tpj " + tpPlayer + " 4 " + posX + 3 + " 81 " + posZ + 3);
        server.commandManager.executeCommand(server, "clear " + tpPlayer);
    }
    if (params.length == 5 && params[0] == "resetWorldOption" && params[2] == "Aquarius-66B") {
        val tpPlayer as string = params[1];
        var posX as string = params[3];
        var posZ as string = params[4];

        for stage in aquariusSpawnStages {
            CommandUtils.getPlayer(server, sender, tpPlayer).addGameStage(stage);
        }
        server.commandManager.executeCommand(server, "#preview none");
        server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + posX + " -z " + posZ);
        server.commandManager.executeCommand(server, "tpj " + tpPlayer + " 5 " + posX + " 90 " + posZ);
        server.commandManager.executeCommand(server, "clear " + tpPlayer);      
    }
    // notify command sender wrong using and the proper usage.
    else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
astroCraftAdmin.register();