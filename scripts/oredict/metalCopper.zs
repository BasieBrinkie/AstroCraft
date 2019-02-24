import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.formatting.IFormattedText;

import scripts.recipes.integrations.skyResources.catalysts.catalystAdd;

/*	
	-----------------------------------------
	Create new Oredicts.
	If Oredict exists it will first clear it.
	-----------------------------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = {	
	
	/*	
	--------------
	Copper Blocks.
	--------------
	*/
	<ore:blockCopperTier1>: [
		<nuclearcraft:ingot_block:0>
	],
	<ore:blockCopperTier2>: [
		<fp:erz_blocke:2>
	],
	<ore:blockCopperTier3>: [
		<mekanism:basicblock:12>
	],
	<ore:blockCopperTier4>: [
		<libvulpes:metal0:4>
	],
	<ore:blockCopperTier5>: [
		<thermalfoundation:storage:0>
	],

	/*	
	--------------
	Copper Ingots.
	--------------
	*/
	<ore:ingotCopperTier1>: [
		<exnihilocreatio:item_ore_copper:3>
	],
	<ore:ingotCopperTier2>: [
		<mekanism:ingot:5>
	],
	<ore:ingotCopperTier3>: [
		<libvulpes:productingot:4>
	],
	<ore:ingotCopperTier4>: [
		<fp:itemerze:2>
	],
	<ore:ingotCopperTier5>: [
		<thermalfoundation:material:128>
	],

	/*	
	--------------
	Copper Nugget.
	--------------
	*/
	<ore:nuggetCopperTier1>: [
		<mekanism:clump:3>,
		<abyssalcraft:crystalfragment:17>,
		<tconstruct:shard>.withTag({Material: "copper"})
	],
		
	/*	
	-------------
	Copper Gears.
	-------------
	*/

	/*	
	--------------
	Copper Plates.
	--------------
	*/
	<ore:plateCopperTier1>: [
		<libvulpes:productplate:4>
	],
	<ore:plateCopperTier2>: [
		<tconstruct:large_plate:0>.withTag({Material: "copper"})
	],
	<ore:plateCopperTier3>: [
		<techguns:itemshared:47>
	],
	<ore:plateCopperTier4>: [
		<immersiveengineering:metal:30>
	],
	<ore:plateCopperTier5>: [
		<thermalfoundation:material:320>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:storage:0>: "tile.thermalfoundation.storage.copper.name",
	<thermalfoundation:material:128>: "item.thermalfoundation.material.plateCopper.name"
};

static extraTooltips as IFormattedText[][IItemStack] = {
	<mekanism:clump:3>: [skyRes.catalystYield(catalystAdd, <mekanism:clump:3>)]
};

/*	
	------------------------------------------------
	Create new Oredicts.
	Add existing Oredicts to 1 Oredict.
	If master Oredict exists it will first clear it.
	------------------------------------------------
*/
static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	/*	
	--------------
	Copper Blocks.
	--------------
	*/	
	<ore:blockCopperTier1To5>: [
		<ore:blockCopperTier1>,
		<ore:blockCopperTier2>,
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
	<ore:blockCopperTier2To5>: [
		<ore:blockCopperTier2>,
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
		<ore:blockCopperTier3To5>: [
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
	<ore:blockCopperTier4To5>: [
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],


	/*	
	--------------
	Copper Ingots.
	--------------
	*/
	<ore:ingotCopperTier1To5>: [
		<ore:ingotCopperTier1>,
		<ore:ingotCopperTier2>,
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier2To5>: [
		<ore:ingotCopperTier2>,
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier3To5>: [
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier4To5>: [
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],

	/*	
	--------------
	Copper Plates.
	--------------
	*/
	<ore:plateCopperTier1To5>: [
		<ore:plateCopperTier1>,
		<ore:plateCopperTier2>,
		<ore:plateCopperTier3>,
		<ore:plateCopperTier4>,
		<ore:plateCopperTier5>
	],
	<ore:plateCopperTier2To5>: [
		<ore:plateCopperTier2>,
		<ore:plateCopperTier3>,
		<ore:plateCopperTier4>,
		<ore:plateCopperTier5>
	],
	<ore:plateCopperTier3To5>: [
		<ore:plateCopperTier3>,
		<ore:plateCopperTier4>,
		<ore:plateCopperTier5>
	],
	<ore:plateCopperTier4To5>: [
		<ore:plateCopperTier4>,
		<ore:plateCopperTier5>
	]	
};

/*	
	----------------------
	Add Items to Oredict.
	----------------------
*/
static addItemsToOredict as IItemStack[][IOreDictEntry] = {
};

/*	
	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/
static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
};

/*	
	---------------------------
	Removes Items from Oredict.
	---------------------------
*/
static removeItemsFromOredict as IItemStack[][IOreDictEntry] = {	
};

/*	
	------------------------------------------
	Removes all Items in a Oredict by modname.	
	------------------------------------------
*/
static removeModID as IOreDictEntry[][string] = {
};

/*	
	------------------
	Mirror an Oredict.
	------------------
*/
static mirror as IOreDictEntry[][IOreDictEntry] = {	
};

function init() {
	oredictBuilder.create(createItemsToOredict);
	tooltipGen.oredictIterator(createItemsToOredict, unlocalizedNames, extraTooltips);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirror);
}