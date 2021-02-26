import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAdd as IOreDictEntry[][] = [
	[<ore:chiselsAndBitsBitBags>]
];

function init() {
	chisel.chiselAdd(chiselAdd);
}