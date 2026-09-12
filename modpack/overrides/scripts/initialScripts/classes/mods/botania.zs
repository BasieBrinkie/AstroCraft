#priority 9500
#modloaded botania
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.botania.PureDaisy;
import mods.botania.Apothecary;

zenClass bot {
	zenConstructor() {}

	function apothecaryAdd(map as IIngredient[][IItemStack]) {
		for output, inputArray in map {
			Apothecary.addRecipe(output, inputArray);
		}
	}
	
	function apothecaryAddFlower(map as IIngredient[][string]) {
		for flowerName, inputArray in map {
			Apothecary.addRecipe(flowerName, inputArray);
		}
	}
	
	function apothecaryRemove(map as IIngredient[]) {
		for output in map {
			Apothecary.removeRecipe(output);
		}
	}
	
	function apothecaryRemove(map as string[]) {
		for output in map {
			Apothecary.removeRecipe(output);
		}
	}



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
}