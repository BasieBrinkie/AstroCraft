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
	<ore:ingotSteelTier1>:[
		<mekanism:ingot:4>
	],
	<ore:ingotSteelTier2>:[
		<techguns:itemshared:83>
	],
	<ore:ingotSteelTier3>:[
		<immersiveengineering:metal:8>
	],

	/*	
	--------------
	Steel Nuggets.
	--------------
	*/

	/*	
	-------------
	Steel Gears.
	-------------
	*/

	/*	
	-------------
	Steel Plates
	-------------
	*/
	<ore:plateSteelTier1>:[
		<tconstruct:large_plate:0>.withTag({Material: "steel"})
	],
	<ore:plateSteelTier2>:[
		<immersiveengineering:metal:38>
	],
	<ore:plateSteelTier3>:[
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
		<ore:ingotSteelTier3>,
		<ore:ingotSteelTier4>,
		<ore:ingotSteelTier5>
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

	/*	
	-------------
	Steel Gears.
	-------------
	*/

	/*	
	-------------
	Steel Plates
	-------------
	*/
	<ore:plateSteelTier1To3>: [
		<ore:plateSteelTier3>,
		<ore:plateSteelTier4>,
		<ore:plateSteelTier5>
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