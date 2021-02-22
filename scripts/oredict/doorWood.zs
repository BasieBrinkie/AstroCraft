import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:doorWood>: [
		<atum:deadwood_door:0>,
		<atum:palm_door:0>,
		<erebus:door_amber:0>,
		<erebus:door_asper:0>,
		<erebus:door_baobab:0>,
		<erebus:door_cypress:0>,
		<erebus:door_eucalyptus:0>,
		<erebus:door_mahogany:0>,
		<erebus:door_mossbark:0>,
		<erebus:door_marshwood:0>,
		<erebus:door_petrified_wood:0>,
		<erebus:door_rotten:0>,
		<minecraft:acacia_door:0>,
		<minecraft:birch_door:0>,
		<minecraft:dark_oak_door:0>,
		<minecraft:jungle_door:0>,
		<minecraft:spruce_door:0>,
		<minecraft:wooden_door:0>,
		<jurassicraft:araucaria_door_item:0>,
		<jurassicraft:calamites_door_item:0>,
		<jurassicraft:ginkgo_door_item:0>,
		<jurassicraft:phoenix_door_item:0>,
		<jurassicraft:psaronius_door_item:0>,
		<thebetweenlands:hearthgrove_plank_door_item:0>,
		<thebetweenlands:giant_root_plank_door_item:0>,
		<thebetweenlands:nibbletwig_plank_door_item:0>,
		<thebetweenlands:rubber_tree_plank_door_item:0>,
		<thebetweenlands:weedwood_door_item:0>,
		<tropicraft:bamboo_door:0>,
	],
	
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
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
};

function init() {
	oredictBuilder.create(createItemsToOredict);
	oredictBuilder.createOredict(createOredictsToOredict);
	oredictBuilder.mirror(mirror);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
}