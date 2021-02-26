import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static chiselAddTiered as IOreDictEntry[][IOreDictEntry] = {
	<ore:woodPlanksTier1>: [<ore:woodPlanksTier1>],
	<ore:woodPlanksTier2>: [<ore:woodPlanksTier1To2>],
	<ore:woodPlanksTier3>: [<ore:woodPlanksTier1To3>]
};

function init() {
	chisel.chiselAddTiered(chiselAddTiered);
}