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
	<ore:chiselsAndBitsBitBags>: [
		<chiselsandbits:bit_bag:0>,
        <chiselsandbits:bit_bag:0>.withTag({color: "white"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "orange"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "magenta"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "light_blue"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "yellow"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "lime"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "pink"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "gray"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "silver"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "cyan"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "purple"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "blue"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "brown"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "green"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "red"}),
        <chiselsandbits:bit_bag:0>.withTag({color: "black"}),
	]
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