import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the exNihiloCreatio heat sources
	possible actions: 
	- add new recipes.
	- remove all existing recipes.

	Add method:
	[IItemStack] is the item underneath the crucible.
	int is haet level/multiplier. 
	----------------------------------------------------------------------------------------------
*/	


static heatAdd as int[IItemStack] = { 

};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	enc.heatRemoveAll();
	enc.heatAdd(heatAdd);
}