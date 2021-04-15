import crafttweaker.event.IEventCancelable;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IRayTraceResult;

/*	
	----------------------------------------------------------------------------------------------
	Block the interaction with inventories while wearing a specific item in the chest slot.
    You can also set the allowed inventories 

	Inputs:
    blockedInventoryItems: Which chest armor pieces may not be worn at the space station while
                           interacting with machines on an space station.
    allowedBlocks:         Array of the IItemstacks that belong with the blocks
    blockedItems:          Items that may not be placed while wearing the armor
	----------------------------------------------------------------------------------------------
*/	
static blockedInventoryItems as IItemStack[] = [
    <advancedrocketry:spacechestplate>
];

static allowedblocks as IItemStack[] = [
    <minecraft:chest>
];

static blockedItems as IItemStack[] = [
    <minecraft:stone>
];

function init() {
    events.onPlayerInteractBlock(function (event as PlayerInteractBlockEvent) {
        if event.player.getDimension() == -2 {
            var inventoryItem = event.player.getInventoryStack(38);
            var offHandItem = event.player.getInventoryStack(40);
            var handItem = event.player.currentItem;
            var worldBlockAsItem = event.world.getPickedBlock(event.position, event.player.getRayTrace(4, 0), event.player);

            for blockItem in blockedInventoryItems {
                if isNull(inventoryItem){
                    return;
                }  
                if (blockItem.definition.id ~ ":" ~ blockItem.metadata == inventoryItem.definition.id ~ ":" ~ inventoryItem.metadata) {
                    if !isNull(worldBlockAsItem) {
                        for allowBlock in allowedblocks {
                            if (allowBlock.definition.id ~ ":" ~ allowBlock.metadata == worldBlockAsItem.definition.id ~ ":" ~ worldBlockAsItem.metadata) {
                                return;
                            }
                        }
                    }
                    for blockedItem in blockedItems {
                        if !isNull(handItem) {
                            if (blockedItem.definition.id ~ ":" ~ blockedItem.metadata == handItem.definition.id ~ ":" ~ handItem.metadata) {
                                event.useItem = "DENY";
                                break;
                            }
                        }
                        if !isNull(offHandItem) && isNull(handItem) {
                            if (blockedItem.definition.id ~ ":" ~ blockedItem.metadata == offHandItem.definition.id ~ ":" ~ offHandItem.metadata) {
                                event.useItem = "DENY";
                                break;
                            }
                        }
                    }
                    event.useBlock = "DENY";
                }
            }
        }
    });
}