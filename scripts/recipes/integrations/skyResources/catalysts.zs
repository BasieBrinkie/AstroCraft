#priority 1
import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 catalysts using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack[]] is the array with all items that need to become a catalyst.
	float is the amount it adds. (consistent with usage in alchemical fusion) 
	----------------------------------------------------------------------------------------------
*/	


static catalystAdd as float[IItemStack[]] = { [
	<mekanism:clump:3>]: 1.00
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static catalystRemove as IItemStack[] = [
	<skyresources:alchemyitemcomponent:2>,
	<skyresources:alchemyitemcomponent:3>,
	<skyresources:alchemyitemcomponent:4>,
	<skyresources:alchemyitemcomponent:5>
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.catalystRemoveRecipe(catalystRemove);
	skyRes.catalystAddRecipe(catalystAdd);
}