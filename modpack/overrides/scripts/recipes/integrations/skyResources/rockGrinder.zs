import crafttweaker.item.IItemStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 rockgrinder using the skyresources wrapper
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
	//Asteroids Basic Resources
	<exnihilocreatio:item_ore_iron:1>: {
		<minecraft:iron_ore:0>: 1.0
	},

	//Rocket Builder
	<exnihilocreatio:item_ore_aluminum:1>: {
		<thermalfoundation:ore:4>: 1.0
	},
	<exnihilocreatio:item_ore_lead:1>: {
		<thermalfoundation:ore:3>: 0.66
	},
	<exnihilocreatio:item_ore_nickel:1>: {
		<thermalfoundation:ore:5>: 1.0
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
	<skyresources:baseitemcomponent:5>,
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
	<skyresources:techitemcomponent:0>,
	<skyresources:techitemcomponent:3>,
	<skyresources:techitemcomponent:5>
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