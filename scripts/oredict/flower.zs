import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:flower>: [
		<aether_legacy:purple_flower:0>,
		<aether_legacy:white_flower:0>,
		<erebus:materials:31>,
		<erebus:planted_flower:0>,
		<erebus:planted_flower:1>,
		<erebus:planted_flower:2>,
		<erebus:planted_flower:3>,
		<erebus:planted_flower:4>,
		<erebus:planted_flower:5>,
		<erebus:planted_flower:6>,
		<erebus:planted_flower:7>,
		<erebus:planted_flower:8>,
		<erebus:planted_flower:9>,
		<erebus:planted_flower:10>,
		<erebus:planted_flower:11>,
		<erebus:planted_flower:12>,
		<erebus:planted_flower:13>,
		<erebus:planted_flower:14>,
		<glacidus:crysial_flower:0>,
		<glacidus:pulphorus_flower:0>,
		<glacidus:aurantiacus_flower:0>,
		<glacidus:solegia_flower:0>,
		<glacidus:flavula_flower:0>,
		<minecraft:yellow_flower:0>,
		<minecraft:red_flower:0>,
		<minecraft:red_flower:1>,
		<minecraft:red_flower:2>,
		<minecraft:red_flower:3>,
		<minecraft:red_flower:4>,
		<minecraft:red_flower:5>,
		<minecraft:red_flower:6>,
		<minecraft:red_flower:7>,
		<minecraft:red_flower:8>,
		<minecraft:double_plant:0>,
		<minecraft:double_plant:1>,
		<minecraft:double_plant:3>,
		<minecraft:double_plant:2>,
		<minecraft:double_plant:4>,
		<minecraft:double_plant:5>,
		<thebetweenlands:cardinal_flower:0>,
		<thebetweenlands:bladderwort_flower:0>,
		<thebetweenlands:bog_bean_flower:0>,
		<thebetweenlands:golden_club_flower:0>,
		<thebetweenlands:marsh_marigold_flower:0>,
		<thebetweenlands:nettle_flowered:0>,
		<thebetweenlands:items_crushed:25>,
		<thebetweenlands:items_plant_drop:11>,
		<thebetweenlands:items_crushed:52>,
		<thebetweenlands:items_plant_drop:3>,
		<thebetweenlands:items_plant_drop:7>,
		<thebetweenlands:items_plant_drop:8>,
		<thebetweenlands:items_plant_drop:12>,
		<thebetweenlands:items_plant_drop:16>,
		<thebetweenlands:items_plant_drop:18>,
		<thebetweenlands:items_plant_drop:19>,
		<thebetweenlands:items_plant_drop:20>,
		<thebetweenlands:items_plant_drop:23>,
		<thebetweenlands:items_plant_drop:31>,
		<thebetweenlands:items_plant_drop:40>
	]
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