import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the exNihiloCreatio sieve
	possible actions: 
	- add new recipes.
	- remove all existing recipes.

	Add method:
	[IItemStack] is the output item of the hammer.
	[IIngredient] is the input block.
	int is mining level required for the conversion. 
	----------------------------------------------------------------------------------------------
*/	


static sieveAdd as IItemStack[][float][IIngredient][int] = { 
	0: {
		//Oxygen One
		<ore:normalDirt>: {
			0.05: [<minecraft:wheat_seeds:0>],
			0.3: [<actuallyadditions:item_worm:0>],
			0.95: [<minecraft:dirt:0>]
		},
		<ore:gravel>: {
			0.05: [<exnihilocreatio:item_ore_copper:1>],
			0.3: [<exnihilocreatio:item_ore_copper:0>],
			0.5: [<exnihilocreatio:item_ore_copper:0>],
			0.8: [<exnihilocreatio:item_ore_copper:0>],
		},
		
		//Advanced Resources
		<ore:sand>: {
			0.33: [<minecraft:glowstone_dust:0>],
			0.65: [<minecraft:sand:0>]
		} 
	},
	2: {
		//Oxygen Extractor
		<ore:normalDirt>: {
			0.02: [<minecraft:wheat_seeds:0>],
			0.1: [<actuallyadditions:item_worm:0>],
			0.72: [<thebetweenlands:fallen_leaves:0>],
			0.2: [<thebetweenlands:fallen_leaves:0>],
		}
	},
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	enc.sieveRemoveAll();
	enc.sieveAdd(sieveAdd);
}