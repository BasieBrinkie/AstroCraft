import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:woolTier1>: [
		<atum:linen_black:0>,
		<atum:linen_blue:0>,
		<atum:linen_brown:0>,
		<atum:linen_cyan:0>,
		<atum:linen_gray:0>,
		<atum:linen_green:0>,
		<atum:linen_light_blue:0>,
		<atum:linen_lime:0>,
		<atum:linen_magenta:0>,
		<atum:linen_orange:0>,
		<atum:linen_pink:0>,
		<atum:linen_purple:0>,
		<atum:linen_red:0>,
		<atum:linen_silver:0>,
		<atum:linen_white:0>,
		<atum:linen_yellow:0>,
		<chisel:wool_black:0>,
		<chisel:wool_black:1>,
		<chisel:wool_blue:0>,
		<chisel:wool_blue:1>,
		<chisel:wool_brown:0>,
		<chisel:wool_brown:1>,
		<chisel:wool_cyan:0>,
		<chisel:wool_cyan:1>,
		<chisel:wool_gray:0>,
		<chisel:wool_gray:1>,
		<chisel:wool_green:0>,
		<chisel:wool_green:1>,
		<chisel:wool_lightblue:0>,
		<chisel:wool_lightblue:1>,
		<chisel:wool_lightgray:0>,
		<chisel:wool_lightgray:1>,
		<chisel:wool_lime:0>,
		<chisel:wool_lime:1>,
		<chisel:wool_magenta:0>,
		<chisel:wool_magenta:1>,
		<chisel:wool_orange:0>,
		<chisel:wool_orange:1>,
		<chisel:wool_pink:0>,
		<chisel:wool_pink:1>,
		<chisel:wool_purple:0>,
		<chisel:wool_purple:1>,
		<chisel:wool_red:0>,
		<chisel:wool_red:1>,
		<chisel:wool_white:0>,
		<chisel:wool_white:1>,
		<chisel:wool_yellow:0>,
		<chisel:wool_yellow:1>,
		<minecraft:wool:0>,
		<minecraft:wool:1>,
		<minecraft:wool:2>,
		<minecraft:wool:3>,
		<minecraft:wool:4>,
		<minecraft:wool:5>,
		<minecraft:wool:6>,
		<minecraft:wool:7>,
		<minecraft:wool:8>,
		<minecraft:wool:9>,
		<minecraft:wool:10>,
		<minecraft:wool:11>,
		<minecraft:wool:12>,
		<minecraft:wool:13>,
		<minecraft:wool:14>,
		<minecraft:wool:15>,
		<thermalfoundation:rockwool:0>,
		<thermalfoundation:rockwool:1>,
		<thermalfoundation:rockwool:2>,
		<thermalfoundation:rockwool:3>,
		<thermalfoundation:rockwool:4>,
		<thermalfoundation:rockwool:5>,
		<thermalfoundation:rockwool:6>,
		<thermalfoundation:rockwool:7>,
		<thermalfoundation:rockwool:8>,
		<thermalfoundation:rockwool:9>,
		<thermalfoundation:rockwool:10>,
		<thermalfoundation:rockwool:11>,
		<thermalfoundation:rockwool:12>,
		<thermalfoundation:rockwool:13>,
		<thermalfoundation:rockwool:14>,
		<thermalfoundation:rockwool:15>

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
	<ore:woolTier1>: <ore:blockWool>
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