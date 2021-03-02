import crafttweaker.item.IIngredient;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.player.IPlayer;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

//Stages that need to be granted when entering the dim and taken away when leaving.
static dimensionGamestageRules as string[][int] = {
    //Space Station
    3: [ 
        planetAsteroids1.stage,

    ],
    //Glacidus
    84: [
        planetGlacidusStockFarmer.stage,
    ]
};

function init() {
    events.onPlayerChangedDimension(function (event as PlayerChangedDimensionEvent) {
        for dimensionRuleID, stageArray in dimensionGamestageRules {
            if dimensionRuleID == event.to {
                for stage in stageArray {
                    if event.player.hasGameStage(stage ~ "_dimlock") {
                        event.player.addGameStage(stage);
                        event.player.removeGameStage(stage ~ "_dimlock");
                    }
                }
            }
            if dimensionRuleID == event.from {
                for stage in stageArray {
                    if event.player.hasGameStage(stage) {
                        event.player.addGameStage(stage ~ "_dimlock");
                        event.player.removeGameStage(stage);
                    }
                }
            }
        }
    });
}