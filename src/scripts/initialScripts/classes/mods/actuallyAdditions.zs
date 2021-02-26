#priority 9500
#modloaded actuallyadditions
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Compost;
import mods.actuallyadditions.Empowerer;

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

	function compostAdd(map as IItemStack[IItemStack][IItemStack][IItemStack]) {
		for output, array in map {
			for outputDisplay, array2 in array {
				for input, inputDisplay in array2 {
					Compost.addRecipe(output, outputDisplay, input, inputDisplay);	
				}
			}
		}
	}

	function compostRemove(map as IItemStack[]) {
		for output in map {
			Compost.removeRecipe(output);
		}
	}

	function empowererAdd(map as float[][int][int][IIngredient[]][IIngredient][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for inputModifierArray, array3 in array2 {
					for energy, array4 in array3 {
						for time, colourArray in array4 {
							Empowerer.addRecipe(output, input, inputModifierArray[0], inputModifierArray[1], inputModifierArray[2], inputModifierArray[3], energy, time, colourArray);
						}
					}
				}
			}
		}
	}

	function empowererRemove(map as IItemStack[]) {
		for output in map {
			Empowerer.removeRecipe(output);
		}
	}
}