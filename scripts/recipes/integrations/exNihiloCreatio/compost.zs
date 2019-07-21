import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the exNihiloCreatio barrel specifically the composting outputs
	possible actions: 
	- add new recipes.
	- remove all existing recipes.

	Add method:
	IItemStack] is the output item in the barrel (needs to be a normal block, except for 
	opaque blocks like glass).
	[IIngredient[float]] the input item with the amount it adds into the barrel.
	string is the color of the composting block. 
	----------------------------------------------------------------------------------------------
*/	


static compostAdd as string[IIngredient[float]][IItemStack] = { 
	//Oxygen One
	<minecraft:dirt:0>: {{
		0.07: <charcoal_pit:item_ash:0> * 15}: "406196"   
	},
	<minecraft:wool:0>: {{
		0.1: <exnihilocreatio:item_material:2> * 10}: "edf93e"
	},
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	enc.compostRemoveAll();
	enc.compostAdd(compostAdd);
}