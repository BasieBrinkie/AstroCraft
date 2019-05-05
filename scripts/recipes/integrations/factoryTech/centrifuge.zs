import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 alchemical fusion using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack[]] is the array with all items that need to become a catalyst.
	float is the amount it adds. (consistent with usage in alchemical fusion) 
	----------------------------------------------------------------------------------------------
*/	


static centrifugeAdd as bool[IItemStack][IItemStack[]] = { 
	[<minecraft:sand:0>, <exnihilocreatio:item_pebble:0>]: { <minecraft:gravel:0>: true } 

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static centrifugeRemove as IItemStack[IItemStack[]] = {
	
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	facTech.centrifugeRemove(centrifugeRemove);
	facTech.centrifugeAdd(centrifugeAdd);
}