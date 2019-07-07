import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the factorytech magnetic centrifuge using the factorytech
	wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	[IItemStack[]] is the item array that need to be outputted by the input ingredient.
	[IIngredient] is an input ingredient.
	bool is wether the parts can be made out of stone and still process the recipe. 
	----------------------------------------------------------------------------------------------
*/	


static magneticCentrifugeAdd as bool[IIngredient][IItemStack[]] = { 
	//Profession Stage 1
	[<mekanism:dirtydust:0>, <exnihilocreatio:item_pebble:0> * 3]: {
		<minecraft:gravel:0>: true
	},
	[<minecraft:redstone:0>, <minecraft:sand:0>]: {
		<ore:dustCopper>: true
	},
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static magneticCentrifugeRemove as IItemStack[][] = [
	[<minecraft:iron_nugget:0> * 2, <minecraft:flint:0> * 2, <factorytech:ore_dust:5> * 2],
	[<factorytech:mined_ore:4>, <minecraft:gravel:0>],
	[<minecraft:dye:4> * 2, <minecraft:redstone:0> * 6],
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	facTech.magneticCentrifugeRemove(magneticCentrifugeRemove);
	facTech.magneticCentrifugeAdd(magneticCentrifugeAdd);
}