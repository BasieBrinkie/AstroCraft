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

	function bloomeryAdd(map as IItemStack[][int][IItemStack]) {
		for output, array in map {
			for amount, array2 in array {
				for inputItem in array2 {
					mods.charcoalpit.addAlloyRecipe(output, amount, true, false, [inputItem]);
					mods.jei.JEI.addDescription(<charcoal_pit:bloomery_hatch:0>, ["The Bloomery can transform the following items:", "", inputItem.amount ~ " " ~ inputItem.displayName ~ " ==> " ~ output.amount ~ " " ~ output.displayName]);
				}			
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