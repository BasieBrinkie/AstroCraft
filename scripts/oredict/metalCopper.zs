import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	----------------------
	Adds Items to Oredict.
	----------------------
*/

static addItemsToOredict as IItemStack[][IOreDictEntry] = {	
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
	]
	/*	
	--------------
	Copper Ingots.
	--------------
	*/

	/*	
	-------------
	Copper Gears.
	-------------
	*/

	/*	
	-------------
	Copper 
	-------------
	*/	
};

/*	
	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
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
};

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/

static removeItemsFromOredict as IItemstack[][IOreDictEntry] = {	
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
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirror);
}