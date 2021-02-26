#priority 9500
#modloaded appliedenergistics2
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.appliedenergistics2.Grinder;

zenClass ae2 {
	zenConstructor() {}

	function grinderAdd(map as int[IItemStack][IItemStack]) {
		for output, array in map {
			for input, turns in array {
				Grinder.addRecipe(output, input, turns);
			}
		}
	}

	function grinderRemove(map as IItemStack[]) {
		for input in map {
			Grinder.removeRecipe(input);
		}
	}
}