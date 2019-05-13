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
	Steel Blocks.
	--------------
	*/
	<ore:blockSteelTier1>: [
		<mekanism:basicblock:5>	
	],
	<ore:blockSteelTier2>: [
		<immersiveengineering:storage:8>
	],
	<ore:blockSteelTier3>: [
		<thermalfoundation:storage_alloy:0>
	],
	
	/*	
	--------------
	Steel Ingots.
	--------------
	*/
	<ore:ingotSteelTier1>: [
		<mekanism:ingot:4>
	],
	<ore:ingotSteelTier2>: [
		<techguns:itemshared:83>
	],
	<ore:ingotSteelTier3>: [
		<immersiveengineering:metal:8>
	],

	/*	
	--------------
	Steel Nuggets.
	--------------
	*/
	<ore:nuggetSteelTier1>: [
		<tconstruct:shard>.withTag({Material: "steel"}),
		<libvulpes:productnugget:6>
	],
	<ore:nuggetSteelTier2>: [
		<immersiveengineering:metal:28>
	],
	<ore:nuggetSteelTier3>: [
		<techguns:itemshared:88>
	],
	
	/*
	------------
	Steel Dusts.
	------------
	*/
	<ore:dustSteelTier1>: [
		<mekanism:dirtydust:2>
	],
	<ore:dustSteelTier2>: [
		<mekanism:otherdust:1>
	],
	
	/*	
	-------------
	Steel Gears.
	-------------
	*/
	<ore:gearSteelTier1>: [
		<thermalfoundation:material:288>
	],

	/*	
	-------------
	Steel Plates
	-------------
	*/
	<ore:plateSteelTier1>: [
		<libvulpes:productplate:6>
	],
	<ore:plateSteelTier2>: [
		<immersiveengineering:metal:38>
	],
	<ore:plateSteelTier3>: [
		<thermalfoundation:material:352>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:storage_alloy:0>: "tile.thermalfoundation.storage.steel.name",
	<thermalfoundation:material:288>: "item.thermalfoundation.material.gearSteel.name",
	<thermalfoundation:material:352>: "item.thermalfoundation.material.plateSteel.name"
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
	Steel Blocks.
	--------------
	*/	
	<ore:blockSteelTier1To3>: [
		<ore:blockSteelTier1>,
		<ore:blockSteelTier2>,
		<ore:blockSteelTier3>
	],
	<ore:blockSteelTier2To3>: [
		<ore:blockSteelTier2>,
		<ore:blockSteelTier3>

	],

	/*	
	--------------
	Steel Ingots.
	--------------
	*/
	<ore:ingotSteelTier1To3>: [
		<ore:ingotSteelTier1>,
		<ore:ingotSteelTier2>,
		<ore:ingotSteelTier3>
	],
	<ore:ingotSteelTier2To3>: [
		<ore:ingotSteelTier2>,
		<ore:ingotSteelTier3>

	],

	/*	
	--------------
	Steel Nuggets.
	--------------
	*/
	<ore:nuggetSteelTier1To3>: [
		<ore:nuggetSteelTier1>,
		<ore:nuggetSteelTier2>,
		<ore:nuggetSteelTier3>
	],
	<ore:nuggetSteelTier2To3>: [
		<ore:nuggetSteelTier2>,
		<ore:nuggetSteelTier3>

	],

	/*	
	--------------
	Steel Dusts.
	--------------
	*/
	<ore:dustSteelTier1To2>: [
		<ore:dustSteelTier1>,
		<ore:dustSteelTier2>

	],
	
	/*	
	--------------
	Steel Plates.
	--------------
	*/
	<ore:plateSteelTier1To3>: [
		<ore:plateSteelTier1>,
		<ore:plateSteelTier2>,
		<ore:plateSteelTier3>
	],
	<ore:plateSteelTier2To3>: [
		<ore:plateSteelTier2>,
		<ore:plateSteelTier3>
	]
};

/*	
	----------------------
	Adds Items to Oredict.
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

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/
static removeItemsFromOredict as IItemStack[][IOreDictEntry] = {	
};

/*	------------------------------------------
	Removes all Items in a Oredict by modname.	
	------------------------------------------
*/
static removeModID as IOreDictEntry[][string] = {
};

/*	------------------
	Mirror an Oredict.
	------------------
*/
static mirror as IOreDictEntry[IOreDictEntry] = {
	<ore:blockSteelTier1To3>: 	<ore:blockSteel>,
	<ore:dustSteelTier1To2>: 	<ore:dustSteel>,
	<ore:ingotSteelTier1To3>: 	<ore:ingotSteel>,
	<ore:gearSteelTier1>: 		<ore:gearSteel>,
	<ore:nuggetSteelTier1To3>: 	<ore:nuggetSteel>,
	<ore:plateSteelTier1To3>: 	<ore:plateSteel>		
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