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
	NOTE4: Some blocks have multiple meta's per orientation
	--------------------------------------------------------------------------------
*/
static normalDrops as IItemStack[][string] = {
	//Advanced Rocketry
	"advancedrocketry:charcoallog": [
		<advancedrocketry:charcoallog>
	],
	"advancedrocketry:charcoallog:4": [
		<advancedrocketry:charcoallog>
	],
	"advancedrocketry:charcoallog:8": [
		<advancedrocketry:charcoallog>
	],
	//Minecraft
	"minecraft:wool": [
		<minecraft:string:0>
	]
};

/* 	--------------------------------------------------------------------------------
	Just like the normalDrops list but now accepts an fortune multiplier.
	The itemdrops are a static amount of drops
	NOTE: Set the fortune multiplier > 0.
	NOTE2: Some blocks have multiple meta's per orientation.
	--------------------------------------------------------------------------------
*/
static normalFortuneDrops as IItemStack[][string][int] = {
	1: {	
		//Minecraft
		"minecraft:log": [
			<minecraft:planks:0> * 2
		],
		"minecraft:log:4": [
			<minecraft:planks:0> * 2
		],
		"minecraft:log:8": [
			<minecraft:planks:0> * 2
		],
		"minecraft:iron_ore": [
			<minecraft:iron_ore:0>
		],
		"minecraft:packed_ice": [
			<minecraft:packed_ice:0>
		]
	}
};

/*	---------------------------------------------------------------
	Items will only drop for a set chance.
	If you desire you can add multiple items per drop.
	NOTE: You can't have multiple drops with different dropchances.
	NOTE2: Set the dropchance between 0.000 and 1.000.
	NOTE3: Some blocks have multiple meta's per orientation.
	---------------------------------------------------------------
*/
static weightedDrops as IItemStack[][string][float] = {
};

/*	---------------------------------------------------------------
	Items will only drop for a set chance.
	If you desire you can add multiple items per drop.
	NOTE: You can't have multiple drops with different dropchances.
	NOTE2: Set the dropchance between 0.000 and 1.000.
	NOTE3: Some blocks have multiple meta's per orientation.
	---------------------------------------------------------------
*/
static weightedFortuneDrops as IItemStack[][string][float][int] = {
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
