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
	Nickel Blocks.
	--------------
	*/
	<ore:blockNickelTier1>: [
		<immersiveengineering:storage:4>
	],
	<ore:blockNickelTier2>: [
		<factorytech:oreblock:1>
	],
	<ore:blockNickelTier3>: [
		<thermalfoundation:storage:5>
	],

	/*	
	--------------
	Nickel Ingots.
	--------------
	*/
	<ore:ingotNickelTier1>: [
		<immersiveengineering:metal:4>
	],
	<ore:ingotNickelTier2>: [
		<factorytech:ingot:1>
	],
	<ore:ingotNickelTier3>: [
		<thermalfoundation:material:133>
	],

	/*	
	--------------
	Nickel Nugget.
	--------------
	*/
	<ore:nuggetNickelTier1>: [
		<factorytech:ore_dust:5>
	],
	<ore:nuggetNickelTier2>: [
		<immersiveengineering:metal:24>
	],
	<ore:nuggetNickelTier3>: [
		<thermalfoundation:material:197>
	],
		
	/*	
	-------------
	Nickel Gears.
	-------------
	*/
	<ore:gearNickelTier1>: [
		<thermalfoundation:material:261>
	],

	/*	
	-------------
	Nickel Dusts.
	-------------
	*/
	<ore:dustNickelTier1>: [
		<factorytech:ore_dust:9>
	],
	<ore:dustNickelTier2>: [
		<thermalfoundation:material:69>
	],

	/*
	--------------
	Nickel Plates.
	--------------
	*/
	<ore:plateNickelTier1>: [
		<immersiveengineering:metal:34>
	],
	<ore:plateNickelTier2>: [
		<thermalfoundation:material:325>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:storage:5>: "tile.thermalfoundation.storage.nickel.name",
	<thermalfoundation:material:69>: "item.thermalfoundation.material.dustNickel.name",
	<thermalfoundation:material:133>: "item.thermalfoundation.material.ingotNickel.name",
	<thermalfoundation:material:261>: "item.thermalfoundation.material.gearNickel.name",
	<thermalfoundation:material:197>: "item.thermalfoundation.material.nuggetNickel.name",
	<thermalfoundation:material:325>: "item.thermalfoundation.material.plateNickel.name"
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
	Nickel Blocks.
	----------------
	*/	
	<ore:blockNickelTier1To3>: [
		<ore:blockNickelTier1>,
		<ore:blockNickelTier2>,
		<ore:blockNickelTier3>
	],
	<ore:blockNickelTier2To3>: [
		<ore:blockNickelTier2>,
		<ore:blockNickelTier3>
	],

	/*	
	----------------
	Nickel Ingots.
	----------------
	*/
	<ore:ingotNickelTier1To3>: [
		<ore:ingotNickelTier1>,
		<ore:ingotNickelTier2>,
		<ore:ingotNickelTier3>
	],
	<ore:ingotNickelTier2To3>: [
		<ore:ingotNickelTier2>,
		<ore:ingotNickelTier3>

	],

	/*	
	-----------------
	Nickel Nuggets.
	-----------------
	*/
	<ore:nuggetNickelTier1To3>: [
		<ore:nuggetNickelTier1>,
		<ore:nuggetNickelTier2>,
		<ore:nuggetNickelTier3>
	],
	<ore:nuggetNickelTier2To3>: [
		<ore:nuggetNickelTier2>,
		<ore:nuggetNickelTier3>
	],

	/*	
	------------
	Nickel dust.
	------------
	*/
	<ore:dustNickelTier1To2>: [
		<ore:dustNickelTier1>,
		<ore:dustNickelTier2>
	],

	/*	
	--------------
	Nickel Plates.
	--------------
	*/
	<ore:plateNickelTier1To2>: [
		<ore:plateNickelTier1>,
		<ore:plateNickelTier2>
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
	<ore:blockNickelTier1To3>: 	<ore:blockNickel>,
	<ore:dustNickelTier1To2>: 	<ore:dustNickel>,
	<ore:ingotNickelTier1To3>: 	<ore:ingotNickel>,
	<ore:gearNickelTier1>: 		<ore:gearNickel>,
	<ore:nuggetNickelTier1To3>:	<ore:nuggetNickel>,
	<ore:plateNickelTier1To2>: 	<ore:plateNickel>	
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