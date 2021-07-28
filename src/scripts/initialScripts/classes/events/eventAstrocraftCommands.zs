import crafttweaker.event.CommandEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;
import crafttweaker.item.IItemStack;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

static glacidusSpawnStages as string[] = [
    stageGlacidusSpawn.stage
];

static aquariusSpawnStages as string[] = [
    stageAquariusSpawn.stage
];

function init() {
    events.onCommand(function(event as crafttweaker.event.CommandEvent){
        //----------------------------------------------------------------------
        //  Credits for Riernar for finding this workaround with the /me command
        //  and the example code for the commands
        //  https://github.com/CraftTweaker/CraftTweaker-Documentation/pull/209/commits/e9c8f5b9ae9d484b40b2c13f037a2d1b373f1d75
        //
        //  Creates commands for users and admins for the pack.
        //----------------------------------------------------------------------

        val cmd = event.command;
        val params = event.parameters;
        
        //Do not react on invalid or empty commands
        if (isNull(cmd) || cmd.name != "me" || params.length == 0) {
            return;
        }
        
        if (params[0] == "astrocraft" && event.commandSender instanceof IPlayer) {
            val player as IPlayer = event.commandSender;
            //Help info
            if (params.length < 2 || params[1] == "help") {
                player.sendChat("------------------------------------");
                player.sendChat("Custom commands for the pack. Usage:");
                player.sendChat("- /me astrocraft startworld <world>");
                player.sendChat("- /me astrocraft admin resetWorldOption <world> <player> <pos x> <pos z>");
                
                event.cancel(); //cancel the command since we handled it
                return;
            }
            //Help for startworlds
            if (params[1] == "startworld") {
                if (params.length < 3) {
                    player.sendChat("Valid worlds:");
                    player.sendChat(" - Glacidus");
                    player.sendChat(" - Aquarius-66B");
                    
                    event.cancel(); //cancel the command since we handled it
                    return;
                }
                if (params[2] == "Glacidus") {
                    if player.data.firstJoin == 1 {
                        for stage in glacidusSpawnStages { 
                            player.addGameStage(stage);
                        }
                        server.commandManager.executeCommand(server, "#preview none");
                        server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + player.x + " -z " + player.z );
                        server.commandManager.executeCommand(server, "tpj " + player.name + " 4 " + player.x + 3 + " 81 " + player.z + 3);
                        server.commandManager.executeCommand(server, "clear " + player.name);
                        
                        //Spawn items
                        var startingItems as IItemStack[][string] = scripts.initialScripts.initialInventory.initialInventory.startingItems; 
                        for item in startingItems['{"Topography-Preset":"Glacidus"}'] {
                            player.give(item);
                        }
                        event.cancel(); //cancel the command since we handled it
                        return;
                    }
                    else {
                        player.sendChat("Ask an admin to change your spawn area, this is done so you cannot accidentally reset your base");
                        
                        event.cancel(); //cancel the command since we handled it
                        return;
                    }
                }
                if (params[2] == "Aquarius-66B") {
                    if player.data.firstJoin == 1 {
                        for stage in aquariusSpawnStages {
                            player.addGameStage(stage);
                        }
                        server.commandManager.executeCommand(server, "#preview none");
                        server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + player.x + " -z " + player.z );
                        server.commandManager.executeCommand(server, "tpj " + player.name + " 5 " + player.x + " 90 " + player.z);
                        server.commandManager.executeCommand(server, "clear " + player.name);
                        
                        event.cancel(); //cancel the command since we handled it
                        return;
                    }
                    else {
                        player.sendChat("Ask an admin to change your spawn area, this is done so you cannot accidentally reset your base");
                            
                        event.cancel(); //cancel the command since we handled it
                        return;
                    }                    
                }

                else {
                    player.sendChat("Valid worlds:");
                    player.sendChat(" - Glacidus");
                    player.sendChat(" - Aquarius-66B");
                    
                    event.cancel(); //cancel the command since we handled it
                    return;
                }
            }

            
            //Admin settings
            if (params.length > 1 && params[1] == "admin") {
                if (server.isOp(player)) {
                    if (params.length < 3) {
                        player.sendChat("Parameters:");
                        player.sendChat(" - resetWorldOption <world> <player> <pos x> <pos z> --- Reset starting world of player");

                        event.cancel(); //cancel the command since we handled it
                        return;
                    }
                    if (params[2] == "resetWorldOption") {
                        if (params.length < 4) {
                            player.sendChat("Parameters for resetWorldOption <world> <player> <pos x> <pos z>:");
                            player.sendChat("<world>");
                            player.sendChat(" - Glacidus");
                            player.sendChat(" - Aquarius-66B");
                            player.sendChat("<player");
                            player.sendChat(" - Type full player name");
                            player.sendChat("<pos x> & <pos z>");
                            player.sendChat(" - Go to the dimension with /tpj #dimNum <coords> and manually pick coordinates where player needs to spawn");
                            
                            event.cancel(); //cancel the command since we handled it
                            return;
                        }
                        if (params[3] == "Glacidus" && params.length == 7) {
                            val tpPlayer as string = params[4];
                            var posX as string = params[5];
                            var posZ as string = params[6];
                            
                            for stage in glacidusSpawnStages { 
                                player.addGameStage(stage);
                            }
                            server.commandManager.executeCommand(server, "#preview none");
                            server.commandManager.executeCommand(server, "#gen glacidusSpawn1 -d 4 -x " + posX + " -z " + posZ);
                            server.commandManager.executeCommand(server, "tpj " + tpPlayer + " 4 " + posX + 3 + " 90 " + posZ + 3);
                            server.commandManager.executeCommand(server, "clear " + tpPlayer);
                            
                            event.cancel(); //cancel the command since we handled it
                            return;
                        }
                        if (params[3] == "Aquarius-66B" && params.length == 7) {
                            val tpPlayer as string = params[4];
                            var posX as string = params[5];
                            var posZ as string = params[6];

                            for stage in aquariusSpawnStages {
                                player.addGameStage(stage);
                            }
                            server.commandManager.executeCommand(server, "#preview none");
                            server.commandManager.executeCommand(server, "#gen aquariusSpawn1 -d 5 -x " + player.x + " -z " + player.z );
                            server.commandManager.executeCommand(server, "tpj " + player.name + " 5 " + player.x + " 90 " + player.z);
                            server.commandManager.executeCommand(server, "clear " + player.name);
                            
                            event.cancel(); //cancel the command since we handled it
                            return;           
                        }
                        else {
                            player.sendChat("Parameters for resetWorldOption <world> <player> <pos x> <pos z>:");
                            player.sendChat("<world>");
                            player.sendChat(" - Glacidus");
                            player.sendChat(" - Aquarius-66B");
                            player.sendChat("<player");
                            player.sendChat(" - Type full player name");
                            player.sendChat("<pos x> & <pos z>");
                            player.sendChat(" - Go to the dimension with /tpj <dimNumber> <coords> and manually pick coordinates where player needs to spawn");
                            
                            event.cancel(); //cancel the command since we handled it
                            return;
                        }
                    }
                    else {
                        player.sendChat("Parameters:");
                        player.sendChat(" - resetWorldOption <world> <player> <pos x> <pos z> --- Reset starting world of player");

                        event.cancel(); //cancel the command since we handled it
                        return;
                    }
                }
                if (params.length > 1 && params[1] == "admin" && !(server.isOp(player))) {
                    player.sendChat("You need OP permissions/cheat mode");
                    
                    event.cancel(); //cancel the command since we handled it
                    return;
                }
            }
            else {
                player.sendChat("------------------------------------");
                player.sendChat("Custom commands for the pack. Usage:");
                player.sendChat("- /me astrocraft startworld <world>");
                player.sendChat("- /me astrocraft admin resetWorldOption <world> <player> <pos x> <pos z>");
                
                event.cancel(); //cancel the command since we handled it
            }
        }
    });
}