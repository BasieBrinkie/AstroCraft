import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the  skyresources2 rockgrinder using the skyresources wrapper
	possible actions: 
	- add new drops.
	- remove existing drops.

	Add method:
	First [IItemStack] is the output item.
	Second IItemStack is the input item.
	----------------------------------------------------------------------------------------------
*/	


static cuttingKnifeAdd as IItemStack[IItemStack] = {
	<minecraft:stick:0> * 2: <minecraft:planks:0>,
	<minecraft:stick:0> * 2: <minecraft:planks:1>,
	<minecraft:stick:0> * 2: <minecraft:planks:2>,
	<minecraft:stick:0> * 2: <minecraft:planks:3>,
	<minecraft:stick:0> * 2: <minecraft:planks:4>,
	<minecraft:stick:0> * 2: <minecraft:planks:5>
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static cuttingKnifeRemove as IItemStack[] = [
	<minecraft:melon:0>,
	<minecraft:planks:0>,
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:4>,
	<minecraft:planks:5>,
	<minecraft:stick:0>,
	<skyresources:cactusfruit:0>,
	<skyresources:petrifiedplanks:0>
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.cuttingKnifeRemoveRecipe(cuttingKnifeRemove);
	skyRes.cuttingKnifeAddRecipe(cuttingKnifeAdd);
}