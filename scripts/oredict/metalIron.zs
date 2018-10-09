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
	Iron Blocks.
	--------------
	*/
	<ore:blockIronTier1>: [
		<minecraft:iron_block:0>
	],
	<ore:blockIronTier2>: [
		<pneumaticcraft:compressed_iron_block:0>
	],
	<ore:blockIronTier3>: [
		<libvulpes:metal0:6>
	],
	<ore:blockIronTier4>: [
		<actuallyadditions:block_misc:9>
	],
	<ore:blockIronTier5>: [
		<immersiveengineering:sheetmetal:9>
	]
	/*	
	--------------
	Iron Ingots.
	--------------
	*/

	/*	
	-------------
	Iron Gears.
	-------------
	*/

	/*	
	-------------
	Iron Plates
	-------------
	*/	
};

/*	
	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:blockIronTier1To5>: [
		<ore:blockIronTier1>,
		<ore:blockIronTier2>,
		<ore:blockIronTier3>,
		<ore:blockIronTier4>,
		<ore:blockIronTier5>
	],
	<ore:blockIronTier2To5>: [
		<ore:blockIronTier2>,
		<ore:blockIronTier3>,
		<ore:blockIronTier4>,
		<ore:blockIronTier5>
	],
		<ore:blockIronTier3To5>: [
		<ore:blockIronTier3>,
		<ore:blockIronTier4>,
		<ore:blockIronTier5>
	],
	<ore:blockIronTier4To5>: [
		<ore:blockIronTier4>,
		<ore:blockIronTier5>
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