import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:skyResourcesCondenser>: [
		<skyresources:condenser:0>,
		<skyresources:condenser:1>,
		<skyresources:condenser:2>,
		<skyresources:condenser:3>,
		<skyresources:condenser:4>,
		<skyresources:condenser:5>,
		<skyresources:condenser:6>,
		<skyresources:condenser:7>,
		<skyresources:condenser:8>,
		<skyresources:condenser:9>,
		<skyresources:condenser:10>,
		<skyresources:condenser:11>,
		<skyresources:condenser:12>,
		<skyresources:condenser:13>,
		<skyresources:condenser:14>,
		<skyresources:condenser:15> 
	],
	<ore:skyReourcesCombustion>: [
		<skyresources:combustionheater:0>,
		<skyresources:combustionheater:1>,
		<skyresources:combustionheater:2>,
		<skyresources:combustionheater:3>,
		<skyresources:combustionheater:4>,
		<skyresources:combustionheater:5>,
		<skyresources:combustionheater:6>,
		<skyresources:combustionheater:7>,
		<skyresources:combustionheater:8>,
		<skyresources:combustionheater:9>,
		<skyresources:combustionheater:10>,
		<skyresources:combustionheater:11>,
		<skyresources:combustionheater:12>,
		<skyresources:combustionheater:13>,
		<skyresources:combustionheater:14>,
		<skyresources:combustionheater:15>
	],
	<ore:skyResourcesHeater>: [
		<skyresources:heatprovider:0>,
		<skyresources:heatprovider:1>,
		<skyresources:heatprovider:2>,
		<skyresources:heatprovider:3>,
		<skyresources:heatprovider:4>,
		<skyresources:heatprovider:5>,
		<skyresources:heatprovider:6>,
		<skyresources:heatprovider:7>,
		<skyresources:heatprovider:8>,
		<skyresources:heatprovider:9>,
		<skyresources:heatprovider:10>,
		<skyresources:heatprovider:11>,
		<skyresources:heatprovider:12>,
		<skyresources:heatprovider:13>,
		<skyresources:heatprovider:14>,
		<skyresources:heatprovider:15>
	],
	<ore:skyResourcesHeatComponent>: [
		<skyresources:heat:0>,
		<skyresources:heat:1>,
		<skyresources:heat:2>,
		<skyresources:heat:3>,
		<skyresources:heat:4>,
		<skyresources:heat:5>,
		<skyresources:heat:6>,
		<skyresources:heat:7>,
		<skyresources:heat:8>,
		<skyresources:heat:9>,
		<skyresources:heat:10>,
		<skyresources:heat:11>,
		<skyresources:heat:12>,
		<skyresources:heat:13>,
		<skyresources:heat:14>,
		<skyresources:heat:15>
	],
	<ore:skyResourcesCasings>: [
		<skyresources:casing:0>,
		<skyresources:casing:1>,
		<skyresources:casing:2>,
		<skyresources:casing:3>,
		<skyresources:casing:4>,
		<skyresources:casing:5>,
		<skyresources:casing:6>,
		<skyresources:casing:7>,
		<skyresources:casing:8>,
		<skyresources:casing:9>,
		<skyresources:casing:10>,
		<skyresources:casing:11>,
		<skyresources:casing:12>,
		<skyresources:casing:13>,
		<skyresources:casing:14>,
		<skyresources:casing:15>
	] 
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