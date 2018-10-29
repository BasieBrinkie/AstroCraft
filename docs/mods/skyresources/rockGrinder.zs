import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the  skyresources2 rockgrinder using the skyresources wrapper
	possible actions: 
	- add new drops.
	- remove existing drops.

	Add method:
	First [IItemStack] is the output item.
	Second [IItemStack] is the input item.
	float is the drop chance. 
	----------------------------------------------------------------------------------------------
*/	


static rockGrinderAdd as float[IItemStack][IItemStack] = {
	<exnihilocreatio:item_ore_iron:0>: {
		<minecraft:iron_ore:0>: 0.5
	}
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static rockGrinderRemove as IItemStack[] = [
	<minecraft:gravel:0>,
	<minecraft:sand:0>,
	<minecraft:flint:0>,
	<skyresources:techitemcomponent:0>,
	<skyresources:techitemcomponent:3>,
	<skyresources:techitemcomponent:5>,
	<skyresources:dirtygem:0>,
	<skyresources:dirtygem:1>,
	<skyresources:dirtygem:2>,
	<skyresources:dirtygem:3>,
	<skyresources:dirtygem:4>,
	<skyresources:dirtygem:8>,
	<skyresources:dirtygem:17>,
	<skyresources:dirtygem:39>,
	<skyresources:dirtygem:40>,
	<skyresources:dirtygem:41>,
	<skyresources:dirtygem:42>,
	<skyresources:dirtygem:43>,

];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.rockGrinderRemoveRecipe(rockGrinderRemove);
	skyRes.rockGrinderAddRecipe(rockGrinderAdd);
}