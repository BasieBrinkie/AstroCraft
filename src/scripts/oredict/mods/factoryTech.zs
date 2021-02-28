import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:factoryTechKnifeBlade>: [
		<factorytech:machinepart:31>,
		<factorytech:machinepart:32>,
		<factorytech:machinepart:33>,				
	],
	<ore:factoryTechCircuitEtched>: [
		<factorytech:circuit_intermediate:0>,
		<factorytech:circuit_intermediate:1>,
		<factorytech:circuit_intermediate:2>,
		<factorytech:circuit_intermediate:3>,
	],
	<ore:factorytechCircuit>: [
		<factorytech:machinepart:111>,
		<factorytech:machinepart:121>,
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
		<factorytech:machinepart:14>
	],
	<ore:factoryTechMotor>: [
		<factorytech:intermediate:4>,
		<factorytech:machinepart:60>,
		<factorytech:machinepart:61>,
		<factorytech:machinepart:62>
	],
	<ore:factoryTechSawBlade>: [
		<factorytech:machinepart:2>,
		<factorytech:machinepart:4>
	],
	<ore:factoryTechShaft>: [
		<factorytech:machinepart:50>,
		<factorytech:machinepart:51>
	],
	<ore:factoryTechWire>: [
		<factorytech:machinepart:20>,
		<factorytech:machinepart:21>,
		<factorytech:machinepart:22>
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