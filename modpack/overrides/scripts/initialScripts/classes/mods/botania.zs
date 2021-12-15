#priority 9500
#modloaded botania
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.botania.PureDaisy;

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
}