import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the exNihiloCreatio crook
	possible actions: 
	- add new recipes.
	- remove all existing recipes.

	Add method:
	[IItemStack] is the output item of the crook.
	[float] is the chance of getting the output item.
	IIngredient is the input block. 
	----------------------------------------------------------------------------------------------
*/	


static crookAdd as IIngredient[float][IItemStack] = { 
	//Farmer One
	<minecraft:pumpkin_seeds:0>: { 0.05:  
		<minecraft:wheat:7>
	},
	<minecraft:melon_seeds:0>: { 0.05:  
		<minecraft:wheat:7>
	},
	<minecraft:wheat:0>: { 0.05:  
		<minecraft:wheat:7>
	},

};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	enc.crookRemoveAll();
	enc.crookAdd(crookAdd);
}