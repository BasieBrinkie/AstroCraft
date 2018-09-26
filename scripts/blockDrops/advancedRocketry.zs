#priority 1000
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;

/* 	--------------------------------------------------------------------------------
	Define all the drops per block that drop with a 100% chance.
	If you desire you can add multiple items per drop.
	NOTE: You should rename the IItemStack to a string and remove the <> brackets.
	NOTE2: You can't mix the same block entry in both normalDrops and weightedDrops.
	NOTE3: Ignores fortune
	--------------------------------------------------------------------------------
*/
static normalDrops as IItemStack[][string] = {
	"advancedrocketry:charcoallog": [
		<advancedrocketry:charcoallog>
	]
};

/* 	--------------------------------------------------------------------------------
	Just like the normalDrops list but now accepts an fortune multiplier.
	The itemdrops are a static amount of drops
	NOTE: Set the fortune multiplier > 0
	--------------------------------------------------------------------------------
*/
static normalFortuneDrops as IItemStack[][string][int] = {
};

/*	---------------------------------------------------------------
	Items will only drop for a set chance.
	If you desire you can add multiple items per drop.
	NOTE: You can't have multiple drops with different dropchances.
	NOTE2: Set the dropchance between 0.000 and 1.000. 
	---------------------------------------------------------------
*/
static weightedDrops as IItemStack[][string][float] = {
};

/*	---------------------------------------------------------------
	Items will only drop for a set chance.
	If you desire you can add multiple items per drop.
	NOTE: You can't have multiple drops with different dropchances.
	NOTE2: Set the dropchance between 0.000 and 1.000. 
	---------------------------------------------------------------
*/
<<<<<<< HEAD
static weightedFortuneDrops as IItemStack[][string][float][int] = {
=======
static weightedFortuneDrops as IItemStack[][string][float] = {
	//Set the fortune multiplier example if set to 2 fortune III gives you 8x times your set drop(s).
	2: {
		//Set the chance for getting an item
		0.8: {
			"minecraft:grass": [<minecraft:stone:0>]
		}
	}	
>>>>>>> parent of 7b57585... Got the mobDrop Scripts working!
};

/*	-------------------------------------------------------
	Event handlers for blockDrops. 
	Credit goes to Sevtech-Ages developers for the handler.
	-------------------------------------------------------
*/
function normalDrop() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}

		if (event.silkTouch) {
			return;
		}

		var hasOverride = !isNull(normalDrops[blockId]);
		if (hasOverride) {
			for i, block in normalDrops[blockId] {
				if (i == 0) {
					event.drops = block.items;
				} 
				else {
					event.drops += block;
				}
			}
		}
	});
}

function normalFortuneDrop() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}
		// Skip overrides if the block is silk touched
		if (event.silkTouch) {
			return;
		}
		
		for fortuneMultiplier, blockArray in normalFortuneDrops {
		var fortune = (event.fortuneLevel + 1) * fortuneMultiplier;
			var hasOverride = !isNull(blockArray[blockId]);
			if (hasOverride) {
				for i, block in blockArray[blockId] {	
					if (i == 0 & fortuneMultiplier > 0) {
						event.drops = (block * fortune).items;
					} 
					if (i != 0 & fortuneMultiplier > 0) {
						event.drops += (block * fortune);
					}
				}
			}
		}
	});
}

function weightedDrop() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}
		// Skip overrides if the block is silk touched
		if (event.silkTouch) {
			return;
		}

		for dropchance, blockArray in weightedDrops {
			var hasOverride = !isNull(blockArray[blockId]);
			if (hasOverride) {
				for i, itemDrop in blockArray[blockId] {
					if (i == 0) {
						event.drops = itemDrop.items;
						event.dropChance = dropchance;
					} else {
						event.drops += itemDrop;
					}
				}
			}
		}
	});
}

function weightedFortuneDrop() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}
		// Skip overrides if the block is silk touched
		if (event.silkTouch) {
			return;
		}
		
		for fortuneMultiplier, dropchanceArray in weightedFortuneDrops {
			var fortune = (event.fortuneLevel + 1) * fortuneMultiplier;
			for dropchance, blockArray in dropchanceArray {
			var hasOverride = !isNull(blockArray[blockId]);
				if (hasOverride) {
					for i, block in blockArray[blockId] {
						if (i == 0 & fortuneMultiplier > 0) {
							event.drops = (block * fortune).items;
							event.dropChance = dropchance;
						} 
						if (i != 0 & fortuneMultiplier > 0) {
							event.drops += (block * fortune);
						}
					}
				}
			}
		}
	});
}



/*	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	normalDrop();
	normalFortuneDrop();
	weightedDrop();
	weightedFortuneDrop();
}
