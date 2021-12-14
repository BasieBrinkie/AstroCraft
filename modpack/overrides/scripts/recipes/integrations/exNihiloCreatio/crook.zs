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
	[IIngredient] is the input block. 
	[IItemStack[]] is the output items of the crook.
	float is the chance of getting the output item.
	----------------------------------------------------------------------------------------------
*/	


static crookAdd as float[IItemStack[]][][IIngredient] = { 
	//Farmer One
	<minecraft:wheat:0>: [ 
		{[<minecraft:wheat:0>]: 1.0},
		{[<minecraft:melon_seeds:0>]: 0.05},
		{[<minecraft:pumpkin_seeds:0>]: 0.05}
	]
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