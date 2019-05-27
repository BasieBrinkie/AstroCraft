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
	[<minecraft:sand:0>, <exnihilocreatio:item_pebble:0>, <charcoal_pit:item_ash:0>]: { <minecraft:gravel:0>: true} 

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static centrifugeRemove as IItemStack[IItemStack[]] = {
	[<factorytech:ore_dust:5>, <factorytech:ore_dust:6>, null]: <factorytech:ore_dust:0>,
	[<factorytech:ore_dust:4>, <factorytech:ore_dust:7>, null]: <factorytech:ore_dust:1>,
	[<minecraft:gold_nugget:0>, <factorytech:ore_dust:8>, null]:	<factorytech:ore_dust:2>,
	[<minecraft:iron_nugget:0>, <factorytech:ore_dust:9>, null]: <factorytech:ore_dust:3>,
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:8> * 3, null]: <factorytech:ore_dust:10> * 4,
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6> * 2, null]: <factorytech:ore_dust:11>,
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6>, null]: <factorytech:mined_ore:4>,
	[<minecraft:redstone:0>, <minecraft:sand:0> * 4, null]: <minecraft:sand:0> * 4,
	[<factorytech:ore_dust:9>, <factorytech:ore_dust:6> * 2, null]: <thermalfoundation:material:98>
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	//facTech.centrifugeRemove(centrifugeRemove);
	facTech.centrifugeAdd(centrifugeAdd);
}