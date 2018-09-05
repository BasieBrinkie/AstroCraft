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

static addItemToOredict as IOreDictEntry[][IItemStack] = {
	<ore:BetterQuestingOxygenGeneration1> : [
		<minecraft:grass>,
		<minecraft:dirt>
	]
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOredictEntry[][IOredictEntry] = {	
};

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/

static removeItemsFromOredict as IItemstack[][IOredictEntry] = {	
};

/*	------------------------------------------
	Removes all Items in a Oredict by modname.	
	------------------------------------------
*/

static removeModID as IOredictEntry[][string] = {	
};

/*	------------------
	Mirror an Oredict.
	------------------
*/

static mirror as IOredictEntry[][IOredictEntry] = {	
};


function init() {
	OredictBuilder.process(addItemsToOredict);
	OredictBuilder.process(addOredictToOredict);
	OredictBuilder.remove(removeItemsFromOredict);
	OredictBuilder.remove(removeModID);
	OredictBuilder.mirror(mirror);
}