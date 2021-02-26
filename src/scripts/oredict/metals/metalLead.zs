import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.formatting.IFormattedText;


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
	<ore:ingotLeadTier1>: [
		<erebus:materials:44>
	],
	<ore:ingotLeadTier2>: [
		<techguns:itemshared:82>
	],
	<ore:ingotLeadTier3>: [
		<exnihilocreatio:item_ore_lead:3>
	],

	/*	
	--------------
	Lead Nugget.
	--------------
	*/
	<ore:nuggetLeadTier1>: [
		<thaumcraft:nugget:4>,
		<tconstruct:shard>.withTag({Material: "lead"})
	],
	<ore:nuggetLeadTier2>: [
		<techguns:itemshared:87>
	],
	<ore:nuggetLeadTier3>: [
		<immersiveengineering:metal:22>
	],

	/*	
	------------
	Lead Clumps.
	------------
	*/
	<ore:clumpLeadTier1>: [
		<mekanism:clump:6>
	],		
	
	/*
	------------
	Lead Dusts.
	------------
	*/
	<ore:dustLeadTier1>: [
		<mekanism:dirtydust:6>
	],
	<ore:dustLeadTier2>: [
		<exnihilocreatio:item_ore_lead:2>
	],

	/*	
	-------------
	Lead Gears.
	-------------
	*/
	<ore:gearLeadTier1>: [
		<thermalfoundation:material:259>
	],

	/*	
	--------------
	Lead Plates.
	--------------
	*/
	<ore:plateLeadTier1>: [
		<techguns:itemshared:52>
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
	<thermalfoundation:material:259>: "item.thermalfoundation.material.gearLead.name",
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
	<ore:ingotLeadTier1To3>: [
		<ore:ingotLeadTier1>,
		<ore:ingotLeadTier2>,
		<ore:ingotLeadTier3>
	],
	<ore:ingotLeadTier2To3>: [
		<ore:ingotLeadTier2>,
		<ore:ingotLeadTier3>

	],

	/*	
	--------------
	Lead Nuggets.
	--------------
	*/
	<ore:nuggetLeadTier1To3>: [
		<ore:nuggetLeadTier1>,
		<ore:nuggetLeadTier2>,
		<ore:nuggetLeadTier3>
	],
	<ore:nuggetLeadTier2To3>: [
		<ore:nuggetLeadTier2>,
		<ore:nuggetLeadTier3>

	],

	/*	
	--------------
	Lead Dusts.
	--------------
	*/
	<ore:dustLeadTier1To2>: [
		<ore:dustLeadTier1>,
		<ore:dustLeadTier2>

	],
	
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
static mirror as IOreDictEntry[IOreDictEntry] = {
	<ore:blockLeadTier1To3>: 	<ore:blockLead>,
	<ore:dustLeadTier1To2>: 	<ore:dustLead>,
	<ore:ingotLeadTier1To3>: 	<ore:ingotLead>,
	<ore:gearLeadTier1>: 		<ore:gearLead>,
	<ore:nuggetLeadTier1To3>: 	<ore:nuggetLead>,
	<ore:plateLeadTier1To3>: 	<ore:plateLead>	
};

function init() {
	oredictBuilder.create(createItemsToOredict);
	tooltipGen.oredictIterator(createItemsToOredict, unlocalizedNames, extraTooltips);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.mirror(mirror);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
}