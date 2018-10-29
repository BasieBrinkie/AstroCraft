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
	<ore:stickTier1>: [
		<evilcraft:dark_stick:0>
	],
	<ore:stickTier2>: [
		<minecraft:stick:0>
	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:stickTier1To2>: [
		<ore:stickTier1>,
		<ore:stickTier2>,
	],
/*
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
*/
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