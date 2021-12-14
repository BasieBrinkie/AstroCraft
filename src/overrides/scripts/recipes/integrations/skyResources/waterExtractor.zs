import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 waterExtractor using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] output when injected with water.
    Second [IItemStack] is input item.
	int is the amount of water needed in the extractor in mB
	----------------------------------------------------------------------------------------------
*/	


static waterExtractorInsertAdd as int[IItemStack][IItemStack] = { 
	//Decorator
	<minecraft:clay:0>: {
		<minecraft:sand:0>: 100 
	},

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an IItemStack array.
	NOTE: It removes all items by output item.
	----------------------------------------------------------------------------------------------
*/	

static waterExtractorInsertRemove as IItemStack[] = [
    <minecraft:cactus:0>,
    <minecraft:clay:0>
];

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 waterExtractor using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] output when extracted with water.
    Second [IItemStack] is input item.
	int is the amount of water extracted in mB
	----------------------------------------------------------------------------------------------
*/	


static waterExtractorExtractAdd as int[IItemStack][IItemStack] = { 
	//Decorator
	<minecraft:clay:0>: {
		<minecraft:sand:0>: 100 
	},

};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all items that you want to remove in an int[IIngredient][IItemStack] array.
	IItemStack is outputItem
    IIngredient is input Item
    int is amount of water
	----------------------------------------------------------------------------------------------
*/	

static waterExtractorExtractRemove as int[IIngredient][IItemStack] = {
    null: {
       <minecraft:snow:0>: 50
    },
    <skyresources:drycactus:0>: {
        <minecraft:cactus:0>: 50
    }
};

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.waterExtractorInsertRemove(waterExtractorInsertRemove);
	skyRes.waterExtractorInsertAdd(waterExtractorInsertAdd);
    skyRes.waterExtractorExtractRemove(waterExtractorExtractRemove);
	skyRes.waterExtractorExtractAdd(waterExtractorExtractAdd);
}