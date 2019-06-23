#priority 9500
#modloaded charcoal_pit
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass charPit {
	zenConstructor() {}

	function bloomeryRemoveAll() {
		mods.charcoalpit.flushAlloyRecipes();
	}

	function bloomeryAdd(map as IIngredient[][][IIngredient]) {
		for output, array in map {
			for i, inputArray in array {
				mods.charcoalpit.addAlloyRecipe(output, 1, true, false, inputArray);
			}
		}
	}

	function fuelRemoveAll() {
		mods.charcoalpit.flushSmeltingFuels();
	}

	function fuelAdd(map as int[IItemStack]) {
		for input, amount in map {
			mods.charcoalpit.addSmeltingFuel(input, amount);
		}
	}

	function fuelAddOre(map as int[IOreDictEntry]) {
		for input, amount in map {
			mods.charcoalpit.addSmeltingFuel(input, amount);
		}
	}

	function kilnRemoveAll() {
		mods.charcoalpit.flushKilnRecipes();
	}
}