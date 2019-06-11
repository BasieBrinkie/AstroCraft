import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:woodLogTier1>: [
		<minecraft:log:0>,
		<minecraft:log:1>,
		<minecraft:log:2>,
		<minecraft:log:3>,
		<minecraft:log2:0>,
		<minecraft:log2:1>

	],
	<ore:woodLogTier2>: [
		<advancedrocketry:alienwood:0>,

		<aether_legacy:aether_log:0>,
		<aether_legacy:aether_log:1>,
		
		<atum:palm_log:0>,
		<atum:deadwood_log:0>,

		<erebus:log_baobab:0>,
		<erebus:log_eucalyptus:0>,
		<erebus:log_mahogany:0>,
		<erebus:log_mossbark:0>,
		<erebus:log_asper:0>,
		<erebus:log_cypress:0>,
		<erebus:log_balsam:0>,
		<erebus:log_bamboo:0>,
		<erebus:log_rotten:0>,
		<erebus:log_marshwood:0>,
		<erebus:log_scorched:0>,

		<fp:wood:0>,
		<fp:wood:1>,

		<thebetweenlands:log_weedwood:0>,
		<thebetweenlands:log_weedwood:12>,
		<thebetweenlands:log_rubber:0>,
		<thebetweenlands:log_hearthgrove:1>,
		<thebetweenlands:log_hearthgrove:3>,
		<thebetweenlands:log_hearthgrove:5>,
		<thebetweenlands:log_hearthgrove:7>,
		<thebetweenlands:log_nibbletwig:0>,
		<thebetweenlands:log_nibbletwig:12>,
		<thebetweenlands:log_spirit_tree:0>,
		<thebetweenlands:log_spirit_tree:12>,
		<thebetweenlands:weedwood:0>,
		<thebetweenlands:log_sap:0>,
		<thebetweenlands:log_sap:12>,
		<thebetweenlands:giant_root:0>,
		
		<twilightforest:twilight_log:0>,
		<twilightforest:twilight_log:1>,
		<twilightforest:twilight_log:2>,
		<twilightforest:twilight_log:3>,
		<twilightforest:magic_log:0>,
		<twilightforest:magic_log:1>,
		<twilightforest:magic_log:2>,
		<twilightforest:magic_log:3>,
		
		<tropicraft:log:0>,
		<tropicraft:log:1>
		
	],
	<ore:woodLogTier3>: [
		<defiledlands:tenebra_log:0>,
		<extrautils2:ironwood_log:0>,
		<extrautils2:ironwood_log:1>,
		<skyresources:petrifiedwood:0>,
		<thaumcraft:log_greatwood:0>,
		<thaumcraft:log_silverwood:0>

	] 
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static createOredictsToOredict as IOreDictEntry[][IOreDictEntry] = {
	<ore:woodLogTier1To3>: [
		<ore:woodLogTier1>,
		<ore:woodLogTier2>,
		<ore:woodLogTier3>
	],
	<ore:woodLogTier2To3>: [
		<ore:woodLogTier2>,
		<ore:woodLogTier3>
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
	<ore:woodLogTier1To3>: <ore:logWood>
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