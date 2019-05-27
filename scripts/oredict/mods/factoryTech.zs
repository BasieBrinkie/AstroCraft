import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:factoryTechBlade>: [
		<factorytech:machinepart:31>,
		<factorytech:machinepart:32>,
		<factorytech:machinepart:33>,				
	],
	<ore:factoryTechDrill>: [
		<factorytech:machinepart:70>,
		<factorytech:machinepart:71>,
		<factorytech:machinepart:72>,
		<factorytech:machinepart:73>,
	],
	<ore:factoryTechGear>: [
		<factorytech:machinepart:10>,
		<factorytech:machinepart:11>,
		<factorytech:machinepart:12>,
		<factorytech:machinepart:13>,
		<factorytech:machinepart:14>
	],
	<ore:factoryTechShaft>: [
		<factorytech:machinepart:50>,
		<factorytech:machinepart:51>
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