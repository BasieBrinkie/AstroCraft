import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

/*	----------------------
	Adds Items to Oredict.
	----------------------
*/

static addItemsToOredict as IItemStack[][IOreDictEntry] = { 
    <ore:fluidPipe>: [
        <mekanism:transmitter:1>.withTag({tier: 0}),
        <mekanism:transmitter:1>.withTag({tier: 1}),
        <mekanism:transmitter:1>.withTag({tier: 2}),
        <mekanism:transmitter:1>.withTag({tier: 3}),
    ],
	<ore:itemPipe>: [
		<mekanism:transmitter:3>.withTag({tier: 0}),
		<mekanism:transmitter:3>.withTag({tier: 1}),
		<mekanism:transmitter:3>.withTag({tier: 2}),
		<mekanism:transmitter:3>.withTag({tier: 3}),
	],
};

/*	-------------------------------------------------
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

static mirrorOredict as IOreDictEntry[IOreDictEntry] = {	
};


function init() {
	oredictBuilder.mirror(mirrorOredict);
	oredictBuilder.process(addItemsToOredict);
	oredictBuilder.processOredict(addOredictsToOredict);
	oredictBuilder.remove(removeItemsFromOredict);
	oredictBuilder.removeModID(removeModID);
}