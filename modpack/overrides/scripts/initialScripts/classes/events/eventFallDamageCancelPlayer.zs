import crafttweaker.event.EntityLivingFallEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.IEntityEvent;
import crafttweaker.event.ILivingEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntity;

/*	
	----------------------------------------------------------------------------------------------
	Some planets with low gravity should not have fall damage. Specify in the whitelist which
    dimensions should have no fall damage.

	Inputs:
    fallDamageDimenionWhitelist: dimension ID (int)
	----------------------------------------------------------------------------------------------
*/	
static fallDamageDimensionWhitelist as int[] = [
    0
];

function init() {
    events.onEntityLivingFall(function(event as crafttweaker.event.EntityLivingFallEvent){
        if fallDamageDimensionWhitelist in event.entity.getDimension() { 
            event.cancel();
        }
    });
}