import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:stoneTier1>: [
		<chisel:stonebrick:0>,
		<chisel:stonebrick:1>,
		<chisel:stonebrick:2>,
		<chisel:stonebrick:3>,
		<chisel:stonebrick:4>,
		<chisel:stonebrick:5>,	
		<chisel:stonebrick:6>,
		<chisel:stonebrick:7>,
		<chisel:stonebrick:8>,
		<chisel:stonebrick:9>,
		<chisel:stonebrick:10>,
		<chisel:stonebrick:11>,
		<chisel:stonebrick:12>,
		<chisel:stonebrick:13>,
		<chisel:stonebrick:14>,
		<chisel:stonebrick:15>,
		<chisel:stonebrick1:0>,
		<chisel:stonebrick1:1>,
		<chisel:stonebrick1:2>,
		<chisel:stonebrick1:3>,
		<chisel:stonebrick1:4>,
		<chisel:stonebrick1:5>,
		<chisel:stonebrick1:6>,
		<chisel:stonebrick1:7>,
		<chisel:stonebrick1:8>,
		<chisel:stonebrick1:9>,
		<chisel:stonebrick2:0>,
		<chisel:stonebrick2:1>,
		<chisel:stonebrick2:2>,
		<chisel:stonebrick2:3>,
		<chisel:stonebrick2:4>,
		<chisel:stonebrick2:5>,
		<chisel:stonebrick2:6>,
		<chisel:stonebrick2:7>,
		<contenttweaker:astrostone:0>,
		<minecraft:stone:0>
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
	<ore:stoneTier1>: <ore:stone>
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