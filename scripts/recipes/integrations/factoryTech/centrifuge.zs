import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the factorytech centrifuge using the factorytech wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack[]] is the array with all items that need to be outputted by centrifuging the input.
	[IIngredient] is input item.
	bool is whether stone parts work with this particular recipe. 
	----------------------------------------------------------------------------------------------
*/	


static centrifugeAdd as bool[IIngredient][IItemStack[]] = { 
	//Basic Resources
	[<minecraft:sand:0>, <exnihilocreatio:item_pebble:0>, <charcoal_pit:item_ash:0>]: { <minecraft:gravel:0>: true},

	//Farmer One
	[<minecraft:dye:2>, <exnihilocreatio:item_material:4>, <actuallyadditions:item_crystal_shard:4>]: { <minecraft:wheat:0>: true},

	//Oxygen Extractor
	[<mekanism:shard:4> * 2, <minecraft:sand:0>, null]: {<thebetweenlands:compost_block:0>: true},

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static centrifugeRemove as IItemStack[][] = [
	[<factorytech:ore_dust:5>, <factorytech:ore_dust:6>, null],
	[<factorytech:ore_dust:4>, <factorytech:ore_dust:7>, null],
	[<minecraft:gold_nugget:0>, <factorytech:ore_dust:8>, null],
	[<minecraft:iron_nugget:0>, <factorytech:ore_dust:9>, null],
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:8> * 3, null],
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6> * 2, null],
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6>, null],
	[<minecraft:redstone:0>, <minecraft:sand:0> * 4, null],
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6> * 2, null]
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	facTech.centrifugeRemove(centrifugeRemove);
	facTech.centrifugeAdd(centrifugeAdd);
}