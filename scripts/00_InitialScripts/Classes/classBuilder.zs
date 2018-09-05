#priority 8500
#debug
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.liquid.ILiquidStack;

/* 
	This script will build all Classes so it can be used inside every script
*/
/*
static classes as string[][string] = {
	crafttweakerMods: ["spawnItems"],
	oredictBuilder: ["oredictBuilder"],
	oredictUnifier: ["unifier"],
	recipeBuilder: ["recipeBuilder"]
};
*/
static classes as string[][string] = {

	"recipeBuilder": ["recipeBuilder"]
};

zenClass classBuilder {
	val classArrayFull as string[][string];
	val classFolder as string;
	val classArray as string[];
	val className as string;
	var classScript as string;

	zenConstructor(map as string[][string]) {
		classArrayFull = map;
	}

	function scriptName(map as string[][string]) {
		for classFolder, classArray in map {
			for className in classArray {
				classScript = className + "as scripts.00_InitialScripts.Classes." ~ classFolder ~ "." ~ className " = scripts.00_InitialScripts.Classes." ~ classFolder ~ "." ~ className ~ "()";
				build(classScript);
			}
		}
	}

	function build(map as string) {
		print(global map);
	}
}

function init(map1 as string[][string]) {
	classBuilder(map1);
}

init(classes);