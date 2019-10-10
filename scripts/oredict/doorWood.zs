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
		<props:props:80>,
		<props:props:1198>,
		<props:props:1199>,
		<props:props:1200>,
		<props:props:1201>,
		<props:props:1202>,
		<props:props:1203>,
		<props:props:1204>,
		<props:props:1205>,
		<props:props:1206>,
		<props:props:1207>,
		<props:props:1208>,
		<props:props:1209>,
		<props:props:1210>,
		<props:props:1211>,
		<props:props:1217>,
		<props:props:1218>,
		<props:props:1219>,
		<props:props:1221>,
		<props:props:1222>,
		<props:props:1223>,
		<props:props:1224>,
		<props:props:1236>,
		<props:props:1235>,
		<props:props:1234>,
		<props:props:1233>,
		<props:props:1232>,
		<props:props:1231>,
		<props:props:1230>,
		<props:props:1229>,
		<props:props:1228>,
		<props:props:1227>,
		<props:props:1226>,
		<props:props:1225>,
		<props:props:2682>,
		<props:props:3027>,
		<props:props:3028>,
		<props:props:3029>,
		<props:props:3030>,
		<props:props:3031>,
		<props:props:3032>,
		<props:props:3033>,
		<props:props:3034>,
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