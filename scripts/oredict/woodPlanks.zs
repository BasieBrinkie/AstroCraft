import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:woodPlanksTier1>: [
		<minecraft:planks:0>,
		<minecraft:planks:1>,
		<minecraft:planks:2>,
		<minecraft:planks:3>,
		<minecraft:planks:4>,
		<minecraft:planks:5>,

		<chisel:planks-oak:0>,
		<chisel:planks-oak:1>,
		<chisel:planks-oak:2>,
		<chisel:planks-oak:3>,
		<chisel:planks-oak:4>,
		<chisel:planks-oak:5>,
		<chisel:planks-oak:6>,
		<chisel:planks-oak:7>,
		<chisel:planks-oak:8>,
		<chisel:planks-oak:9>,
		<chisel:planks-oak:10>,
		<chisel:planks-oak:11>,
		<chisel:planks-oak:12>,
		<chisel:planks-oak:13>,
		<chisel:planks-oak:14>,
		<chisel:planks-spruce:0>,
		<chisel:planks-spruce:1>,
		<chisel:planks-spruce:2>,
		<chisel:planks-spruce:3>,
		<chisel:planks-spruce:4>,
		<chisel:planks-spruce:5>,
		<chisel:planks-spruce:6>,
		<chisel:planks-spruce:7>,
		<chisel:planks-spruce:8>,
		<chisel:planks-spruce:9>,
		<chisel:planks-spruce:10>,
		<chisel:planks-spruce:11>,
		<chisel:planks-spruce:12>,
		<chisel:planks-spruce:13>,
		<chisel:planks-spruce:14>,
		<chisel:planks-birch:0>,
		<chisel:planks-birch:1>,
		<chisel:planks-birch:2>,
		<chisel:planks-birch:3>,
		<chisel:planks-birch:4>,
		<chisel:planks-birch:5>,
		<chisel:planks-birch:6>,
		<chisel:planks-birch:7>,
		<chisel:planks-birch:8>,
		<chisel:planks-birch:9>,
		<chisel:planks-birch:10>,
		<chisel:planks-birch:11>,
		<chisel:planks-birch:12>,
		<chisel:planks-birch:13>,
		<chisel:planks-birch:14>,
		<chisel:planks-jungle:0>,
		<chisel:planks-jungle:1>,
		<chisel:planks-jungle:2>,
		<chisel:planks-jungle:3>,
		<chisel:planks-jungle:4>,
		<chisel:planks-jungle:5>,
		<chisel:planks-jungle:6>,
		<chisel:planks-jungle:7>,
		<chisel:planks-jungle:8>,
		<chisel:planks-jungle:9>,
		<chisel:planks-jungle:10>,
		<chisel:planks-jungle:11>,
		<chisel:planks-jungle:12>,
		<chisel:planks-jungle:13>,
		<chisel:planks-jungle:14>,
		<chisel:planks-acacia:0>,
		<chisel:planks-acacia:1>,
		<chisel:planks-acacia:2>,
		<chisel:planks-acacia:3>,
		<chisel:planks-acacia:4>,
		<chisel:planks-acacia:5>,
		<chisel:planks-acacia:5>,
		<chisel:planks-acacia:6>,
		<chisel:planks-acacia:7>,
		<chisel:planks-acacia:8>,
		<chisel:planks-acacia:9>,
		<chisel:planks-acacia:10>,
		<chisel:planks-acacia:11>,
		<chisel:planks-acacia:12>,
		<chisel:planks-acacia:13>,
		<chisel:planks-acacia:14>,
		<chisel:planks-dark-oak:0>,
		<chisel:planks-dark-oak:1>,
		<chisel:planks-dark-oak:2>,
		<chisel:planks-dark-oak:3>,
		<chisel:planks-dark-oak:4>,
		<chisel:planks-dark-oak:5>,
		<chisel:planks-dark-oak:6>,
		<chisel:planks-dark-oak:7>,
		<chisel:planks-dark-oak:8>,
		<chisel:planks-dark-oak:9>,
		<chisel:planks-dark-oak:10>,
		<chisel:planks-dark-oak:11>,
		<chisel:planks-dark-oak:12>,
		<chisel:planks-dark-oak:13>,
		<chisel:planks-dark-oak:14>
	],
	<ore:woodPlanksTier2>: [
		<advancedrocketry:planks:0>,
		
		<astralsorcery:blockinfusedwood:1>,
		
		<atum:palm_planks:0>,
		<atum:deadwood_planks:0>,
			
		<erebus:planks:0>,
		<erebus:planks:1>,
		<erebus:planks:2>,
		<erebus:planks:3>,
		<erebus:planks:4>,
		<erebus:planks:5>,
		<erebus:planks:6>,
		<erebus:planks:7>,
		<erebus:planks:8>,
		<erebus:planks:9>,
		<erebus:planks:10>,
		<erebus:planks:11>,
		<erebus:planks:12>,
		<erebus:planks_petrified_wood:0>,
		
		<extrautils2:ironwood_planks:0>,
		<extrautils2:ironwood_planks:1>,
		
		<glacidus:underground_planks:0>,
		
		<thebetweenlands:weedwood_planks:0>,
		<thebetweenlands:rubber_tree_planks:0>,
		<thebetweenlands:giant_root_planks:0>,
		<thebetweenlands:hearthgrove_planks:0>,
		<thebetweenlands:nibbletwig_planks:0>,
		
		<twilightforest:tower_wood:0>,
		<twilightforest:tower_wood:1>,
		<twilightforest:tower_wood:2>,
		<twilightforest:tower_wood:3>,
		<twilightforest:tower_wood:4>,
	
		<tropicraft:plank:0>,
		<tropicraft:plank:1>		
	],
	<ore:woodPlanksTier3>: [
		<extrautils2:decorativesolidwood:0>,
		<immersiveengineering:treated_wood:0>,
		<skyresources:petrifiedplanks:0>,
		<thaumcraft:plank_greatwood:0>,
		<thaumcraft:plank_silverwood:0>,

	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:woodPlanksTier1To3>: [
		<ore:woodPlanksTier1>,
		<ore:woodPlanksTier2>,
		<ore:woodPlanksTier3>
	],
	<ore:woodPlanksTier2To3>: [
		<ore:woodPlanksTier2>,
		<ore:woodPlanksTier3>
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
	<ore:woodPlanksTier1To3>: <ore:plankWood>
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