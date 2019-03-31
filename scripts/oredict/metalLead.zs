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
	Lead Blocks.
	--------------
	*/
	<ore:blockLeadTier1>: [
		<nuclearcraft:ingot_block:2>
	],
	<ore:blockLeadTier2>: [
		<immersiveengineering:storage:2>
	],
	<ore:blockLeadTier3>: [
		<thermalfoundation:storage:3>
	],

	/*	
	--------------
	Lead Ingots.
	--------------
	*/

	/*	
	--------------
	Lead Nugget.
	--------------
	*/

		
	/*	
	-------------
	Lead Gears.
	-------------
	*/

	/*	
	--------------
	Lead Plates.
	--------------
	*/
	<ore:plateLeadTier1>: [
		<tconstruct:large_plate:0>.withTag({Material: "lead"})
	],
	<ore:plateLeadTier2>: [
		<immersiveengineering:metal:32>
	],
	<ore:plateLeadTier3>: [
		<thermalfoundation:material:323>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:storage:3>: "tile.thermalfoundation.storage.lead.name",
	<thermalfoundation:material:323>: "item.thermalfoundation.material.plateLead.name"
};

static extraTooltips as IFormattedText[][IItemStack] = {

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
	Lead Blocks.
	--------------
	*/	
	<ore:blockLeadTier1To3>: [
		<ore:blockLeadTier1>,
		<ore:blockLeadTier2>,
		<ore:blockLeadTier3>
	],
	<ore:blockLeadTier2To3>: [
		<ore:blockLeadTier2>,
		<ore:blockLeadTier3>

	],

	/*	
	--------------
	Lead Ingots.
	--------------
	*/
	
	/*	
	--------------
	Lead Plates.
	--------------
	*/
	<ore:plateLeadTier1To3>: [
		<ore:plateLeadTier1>,
		<ore:plateLeadTier2>,
		<ore:plateLeadTier3>
	],
	<ore:plateLeadTier2To3>: [
		<ore:plateLeadTier2>,
		<ore:plateLeadTier3>
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