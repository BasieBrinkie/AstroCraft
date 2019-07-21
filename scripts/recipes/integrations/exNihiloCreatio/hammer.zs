import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the exNihiloCreatio hammer
	possible actions: 
	- add new recipes.
	- remove all existing recipes.

	Add method:
	[IItemStack] is the output item of the hammer.
	[IIngredient] is the input block.
	int is mining level required for the conversion. 
	----------------------------------------------------------------------------------------------
*/	


static hammerAdd as int[IIngredient][IItemStack] = { 
	//Oxygen One
	<minecraft:stone_slab:3>: { 
		<minecraft:cobblestone:0>: 0   
	},
	<minecraft:wooden_slab:0>: {
		<minecraft:planks:0>: 0
	},
	<minecraft:gravel:0>: {
		<minecraft:stone:0>: 1
	}
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	enc.hammerRemoveAll();
	enc.hammerAdd(hammerAdd);
}