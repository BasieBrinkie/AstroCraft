import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 condenser using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is the output item.
	Second [IItemStack] is the input item.
	[ILiquidStack] is the liquid that will be absorbed.
	int is the amount of ticks it will take 
	----------------------------------------------------------------------------------------------
*/	


static condenserAdd as int[ILiquidStack][IItemStack][IItemStack] = {
	
	/*	
		---------------------------------------------
		Stage: 1 - Basic Resources
		---------------------------------------------
	*/	
	
	
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all recipes that you want to remove in an IItemStack array.
	----------------------------------------------------------------------------------------------
*/	

static condenserRemove as IItemStack[] = [
	
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.condenserRemoveRecipe(condenserRemove);
	skyRes.condenserAddRecipe(condenserAdd);
}