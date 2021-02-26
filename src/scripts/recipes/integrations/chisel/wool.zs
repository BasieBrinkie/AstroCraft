import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAdd as IOreDictEntry[][] = [
	[<ore:wool>]
];

function init() {
	chisel.chiselAdd(chiselAdd);
}