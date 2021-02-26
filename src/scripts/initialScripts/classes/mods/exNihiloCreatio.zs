#priority 9500
#modloaded exnihilocreatio
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.exnihilocreatio.Compost;
import mods.exnihilocreatio.Crook;
import mods.exnihilocreatio.Hammer;
import mods.exnihilocreatio.Heat;
import mods.exnihilocreatio.Sieve;

zenClass enc {
	zenConstructor() {}

	function compostAdd(map as string[IIngredient[float]][IItemStack]) {
		for output, array in map {
			for inputArray, color in array {
				for amount, input in inputArray {
					Compost.addRecipe(input, amount, color, output);
				}
			}
		}
	}

	function compostRemoveAll() {
		Compost.removeAll();
	}

	function crookAdd(map as float[IItemStack[]][][IIngredient]) {
		for input, dropArray in map {
			for dropEntry in dropArray {
				for outputArray, chance in dropEntry {
					for output in outputArray {
						Crook.addRecipe(input, output, chance, 1.0);
					}
				}
			}
		}
	}

	function crookRemoveAll() {
		Crook.removeAll();
	}

	function hammerAdd(map as int[IIngredient][IItemStack]) {
		for output, array in map {
			for input, miningLevel in array {
				Hammer.addRecipe(input, output, miningLevel, 1.0, 0.0);
			}
		}
	}

	function hammerRemoveAll() {
		Hammer.removeAll();
	}

	function heatAdd(map as int[IItemStack]) {
		for input, heatLevel in map {
			Heat.addRecipe(input, heatLevel);
		}
	}

	function heatRemoveAll() {
		Heat.removeAll();
	}

	function sieveAdd(map as IItemStack[][float][IIngredient][int]) {
		for meshLevel, array in map {
			for input, array2 in array {
				for chance, outputArray in array2 {
					for output in outputArray {
						if(meshLevel == 0) {
							Sieve.addStringMeshRecipe(input, output, chance);
						}
						if(meshLevel == 1) {
							Sieve.addFlintMeshRecipe(input, output, chance);
						}
						if(meshLevel == 2) {
							Sieve.addIronMeshRecipe(input, output, chance);
						}
						if(meshLevel == 3) {
							Sieve.addDiamondMeshRecipe(input, output, chance);
						}
					}
				}
			}
		}
	}

	function sieveRemoveAll() {
		Sieve.removeAll();
	}
}