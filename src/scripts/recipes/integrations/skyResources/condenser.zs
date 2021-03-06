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
	int is the ticks per amount of input item, here 400 ticks requires roughly one second
	----------------------------------------------------------------------------------------------
*/	


static condenserAdd as int[ILiquidStack][IItemStack][IItemStack] = {
	//Asteroids Advanced Resources
	<mekanism:basicblock:5>: {
		<thermalfoundation:material:802>: {
			<liquid:iron>: 1296
		}
	},
	<thermalfoundation:material:135> * 2: {
		<minecraft:iron_nugget:0> * 2: {
			<liquid:iridium>: 4000
		}
	},
	
	//Rocket Builder
	<libvulpes:productnugget:9>: {
		<exnihilocreatio:item_ore_aluminum:0>: {
			<liquid:preheated_water>: 150
		}
	},
	<mekanism:clump:6>: {
		<exnihilocreatio:item_pebble:0>: {
			<liquid:lead>: 840
		}
	},
	
};

/*	
	----------------------------------------------------------------------------------------------
	Remove method:
	Add all recipes that you want to remove in an IItemStack array by output items.
	----------------------------------------------------------------------------------------------
*/	

static condenserRemove as IItemStack[] = [
	<alchemistry:ingot:30>,
	<alchemistry:ingot:74>,
	<alchemistry:ingot:92>,
	<draconicevolution:draconium_ingot:0>,
	<draconicevolution:draconium_ore:2>,
	<erebus:materials:44>,
	<exnihilocreatio:item_ore_copper:3>,
	<libvulpes:ore0:8>,
	<libvulpes:productingot:7>,
	<libvulpes:productingot:9>,
	<magneticraft:ores:3>,
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
	<railcraft:ore_metal:0>,
	<railcraft:ore_metal:1>,
	<railcraft:ore_metal:2>,
	<railcraft:ore_metal:3>,
	<railcraft:ore_metal:4>,
	<railcraft:ore_metal:5>,
	<railcraft:ingot:2>,
	<railcraft:ingot:4>,
	<railcraft:ingot:8>,
	<qmd:ingot:0>,
	<qmd:ingot:3>,
	<qmd:ingot:4>,
	<qmd:ingot:8>,
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