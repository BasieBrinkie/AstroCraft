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
	<ore:crateTritanium>: [
		<matteroverdrive:new_tritanium_crate:0>,
		<matteroverdrive:new_tritanium_crate:1>,
		<matteroverdrive:new_tritanium_crate:2>,
		<matteroverdrive:new_tritanium_crate:3>,
		<matteroverdrive:new_tritanium_crate:4>,
		<matteroverdrive:new_tritanium_crate:5>,
		<matteroverdrive:new_tritanium_crate:6>,
		<matteroverdrive:new_tritanium_crate:7>,
		<matteroverdrive:new_tritanium_crate:8>,
		<matteroverdrive:new_tritanium_crate:9>,
		<matteroverdrive:new_tritanium_crate:10>,
		<matteroverdrive:new_tritanium_crate:11>,
		<matteroverdrive:new_tritanium_crate:12>,
		<matteroverdrive:new_tritanium_crate:13>,
		<matteroverdrive:new_tritanium_crate:14>,
		<matteroverdrive:new_tritanium_crate:15>,
		<matteroverdrive:new_tritanium_crate:16>,
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