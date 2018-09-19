#priority 9000
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;

zenClass blockDrop {
	zenConstructor() {}

	function weighted(map as float[IItemStack][string]) {
		events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
			var blockId = event.block.definition.id;
			blockId += ":" ~ event.block.meta;
			if (event.silkTouch) {}
			else {
				if (!isNull(map[blockId])) {
					event.drops = null;
					for drop, dropchance in map[blockId] {
						event.drops += drop;
						event.dropChance = dropchance;
					}
				}
			}
		});
	}
}