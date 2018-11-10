import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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
	-----------------------------------------
	Create new Oredicts.
	If Oredict exists it will first clear it.
	-----------------------------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = {	
	
	/*	
	--------------
	Copper Blocks.
	--------------
	*/
	<ore:blockCopperTier1>: [
		<nuclearcraft:ingot_block:0>
	],
	<ore:blockCopperTier2>: [
		<fp:erz_blocke:2>
	],
	<ore:blockCopperTier3>: [
		<mekanism:basicblock:12>
	],
	<ore:blockCopperTier4>: [
		<libvulpes:metal0:4>
	],
	<ore:blockCopperTier5>: [
		<thermalfoundation:storage:0>
	],

	/*	
	--------------
	Copper Ingots.
	--------------
	*/
	<ore:ingotCopperTier1>: [
		<exnihilocreatio:item_ore_copper:3>
	],
	<ore:ingotCopperTier2>: [
		<mekanism:ingot:5>
	],
	<ore:ingotCopperTier3>: [
		<libvulpes:productingot:4>
	],
	<ore:ingotCopperTier4>: [
		<fp:itemerze:2>
	],
	<ore:ingotCopperTier5>: [
		<thermalfoundation:material:128>
	],

	/*	
	-------------
	Copper Gears.
	-------------
	*/

	/*	
	-------------
	Copper Clumps
	-------------
	*/
	<ore:clumpCopper>: [
		<mekanism:clump:3>,
		<abyssalcraft:crystalfragment:17>,
		<tconstruct:shard>.withTag({Material: "copper"})
	]	
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
	Copper Blocks.
	--------------
	*/	
	<ore:blockCopperTier1To5>: [
		<ore:blockCopperTier1>,
		<ore:blockCopperTier2>,
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
	<ore:blockCopperTier2To5>: [
		<ore:blockCopperTier2>,
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
		<ore:blockCopperTier3To5>: [
		<ore:blockCopperTier3>,
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],
	<ore:blockCopperTier4To5>: [
		<ore:blockCopperTier4>,
		<ore:blockCopperTier5>
	],


	/*	
	--------------
	Copper Ingots.
	--------------
	*/
	<ore:ingotCopperTier1To5>: [
		<ore:ingotCopperTier1>,
		<ore:ingotCopperTier2>,
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier2To5>: [
		<ore:ingotCopperTier2>,
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier3To5>: [
		<ore:ingotCopperTier3>,
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	],
	<ore:ingotCopperTier4To5>: [
		<ore:ingotCopperTier4>,
		<ore:ingotCopperTier5>
	]
};

/*	
	---------------------------
	Removes Items from Oredict.
	---------------------------
*/
static removeItemsFromOredict as IItemstack[][IOreDictEntry] = {	
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
static mirror as IOreDictEntry[][IOreDictEntry] = {	
};

function init() {
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.create(createItemsToOredict);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirror);
}