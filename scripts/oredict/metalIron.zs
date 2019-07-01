import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.formatting.IFormattedText;

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
	<ore:ingotIronTier1>: [
		<minecraft:iron_ingot:0>
	],
	<ore:ingotIronTier2>: [
		<factorytech:ingot:5>
	],
	<ore:ingotIronTier3>: [
		<erebus:materials:42>
	],
	<ore:ingotIronTier4>: [
		<exnihilocreatio:item_ore_silver:3>
	],
	
	/*	
	--------------
	Iron Nuggets.
	--------------
	*/
	<ore:nuggetIronTier1>: [
		<minecraft:iron_nugget:0>
	],
	<ore:nuggetIronTier2>: [
		<immersiveengineering:metal:29>
	],	

	/*
	--------------
	Aluminum Dust.
	--------------
	*/
	<ore:dustIronTier1>: [
		<mekanism:dirtydust:0>
	],
	<ore:dustIronTier2>: [
		<mekanism:dust:0>
	],

	/*	
	-------------
	Iron Gears.
	-------------
	*/
	<ore:gearIronTier1>: [
		<factorytech:machinepart:12>
	],
	<ore:gearIronTier2>: [
		<thermalfoundation:material:24>
	],

	/*	
	-------------
	Iron Plates
	-------------
	*/	
	<ore:plateIronTier1>: [
		<libvulpes:productplate:1>
	],
	<ore:plateIronTier2>: [
		<techguns:itemshared:46>
	],
	<ore:plateIronTier3>: [
		<immersiveengineering:metal:39>
	],
	<ore:plateIronTier4>: [
		<thermalfoundation:material:32>
	]
};

/*	
	----------------------------------------------------
	Extra information for automation of tiered tooltips.
	----------------------------------------------------
*/	
static unlocalizedNames as string[IItemStack] = {
	<thermalfoundation:material:24>: "item.thermalfoundation.material.gearIron.name",
	<thermalfoundation:material:32>: "item.thermalfoundation.material.plateIron.name",
};

static extraTooltips as IFormattedText[][IItemStack] = {
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
	------------
	Iron Blocks.
	------------
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
	------------
	Iron Ingots.
	------------
	*/
	<ore:ingotIronTier1To4>: [
		<ore:ingotIronTier1>,
		<ore:ingotIronTier2>,
		<ore:ingotIronTier3>,
		<ore:ingotIronTier4>
	],
	<ore:ingotIronTier2To4>: [
		<ore:ingotIronTier2>,
		<ore:ingotIronTier3>,
		<ore:ingotIronTier4>
	],
	<ore:ingotIronTier3To4>: [
		<ore:ingotIronTier3>,
		<ore:ingotIronTier4>
	],

	/*	
	-------------
	Iron Nuggets.
	-------------
	*/
	<ore:nuggetIronTier1To3>: [
		<ore:nuggetIronTier1>,
		<ore:nuggetIronTier2>,
		<ore:nuggetIronTier3>
	],
	<ore:nuggetIronTier2To3>: [
		<ore:nuggetIronTier2>,
		<ore:nuggetIronTier3>
	],
	
	/*	
	-----------
	Iron Dusts.
	-----------
	*/
	<ore:dustIronTier1To2>: [
		<ore:dustIronTier1>,
		<ore:dustIronTier2>
	],

	/*	
	------------
	Iron Plates.
	------------
	*/
	<ore:plateIronTier1To4>: [
		<ore:plateIronTier1>,
		<ore:plateIronTier2>,
		<ore:plateIronTier3>,
		<ore:plateIronTier4>
	],
	<ore:plateIronTier2To4>: [
		<ore:plateIronTier2>,
		<ore:plateIronTier3>,
		<ore:plateIronTier4>
	],
	<ore:plateIronTier3To4>: [
		<ore:plateIronTier3>,
		<ore:plateIronTier4>
	],
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
	<ore:blockIronTier1To5>: 	<ore:blockIron>,
	<ore:dustIronTier1To2>: 	<ore:dustIron>,
	<ore:ingotIronTier1To4>: 	<ore:ingotIron>,
	<ore:gearIronTier1>: 		<ore:gearIron>,
	<ore:nuggetIronTier1To3>: 	<ore:nuggetIron>,
	<ore:plateIronTier1To4>: 	<ore:plateIron>	
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