import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:allStick>: [
		<minecraft:stick:0>,
		<mekanism:polyethene:3>,
		<immersiveengineering:material:0>,
		<mysticalagriculture:crafting:22>,
	],
	<ore:stickTier1>: [
		<minecraft:stick:0>,
		<glacidus:underground_stick:0>
	],
	<ore:stickTier2>: [
		<mekanism:polyethene:3>
	],
	<ore:stickTier3>: [
		<immersiveengineering:material:0>
	],
	
	<ore:stickAluminum>: [
		<mysticalagriculture:crafting:22>
	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/
static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:stickTier1To3>: [
		<ore:stickTier1>,
		<ore:stickTier2>,
		<ore:stickTier3>
	],
	<ore:stickTier2To3>: [
		<ore:stickTier2>,
		<ore:stickTier3>
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
	<ore:stickTier1To3>: <ore:stickWood>	
};

function init() {
	oredictBuilder.create(createItemsToOredict);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.mirror(mirror);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
}