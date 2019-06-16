import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 combustion using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [ILiquidStack] is the output liquid.
	Second IItemStack is the input item. 
	----------------------------------------------------------------------------------------------
*/	


static crucibleAdd as IItemStack[ILiquidStack] = {
	
	/*	
		---------------------------------------------
		Stage: 1 - Basic Resources
		---------------------------------------------
	*/	
	<liquid:iron> * 100: <mekanism:dirtydust:0>,
	<liquid:iridium> * 100: <skyresources:orealchdust:17>,
	<liquid:lead> * 200: <exnihilocreatio:item_ore_lead:0>,
	<liquid:nickel> * 100: <factorytech:ore_dust:5>,
	<liquid:oxygen> * 50: <skyresources:alchemyitemcomponent:1>,
	<liquid:preheated_water> * 250: <minecraft:packed_ice:0> 
	
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all recipes that you want to remove in an ILiquidStack array.
	----------------------------------------------------------------------------------------------
*/	

static crucibleRemove as ILiquidStack[] = [
	<liquid:srcrystalfluid>,
	<liquid:lava>

];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.crucibleRemoveRecipe(crucibleRemove);
	skyRes.crucibleAddRecipe(crucibleAdd);
}