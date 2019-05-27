#priority 9500
#modloaded actuallyadditions
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Compost;

zenClass aa {
	zenConstructor() {}

	function atomicReconstructorAdd(map as int[IItemStack][IItemStack]) {
		for output, array in map {
			for input, energy in array {
				AtomicReconstructor.addRecipe(output, input, energy);
			}
		}
	}

	function atomicReconstructorRemove(map as IItemStack[]) {
		for output in map {
			AtomicReconstructor.removeRecipe(output);
		}
	}

	function compostAdd(map as IItemStack[IItemStack]) {
		for output, input in map {
			Compost.addRecipe(output, output, input, input);
		}
	}

	function compostRemove(map as IItemStack[]) {
		for output in map {
			Compost.removeRecipe(output);
		}
	}
}