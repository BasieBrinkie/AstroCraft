import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the skyresources2 condenser using the skyresources wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is the output item.
	Second [IItemStack] is the input item.
	[ILiquidStack] is the liquid that will be absorbed.
	int is the amount of ticks it will take 
	----------------------------------------------------------------------------------------------
*/	


static condenserAdd as int[ILiquidStack][IItemStack][IItemStack] = {
	
	/*	
		---------------------------------------------
		Stage: 1 - Basic Resources
		---------------------------------------------
	*/	
	
	<libvulpes:productnugget:9>: {
		<exnihilocreatio:item_ore_aluminum:0>: {
			<liquid:preheated_water>: 400
		}
	},
	<mekanism:clump:6>: {
		<exnihilocreatio:item_pebble:0>: {
			<liquid:lead>: 840
		}
	},
	<minecraft:paper:0>: {
		<mekanism:sawdust:0>: {
			<liquid:preheated_water>: 300
		}
	}
	
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all recipes that you want to remove in an IItemStack array by output items.
	----------------------------------------------------------------------------------------------
*/	

static condenserRemove as IItemStack[] = [
	<alchemistry:ingot:74>,
	<draconicevolution:draconium_ingot:0>,
	<draconicevolution:draconium_ore:2>,
	<erebus:materials:44>,
	<exnihilocreatio:item_ore_copper:3>,
	<libvulpes:ore0:8>,
	<libvulpes:productingot:7>,
	<libvulpes:productingot:9>,
	<mekanism:ingot:1>,
	<mekanism:oreblock:0>,
	<minecraft:iron_ingot:0>,
	<minecraft:iron_ore:0>,
	<minecraft:gold_ingot:0>,
	<minecraft:gold_ore:0>,
	<nuclearcraft:ingot:3>,
	<nuclearcraft:ingot:4>,
	<nuclearcraft:ingot:5>,
	<nuclearcraft:ingot:6>,
	<nuclearcraft:ingot:7>,
	<nuclearcraft:ore:3>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:ore:5>,
	<nuclearcraft:ore:6>,
	<nuclearcraft:ore:7>,
	<tconstruct:ingots:0>,
	<tconstruct:ingots:1>,
	<tconstruct:ore:0>,
	<tconstruct:ore:1>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:135>,
	<thermalfoundation:material:136>,
	<thermalfoundation:ore:0>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:ore:2>,
	<thermalfoundation:ore:3>,
	<thermalfoundation:ore:4>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:ore:6>,
	<thermalfoundation:ore:7>,
	<thermalfoundation:ore:8>,
];

/*	
	-------------------------------------------------------
	Init function that has to be called in postInit script.
	-------------------------------------------------------
*/

function init() {
	skyRes.condenserRemoveRecipe(condenserRemove);
	skyRes.condenserAddRecipe(condenserAdd);
}