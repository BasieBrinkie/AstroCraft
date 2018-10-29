import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	--------------------------------------------------------------------------------------------
	Some quests will use the oredict so multiple items will qualify for completion of the quest.
	--------------------------------------------------------------------------------------------
*/

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/

static addItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:planksTier1>: [
		<minecraft:planks:0>,
		<minecraft:planks:1>,
		<minecraft:planks:2>,
		<minecraft:planks:3>,
		<minecraft:planks:4>,
		<minecraft:planks:5>
	],
	<ore:planksTier2>: [
		<abyssalcraft:dltplank:0>,
		<abyssalcraft:dreadplanks:0>,

		<advancedrocketry:planks:0>,
		
		<astralsorcery:blockinfusedwood:1>,
		
		<botania:dreamwood:1>,
		<botania:dreamwood:2>,
		<botania:livingwood:1>,
		<botania:livingwood:2>,
		<botania:shimmerwoodplanks:0>,
		
		<erebus:planks:0>,
		<erebus:planks:1>,
		<erebus:planks:2>,
		<erebus:planks:3>,
		<erebus:planks:4>,
		<erebus:planks:5>,
		<erebus:planks:6>,
		<erebus:planks:7>,
		<erebus:planks:8>,
		<erebus:planks:9>,
		<erebus:planks:10>,
		<erebus:planks:11>,
		<erebus:planks:12>,
		<erebus:planks_petrified_wood:0>,
		
		<extrautils2:ironwood_planks:0>,
		<extrautils2:ironwood_planks:1>,
		
		<fp:planks:0>,
		<fp:planks:1>,
		
		<glacidus:underground_planks:0>,
		
		<twilightforest:tower_wood:0>
		

	],
	<ore:planksTier3>: [
		<defiledlands:tenebra_planks:0>,
		<extrautils2:decorativesolidwood:0>,
		<immersiveengineering:treated_wood:0>,
		<thaumcraft:plank_greatwood:0>

	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:planksTier1To3>: [
		<ore:planksTier1>,
		<ore:planksTier2>,
		<ore:planksTier3>
	],
	<ore:planksTier2To3>: [
		<ore:planksTier2>,
		<ore:planksTier3>,
	]
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

static mirrorOredict as IOreDictEntry[][IOreDictEntry] = {	
};

function init() {
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirrorOredict);
}