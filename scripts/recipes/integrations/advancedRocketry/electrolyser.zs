import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the advancedRocketry electrolyser using the advancedRocketry wrapper
	possible actions: 
	- add new recipes.
    - Remove all default recipes.

	Add method:
	First [ILiquidStack[]] is output liquid array with 2 entries or null it.
    Second [ILiquidStack] is input liquid.
	First int is power in rf/tick.
    Second int is time in ticks.
	----------------------------------------------------------------------------------------------
*/	

static electrolyserAdd as int[int][ILiquidStack][ILiquidStack[]] = { 
};

function init() {
	advRock.electrolyserRemoveAll();
	advRock.electrolyserAdd(electrolyserAdd);
}