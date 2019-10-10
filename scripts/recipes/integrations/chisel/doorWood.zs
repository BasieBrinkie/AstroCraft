import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAdd as IOreDictEntry[][] = [
	[<ore:doorWood>]
];

function init() {
	chisel.chiselAdd(chiselAdd);
}