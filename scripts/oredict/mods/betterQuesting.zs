#priority 1500
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

static addItemsToOredict as IOreDictEntry[IItemStack[]] = { [
	<minecraft:grass>,
	<minecraft:dirt>]: 
	<ore:BetterQuestingOxygenGeneration1>
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/

static removeItemsFromOredict as IOreDictEntry[IItemStack[]] = {	
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
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirrorOredict);
}