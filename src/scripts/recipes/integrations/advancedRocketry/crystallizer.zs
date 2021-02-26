import crafttweaker.item.IItemStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the advancedRocketry crystallizer using the advancedRocketry wrapper
	possible actions: 
	- add new recipes.
    - Remove all default recipes.

	Add method:
	First [IItemStack] is output.
    Second [IItemStack[]] is input item array.
	First int is power in rf/tick.
    Second int is time in ticks.
	----------------------------------------------------------------------------------------------
*/	

static crystallizerAdd as int[int][IItemStack[]][IItemStack] = { 
};

function init() {
	advRock.crystallizerRemoveAll();
	advRock.crystallizerAdd(crystallizerAdd);
}