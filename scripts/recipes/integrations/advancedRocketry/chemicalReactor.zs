import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the advancedRocketry chemicalReactor using the advancedRocketry wrapper
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

static chemicalReactorAddLiquid as int[int][IIngredient[]][ILiquidStack] = { 
};

static chemicalReactorAddItem as int[int][IIngredient[]][IItemStack] = { 
};

function init() {
	advRock.chemicalReactorRemoveAll();
	advRock.chemicalReactorAddLiquid(chemicalReactorAddLiquid);
    advRock.chemicalReactorAddItem(chemicalReactorAddItem);
}