#priority 9500
#modloaded botania
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.botania.PureDaisy;
import mods.botania.Apothecary;

zenClass bot {
	zenConstructor() {}

	function pureDaisyAdd(map as int[IIngredient][IItemStack]) {
		for output, array in map {
			for input, time in array {
				PureDaisy.addRecipe(input, output, time);
			}
		}
	}

	function pureDaisyRemove(map as IIngredient[]) {
		for output in map {
			PureDaisy.removeRecipe(output);
		}
	}

	function apothecaryAdd(map as string[IIngredient[]][IItemStack]) {
		for output, array in map {
			for inputArray, name in array {
				Apothecary.addRecipe(name, inputArray, output);
			}
		}
	}
	
	function apothecaryRemove(map as IIngredient[]) {
		for output in map {
			Apothecary.removeRecipe(output);
		}
	}
	
	function apothecaryRemove(map as string[]) {
		for output in map {
			Apothecary.removeRecipe(string);
		}
	}
}