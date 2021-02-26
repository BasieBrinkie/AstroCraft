import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:allCoal>: [
		<actuallyadditions:block_misc:5>,
		<actuallyadditions:item_misc:22>,
		<actuallyadditions:item_misc:11>,
		<advancedrocketry:charcoallog>,
		<charcoal_pit:alchemical_coal:0>,
		<mekanism:basicblock:3>,
		<minecraft:coal:0>,
		<minecraft:coal:1>,
		<minecraft:coal_block:0>,
		<mysticalagradditions:insanium:5>,
		<mysticalagriculture:coal>,
		<mysticalagriculture:coal:1>,
		<mysticalagriculture:coal:2>,
		<mysticalagriculture:coal:3>,
		<mysticalagriculture:coal:4>,
		<skyresources:coalinfusedblock:0>,
		<skyresources:compressedcoalblock:0>,
		<thermalfoundation:material:802>,
		<thermalfoundation:storage_resource:1>,
		<thermalfoundation:material:769>,
		<thermalfoundation:material:768>,
	],
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/
static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {

};

/*	
	----------------------
	Adds Items to Oredict.
	----------------------
*/
static addItemsToOredict as IItemStack[][IOreDictEntry] = {	
	<ore:blockCoal>: [
		<actuallyadditions:block_misc:5>,
		<mekanism:basicblock:3>,
		<minecraft:coal_block:0>,
		<skyresources:coalinfusedblock:0>,
		<skyresources:compressedcoalblock:0>,
		<thermalfoundation:storage_resource:1>,
	],
	<ore:itemCoal>: [
		<charcoal_pit:alchemical_coal:0>,
		<mysticalagradditions:insanium:5>,
		<mysticalagriculture:coal:0>,
		<mysticalagriculture:coal:1>,
		<mysticalagriculture:coal:2>,
		<mysticalagriculture:coal:3>,
		<mysticalagriculture:coal:4>,
		<thermalfoundation:material:802>,
	]
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