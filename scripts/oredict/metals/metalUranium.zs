import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:allUranium>: [
		<alchemistry:ingot:92>,
		<chisel:blockuranium:0>,
		<chisel:blockuranium:1>,
		<chisel:blockuranium:2>,
		<chisel:blockuranium:3>,
		<chisel:blockuranium:4>,
		<chisel:blockuranium:5>,
		<chisel:blockuranium:6>,
		<extendedcrafting:singularity:32>,
		<immersiveengineering:metal:5>,
		<immersiveengineering:metal:35>,
		<immersiveengineering:sheetmetal:5>,
		<immersiveengineering:sheetmetal_slab:5>,
		<immersiveengineering:storage:5>,
		<immersiveengineering:storage_slab:5>,
		<nuclearcraft:block_depleted_uranium:0>,
		<nuclearcraft:depleted_fuel_ic2:0>,
		<nuclearcraft:dust:4>,
		<nuclearcraft:ingot_block:4>,
		<nuclearcraft:rtg_uranium:0>,
		<nuclearcraft:uranium:0>,
		<nuclearcraft:uranium:2>,
		<nuclearcraft:uranium:4>,
		<nuclearcraft:uranium:6>,
		<nuclearcraft:uranium:8>,
		<nuclearcraft:uranium:10>,
		<nuclearcraft:uranium:6>,
		<nuclearcraft:ingot_block:4>,
		<techguns:basicore:4>,
		<techguns:itemshared:98>,
	],
	<ore:blockUranium>: [
		<chisel:blockuranium:0>,
		<chisel:blockuranium:1>,
		<chisel:blockuranium:2>,
		<chisel:blockuranium:3>,
		<chisel:blockuranium:4>,
		<chisel:blockuranium:5>,
		<chisel:blockuranium:6>,
		<immersiveengineering:sheetmetal:5>,
		<immersiveengineering:storage:5>,
		<nuclearcraft:ingot_block:4>,
		<nuclearcraft:block_depleted_uranium:0>,
	],
	<ore:ingotUranium>: [
		<alchemistry:ingot:92>,
		<immersiveengineering:metal:5>,
		<nuclearcraft:uranium:0>,
		<nuclearcraft:uranium:4>,
		<nuclearcraft:uranium:8>,
	],
	<ore:nuggetUranium>: [
		<nuclearcraft:uranium:2>,
		<nuclearcraft:uranium:6>,
		<nuclearcraft:uranium:10>,
	],
	<ore:uranium233>: [
		<nuclearcraft:uranium:0>,
		<nuclearcraft:uranium:2>,
	],
	<ore:uranium235>: [
		<nuclearcraft:uranium:4>,
		<nuclearcraft:uranium:6>,
	],
	<ore:uranium238>: [
		<nuclearcraft:block_depleted_uranium:0>,
		<nuclearcraft:uranium:8>,
		<nuclearcraft:uranium:10>,
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