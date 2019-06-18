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
	<ore:blockTritanium>: [
		<matteroverdrive:tritanium_block:0>,
		<matteroverdrive:decorative.tritanium_plate_colored:0>,
		<matteroverdrive:decorative.tritanium_plate_colored:1>,
		<matteroverdrive:decorative.tritanium_plate_colored:2>,
		<matteroverdrive:decorative.tritanium_plate_colored:3>,
		<matteroverdrive:decorative.tritanium_plate_colored:4>,
		<matteroverdrive:decorative.tritanium_plate_colored:5>,
		<matteroverdrive:decorative.tritanium_plate_colored:6>,
		<matteroverdrive:decorative.tritanium_plate_colored:7>,
		<matteroverdrive:decorative.tritanium_plate_colored:8>,
		<matteroverdrive:decorative.tritanium_plate_colored:9>,
		<matteroverdrive:decorative.tritanium_plate_colored:10>,
		<matteroverdrive:decorative.tritanium_plate_colored:11>,
		<matteroverdrive:decorative.tritanium_plate_colored:12>,
		<matteroverdrive:decorative.tritanium_plate_colored:13>,
		<matteroverdrive:decorative.tritanium_plate_colored:14>,
		<matteroverdrive:decorative.tritanium_plate_colored:15>
	],
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