import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAdd as IOreDictEntry[][] = [
	[<ore:exCompressumHeavySieve>]
];

function init() {
	chisel.chiselAdd(chiselAdd);
}