import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

static fuelAdd as int[IItemStack] = {
	
};

static fuelAddOre as int[IOreDictEntry] = {
	<ore:charcoal>: 1,
	<ore:coal>: 2
};

function init() {
	charPit.fuelRemoveAll();
	charPit.fuelAddOre(fuelAddOre);
	charPit.fuelAdd(fuelAdd);
}