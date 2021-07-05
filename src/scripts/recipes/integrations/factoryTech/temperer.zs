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
	float is the length in game ticks until transformation is completed.
	----------------------------------------------------------------------------------------------
*/	


static tempererAdd as int[IItemStack][IItemStack] = { 
	//Asteroids Advanced Resources
	<factorytech:machinepart:12>: {
		<factorytech:machinepart:11>: 30
	},
	<factorytech:machinepart:22>: {
		<factorytech:machinepart:21>: 20
	},
	<factorytech:machinepart:72>: {
		<factorytech:machinepart:71>: 30
	},
	<skyresources:ironcuttingknife:0>: {
		<actuallyadditions:item_knife:0>: 30
	},

	//Decorator
	<actuallyadditions:block_crystal_cluster_redstone:0>: {
		<minecraft:redstone:0>: 20
	},	

	//Oxygen Extractor
	<thebetweenlands:items_misc:2> * 2: {
		<minecraft:leaves:0>: 30
	},

	//Miner 1
	<techguns:explosive_charge:0>: {
		<minecraft:tnt:0>: 20
	},

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
	//facTech.tempererRemove(tempererRemove);
	facTech.tempererRemoveAll();
	facTech.tempererAdd(tempererAdd);
}