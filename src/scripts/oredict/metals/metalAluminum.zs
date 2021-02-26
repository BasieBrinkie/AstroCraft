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
	Aluminum Blocks.
	--------------
	*/
	<ore:blockAluminumTier1>: [
		<immersiveengineering:storage:1>
	],
	<ore:blockAluminumTier2>: [
		<nuclearcraft:ingot_block:12>
	],
	<ore:blockAluminumTier3>: [
		<immersiveengineering:sheetmetal:1>
	],
	<ore:blockAluminumTier4>: [
		<thermalfoundation:storage:4>
	],

	/*	
	--------------
	Aluminum Ingots.
	--------------
	*/
	<ore:ingotAluminumTier1>: [
		<libvulpes:productingot:9>
	],
	<ore:ingotAluminumTier2>: [
		<immersiveengineering:metal:1>
	],
	<ore:ingotAluminumTier3>: [
		<exnihilocreatio:item_ore_aluminium:3>
	],
	<ore:ingotAluminumTier4>: [
		<thermalfoundation:material:132>
	],

	/*	
	--------------
	Aluminum Nugget.
	--------------
	*/
	<ore:nuggetAluminumTier1>: [
		<libvulpes:productnugget:9>
	],
	<ore:nuggetAluminumTier2>: [
		<immersiveengineering:metal:21>
	],
	<ore:nuggetAluminumTier3>: [
		<thermalfoundation:material:196>
	],
	
	/*	
	----------------
	Aluminum Clumps.
	----------------
	*/
	<ore:clumpAluminumTier1>: [
		<mekanism:clump:0>
	],

	/*
	--------------
	Aluminum Dust.
	--------------
	*/
	<ore:dustAluminumTier1>: [
		<exnihilocreatio:item_ore_aluminum:2>
	],
	<ore:dustAluminumTier2>: [
		<thermalfoundation:material:68>
	],

	/*	
	-------------
	Aluminum Gears.
	-------------
	*/
	<ore:gearAluminumTier1>: [
		<thermalfoundation:material:260>
	],

	/*
	--------------
	Aluminum Plates.
	--------------
	*/
	<ore:plateAluminumTier1>: [
		<libvulpes:productplate:9>
	],
	<ore:plateAluminumTier2>: [
		<thermalfoundation:material:324>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:storage:4>: "tile.thermalfoundation.storage.aluminum.name",
	<thermalfoundation:material:68>: "item.thermalfoundation.material.dustAluminum.name",
	<thermalfoundation:material:260>: "item.thermalfoundation.material.gearAluminum.name",
	<thermalfoundation:material:132>: "item.thermalfoundation.material.ingotAluminum.name",
	<thermalfoundation:material:196>: "item.thermalfoundation.material.nuggetAluminum.name",
	<thermalfoundation:material:324>: "item.thermalfoundation.material.plateAluminum.name"
};

static extraTooltips as IFormattedText[][IItemStack] = {
	//<mekanism:clump:3>: [skyRes.catalystYield(catalystAdd, <mekanism:clump:3>)]
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
	----------------
	Aluminum Blocks.
	----------------
	*/	
	<ore:blockAluminumTier1To4>: [
		<ore:blockAluminumTier1>,
		<ore:blockAluminumTier2>,
		<ore:blockAluminumTier3>,
		<ore:blockAluminumTier4>
	],
	<ore:blockAluminumTier2To4>: [
		<ore:blockAluminumTier2>,
		<ore:blockAluminumTier3>,
		<ore:blockAluminumTier4>
	],
		<ore:blockAluminumTier3To4>: [
		<ore:blockAluminumTier3>,
		<ore:blockAluminumTier4>
	],

	/*	
	----------------
	Aluminum Ingots.
	----------------
	*/
	<ore:ingotAluminumTier1To4>: [
		<ore:ingotAluminumTier1>,
		<ore:ingotAluminumTier2>,
		<ore:ingotAluminumTier3>,
		<ore:ingotAluminumTier4>
	],
	<ore:ingotAluminumTier2To4>: [
		<ore:ingotAluminumTier2>,
		<ore:ingotAluminumTier3>,
		<ore:ingotAluminumTier4>
	],
	<ore:ingotAluminumTier3To4>: [
		<ore:ingotAluminumTier3>,
		<ore:ingotAluminumTier4>
	],

	/*	
	-----------------
	Aluminum Nuggets.
	-----------------
	*/
	<ore:nuggetAluminumTier1To3>: [
		<ore:nuggetAluminumTier1>,
		<ore:nuggetAluminumTier2>,
		<ore:nuggetAluminumTier3>
	],
	<ore:nuggetAluminumTier2To3>: [
		<ore:nuggetAluminumTier2>,
		<ore:nuggetAluminumTier3>
	],

	/*
	--------------
	Aluminum Dust.
	--------------
	*/
	<ore:dustAluminumTier1To2>: [
		<ore:dustAluminumTier1>,
		<ore:dustAluminumTier2>
	],

	/*	
	--------------
	Aluminum Plates.
	--------------
	*/
	<ore:plateAluminumTier1To2>: [
		<ore:plateAluminumTier1>,
		<ore:plateAluminumTier2>
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
	<ore:blockAluminumTier1To4>: 	<ore:blockAluminum>,
	<ore:clumpAluminumTier1>:		<ore:clumpAluminum>,
	<ore:dustAluminumTier1To2>: 	<ore:dustAluminum>,
	<ore:ingotAluminumTier1To4>: 	<ore:ingotAluminum>,
	<ore:gearAluminumTier1>: 		<ore:gearAluminum>,
	<ore:nuggetAluminumTier1To3>: 	<ore:nuggetAluminum>,
	<ore:plateAluminumTier1To2>: 	<ore:plateAluminum>	
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