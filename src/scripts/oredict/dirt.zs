import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/
static createItemsToOredict as IItemStack[][IOreDictEntry] = { 
	<ore:normalDirt>: [
        <chisel:dirt:0>,
        <chisel:dirt:1>,
        <chisel:dirt:2>,
        <chisel:dirt:3>,
        <chisel:dirt:4>,
        <chisel:dirt:5>,
        <chisel:dirt:6>,
        <chisel:dirt:7>,
        <chisel:dirt:8>,
        <chisel:dirt:9>,
        <chisel:dirt:10>,
        <chisel:dirt:11>,
        <chisel:dirt:12>,
        <chisel:dirt:13>,
        <chisel:dirt:14>,
        <chisel:dirt:15>,
        <minecraft:dirt:0>,
        <minecraft:dirt:2>,
        <thebetweenlands:swamp_dirt:0>,
	],
    <ore:coarseDirt>: [
        <minecraft:dirt:1>,
        <thebetweenlands:coarse_swamp_dirt:0>,
    ],
    <ore:allDirt>: [
        <chisel:dirt:0>,
        <chisel:dirt:1>,
        <chisel:dirt:2>,
        <chisel:dirt:3>,
        <chisel:dirt:4>,
        <chisel:dirt:5>,
        <chisel:dirt:6>,
        <chisel:dirt:7>,
        <chisel:dirt:8>,
        <chisel:dirt:9>,
        <chisel:dirt:10>,
        <chisel:dirt:11>,
        <chisel:dirt:12>,
        <chisel:dirt:13>,
        <chisel:dirt:14>,
        <chisel:dirt:15>,
        <minecraft:dirt:0>,
        <minecraft:dirt:1>,
        <minecraft:dirt:2>,
        <thebetweenlands:coarse_swamp_dirt:0>,
        <thebetweenlands:swamp_dirt:0>,
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