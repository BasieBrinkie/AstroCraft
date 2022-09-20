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
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/

static addOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
    <ore:petal>: [
        <ore:petalWhite>, 
        <ore:petalOrange>,
        <ore:petalMagenta>,
        <ore:petalLightBlue>,
        <ore:petalYellow>,
        <ore:petalLime>,
        <ore:petalPink>,
        <ore:petalGray>,
        <ore:petalLightGray>,
        <ore:petalCyan>,
        <ore:petalPurple>,
        <ore:petalBlue>,
        <ore:petalBrown>,
        <ore:petalGreen>,
        <ore:petalRed>,
        <ore:petalBlack>
    ],
};

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

static mirrorOredict as IOreDictEntry[IOreDictEntry] = {	
};


function init() {
	oredictBuilder.mirror(mirrorOredict);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
}
