import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOredictEntry;

static addToOredict as IOredictEntry[][IItemStack] = {	
	<ore:gold>: [
		<minecraft:gold_ingot>,
		<mekanism:gold_ingot>
	],
	<ore:iron>: [
		<minecraft:iron_ingot>,
		<mekanism:iron_ingot>
	]
}

oredictBuilder.processItems(addToOredict);