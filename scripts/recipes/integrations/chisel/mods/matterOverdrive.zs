import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAdd as IOreDictEntry[][] = [
	[<ore:blockTritanium>],
	[<ore:crateTritanium>],
];

function init() {
	chisel.chiselAdd(chiselAdd);
}