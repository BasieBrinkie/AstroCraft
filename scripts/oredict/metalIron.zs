import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	
	-----------------------------------------
	Create new Oredicts.
	If Oredict exists it will first clear it.
	-----------------------------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = {	
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
	],
	
	/*	
	--------------
	Iron Ingots.
	--------------
	*/
	<ore:ingotIronTier1>:[
		<minecraft:iron_nugget:0>
	],
	<ore:ingotIronTier2>:[
	],
	
	/*	
	--------------
	Iron Nuggets.
	--------------
	*/
	<ore:nuggetIronTier1>: [
		<minecraft:iron_nugget:0>,
		<thaumcraft:nugget:0>
	],
	<ore:nuggetIronTier2>: [
		<immersiveengineering:metal:29>
	]	

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
	------------------------------------------------
	Create new Oredicts.
	Add existing Oredicts to 1 Oredict.
	If master Oredict exists it will first clear it.
	------------------------------------------------
*/
static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	/*	
	--------------
	Iron Blocks.
	--------------
	*/
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

	/*	
	--------------
	Iron Ingots.
	--------------
	*/
	<ore:ingotIronTier1to2>: [
		<ore:ingotIronTier1>,
		<ore:ingotIronTier2>
	],
	
	/*	
	--------------
	Iron Nuggets.
	--------------
	*/
	<ore:nuggetIronTier1To2>: [
		<ore:nuggetIronTier1>,
		<ore:nuggetIronTier2>
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
	oredictBuilder.create(createItemsToOredict);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirror);
}