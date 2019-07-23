import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the factorytech temperer using the factorytech wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	[IItemStack] is the item that need to be outputted by the temperer input item.
	second [IItemStack] is the input item.
	float is the length in seconds until transformation is completed.
	----------------------------------------------------------------------------------------------
*/	


static tempererAdd as int[IItemStack][IItemStack] = { 
	//Profession Stage 1
	<enderutilities:storage_0:7>: {
		<factorytech:crate:0>: 80
	},
	<factorytech:machinepart:12>: {
		<factorytech:machinepart:11>: 14
	},
	<factorytech:machinepart:22>: {
		<factorytech:machinepart:21>: 20
	},
	<factorytech:machinepart:72>: {
		<factorytech:machinepart:71>: 12
	},
	<skyresources:ironcuttingknife:0>: {
		<actuallyadditions:item_knife:0>: 16
	}	

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static tempererRemove as IItemStack[] = [
	<factorytech:ingot:4>,
	<factorytech:machinepart:4>,
	<factorytech:machinepart:14>,
	<factorytech:machinepart:73>,
	<factorytech:machinepart:33>,
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	facTech.tempererRemove(tempererRemove);
	facTech.tempererAdd(tempererAdd);
}