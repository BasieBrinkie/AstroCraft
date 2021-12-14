import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.StringList;

import mods.zenstages.Stage;

import crafttweaker.command.ICommandManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;

static param0 as string[] = [
    "help",
    "startworld"
];

static startingWorlds as string[] = [
    "Aquarius-66B",
    "Glacidus"
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
    return StringList.create(param0);}, function(server, player, pos) {
    return StringList.create(startingWorlds);
}];
astroCraft.execute = function(command, server, sender, params) {
    val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if (params in "help") {
        player.sendChat("§cSet your starting world when you first join a server with:");
        player.sendChat("§c/astrocraft startworld <world>");
        player.sendChat("Valid worlds:");
        for world in startingWorlds {
            player.sendChat(world);
        }
    }
    else if (params.length == 1 && params[0] == param0[1]) {
        player.sendChat("§cSet your starting world when you first join a server with:");
        player.sendChat("§c/astrocraft startworld <world>");
        player.sendChat("Valid worlds:");
        for world in startingWorlds {
            player.sendChat(world);
        }
    }
    else if (params.length == 2 && params[0] == param0[1]) {
        if (params[1].equalsIgnoreCase("glacidus")) {
            if (player.data.firstJoin == 1) {    
                for stage in glacidusSpawnStages { 
                    player.addGameStage(stage);
                }
                server.commandManager.executeCommand(server, "#preview none");
                server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + player.x + " -z " + player.z );
                server.commandManager.executeCommand(server, "tpj " + player.name + " 4 " + player.x + 3 + " 84 " + player.z + 3);
                server.commandManager.executeCommand(server, "clear " + player.name);
                player.sendChat("§cSuccesfully reset the starting world");
            }
            else {
                player.sendChat("§cAsk an admin to change your spawn area, this is done so you cannot accidentally reset your base");
            }
        }        
        if (params[1].equalsIgnoreCase("aquarius-66B")) {
            if (player.data.firstJoin == 1) {
                for stage in aquariusSpawnStages {
                    player.addGameStage(stage);
                }
                server.commandManager.executeCommand(server, "#preview none");
                server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + player.x + " -z " + player.z );
                server.commandManager.executeCommand(server, "tpj " + player.name + " 5 " + player.x + " 90 " + player.z);
                server.commandManager.executeCommand(server, "clear " + player.name);
                player.sendChat("§cSuccesfully reset the starting world");
            }
            else {
                player.sendChat("§cAsk an admin to change your spawn area, this is done so you cannot accidentally reset your base");
            } 
        }
        else {
            player.sendChat("§cSet your starting world when you first join a server with:");
            player.sendChat("§c/astrocraft startworld <world>");
            player.sendChat("§cValid worlds:");
            for world in startingWorlds {
                player.sendChat(world);
            }
        }                   
    }


    // notify command sender wrong usage and send the proper usage.
    else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
astroCraft.register();


//
// Admin commands
//

static adminParam0 as string[] = [
    "help",
    "resetWorldOption"
];

val astroCraftAdmin as ZenCommand = ZenCommand.create("astrocraft_admin");
astroCraftAdmin.getCommandUsage = function(sender) {
    return "astrocraft.admin_command.usage"; // return localization key
};
astroCraftAdmin.requiredPermissionLevel = 4; // require OP permission
astroCraftAdmin.tabCompletionGetters = [function(server, player, pos) {
    return StringList.create(adminParam0);
}, IGetTabCompletion.player(), function(server, player, pos) {
    return StringList.create(startingWorlds);
}];
astroCraftAdmin.execute = function(command, server, sender, params) {
    val player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if (params in "help") {
        player.sendChat("§cResets the starting world for the player and clears inventory and gives starting items");
        player.sendChat("§c/astrocraft resetWorldOption <player> <world> <pos x> <pos z>");
        player.sendChat("Valid worlds:");
        for world in startingWorlds {
            player.sendChat(world);
        }
    }
    else if (params.length < 5 && params[0] == adminParam0[0]) {
        player.sendChat("§cResets the starting world for the player and clears inventory and gives starting items");
        player.sendChat("§c/astrocraft resetWorldOption <player> <world> <pos x> <pos z>");
        player.sendChat("Valid worlds:");
        for world in startingWorlds {
            player.sendChat(world);
        }
    }
    else if (params.length == 5 && params[0] == "resetWorldOption" && params[2] == "Glacidus") {
        val tpPlayer as string = params[1];
        var posX = params[3] as int;
        var posZ = params[4] as int;
        
        for stage in glacidusSpawnStages { 
            CommandUtils.getPlayer(server, sender, tpPlayer).addGameStage(stage);
        }
        server.commandManager.executeCommand(server, "#preview none");
        server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + posX + " -z " + posZ);
        server.commandManager.executeCommand(server, "tpj " + tpPlayer + " 4 " + posX + 3 + " 84 " + posZ + 3);
        server.commandManager.executeCommand(server, "clear " + tpPlayer);
        player.sendChat("§cSuccesfully reset starting world");
    }
    else if (params.length == 5 && params[0] == "resetWorldOption" && params[2] == "Aquarius-66B") {
        val tpPlayer as string = params[1];
        var posX = params[3] as int;
        var posZ = params[4] as int;

        for stage in aquariusSpawnStages {
            CommandUtils.getPlayer(server, sender, tpPlayer).addGameStage(stage);
        }
        server.commandManager.executeCommand(server, "#preview none");
        server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + posX + " -z " + posZ);
        server.commandManager.executeCommand(server, "tpj " + tpPlayer + " 5 " + posX + " 90 " + posZ);
        server.commandManager.executeCommand(server, "clear " + tpPlayer);
        player.sendChat("§cSuccesfully reset starting world");
    }
    // notify command sender wrong usage and send the proper usage.
    else {
        CommandUtils.notifyWrongUsage(command, sender);
    }
};
astroCraftAdmin.register();