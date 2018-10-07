import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOredictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/

static addItemsToOredict as IItemStack[][IOredictEntry] = {	
	<ore:gold>: [
		<minecraft:gold_ingot>,
		<mekanism:gold_ingot>
	],
	<ore:iron>: [
		<minecraft:iron_ingot>,
		<mekanism:iron_ingot>
	]
};

/*	-------------------------------------------------
	Adds all Items from Oredicts to a master Oredict.
	-------------------------------------------------
*/

static addOredictsToOredict as IOredictEntry[][IOredictEntry] = {	
	//Which Oredict	
	<ore:gold>: [
		//Which Oredict to add to master Oredict
		<ore:iron>,
		<ore:zinc>
	],
	//Which Oredict	
	<ore:iron>: [
		//Which Oredict to add all its Items to master Oredict
		<ore:dirt>
		<ore:sappling>
	]
};

/*	---------------------------
	Removes Items from Oredict.
	---------------------------
*/

static removeItemsFromOredict as IItemstack[][IOredictEntry] = {	
	//Which Oredict
	<ore:gold>: [
		//Which Items to remove
		<minecraft:gold_ingot:0>,
		<mekanism:gold_ingot:1>
	],
	//Which Oredict
	<ore:iron>: [
		//Which Items to remove
		<minecraft:iron_ingot:0>,
		<mekanism:iron_ingot:4>
	]
};

/*	------------------------------------------
	Removes all Items in a Oredict by modname.	
	------------------------------------------
*/

static removeModID as IOredictEntry[][string] = {	
	//Which mod?
	minecraft: [
		//Which Oredicts to check if contains Items from mod?
		<ore:gold>,
		<ore:iron>
	],
	//Which mod?
	mekanism: [
		//Which Oredicts to check if contains Items from mod?
		<ore:gold>,
		<ore:iron>
	]
};

/*	------------------
	Mirror an Oredict.
	------------------
*/

static mirror as IOredictEntry[][IOredictEntry] = {	
	//All Items in Oredict gold are now the Items in Oredict iron and vice versa
	<ore:gold>: [<ore:iron>],	
};

function init() {
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
	oredictBuilder.mirror(mirror);
}