import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:woodSlabsTier1>: [
		<minecraft:wooden_slab:0>,
		<minecraft:wooden_slab:1>,
		<minecraft:wooden_slab:2>,
		<minecraft:wooden_slab:3>,
		<minecraft:wooden_slab:4>,
		<minecraft:wooden_slab:5>

	],
	<ore:woodSlabsTier2>: [		
		<aether_legacy:skyroot_slab:0>,
		
		<atum:palm_slab:0>,
		<atum:deadwood_slab:0>,
		
		<erebus:slab_planks_baobab:0>,
		<erebus:slab_planks_eucalyptus:0>,
		<erebus:slab_planks_mahogany:0>,
		<erebus:slab_planks_mossbark:0>,
		<erebus:slab_planks_asper:0>,
		<erebus:slab_planks_cypress:0>,
		<erebus:slab_planks_balsam:0>,
		<erebus:slab_planks_white:0>,
		<erebus:slab_planks_bamboo:0>,
		<erebus:slab_planks_rotten:0>,
		<erebus:slab_planks_marshwood:0>,
		<erebus:slab_planks_scorched:0>,
		<erebus:slab_planks_varnished:0>,
		
		<glacidus:underground_slab:0>,
		
		<thebetweenlands:weedwood_plank_slab:0>,
		<thebetweenlands:rubber_tree_plank_slab:0>,
		<thebetweenlands:giant_root_plank_slab:0>,
		<thebetweenlands:hearthgrove_plank_slab:0>,
		<thebetweenlands:nibbletwig_plank_slab:0>,
		
		<tropicraft:slab:3>,
		<tropicraft:slab:4>	
	],
	<ore:woodSlabsTier3>: [
		<immersiveengineering:treated_wood_slab:0>,
		<immersiveengineering:treated_wood_slab:1>,
		<immersiveengineering:treated_wood_slab:2>,	
		<thaumcraft:slab_greatwood:0>,
		<thaumcraft:slab_silverwood:0>,
	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:woodSlabsTier1To3>: [
		<ore:woodSlabsTier1>,
		<ore:woodSlabsTier2>,
		<ore:woodSlabsTier3>
	],
	<ore:woodSlabsTier2To3>: [
		<ore:woodSlabsTier2>,
		<ore:woodSlabsTier3>
	]
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
	<ore:woodSlabsTier1To3>: <ore:slabWood> 	
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