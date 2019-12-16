#priority 9500
#modloaded advancedrocketry
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.advancedrocketry.ArcFurnace;
import mods.advancedrocketry.ChemicalReactor;
import mods.advancedrocketry.PrecisionAssembler;
import mods.advancedrocketry.CuttingMachine;
import mods.advancedrocketry.Lathe;
import mods.advancedrocketry.RollingMachine;
import mods.advancedrocketry.Electrolyser;
import mods.advancedrocketry.Crystallizer;
import mods.advancedrocketry.PlatePresser;

zenClass advRock {
	zenConstructor() {}

	function arcFurnaceAdd(map as int[int][IItemStack[]][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2{
					ArcFurnace.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function arcFurnaceRemoveAll() {
		ArcFurnace.clear();
	}



	function chemicalReactorAddLiquid(map as int[int][IIngredient[]][ILiquidStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					ChemicalReactor.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function chemicalReactorAddItem(map as int[int][IIngredient[]][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					ChemicalReactor.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function chemicalReactorRemoveAll() {
		ChemicalReactor.clear();
	}



	function crystallizerAdd(map as int[int][IItemStack][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					Crystallizer.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function crystallizerRemoveAll() {
		Crystallizer.clear();
	}



	function cuttingMachineAdd(map as int[int][IItemStack][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
						CuttingMachine.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function cuttingMachineRemoveAll() {
		CuttingMachine.clear();
	}



	function electrolyserAdd(map as int[int][ILiquidStack][ILiquidStack[]]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					Electrolyser.addRecipe(output[0], output[1], power, time, input);
				}
			}
		}
	}

	function electrolyserRemoveAll() {
		Electrolyser.clear();
	}



	function latheAdd(map as int[int][IItemStack][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
						Lathe.addRecipe(output, power, time, input);
				}
			}
		}
	}

	function latheRemoveAll() {
		Lathe.clear();
	}



	function platePresserAdd(map as IItemStack[IItemStack]) {
		for output, input in map {
			PlatePresser.addRecipe(output, input);
		}
	}

	function platePresserAddOredict(map as IOreDictEntry[IItemStack]) {
		for output, input in map {
			for item in input.items {
				PlatePresser.addRecipe(output, item);
			}
		}
	}

	function platePresserRemoveAll() {
		PlatePresser.clear();
	}
	


	function precisionAssemblerAdd(map as int[int][IIngredient[]][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					PrecisionAssembler.addRecipe(output, power, time, input);
				}
			}
		}
	}
	
	function precisionAssemblerRemoveAll() {
		PrecisionAssembler.clear();
	}



	function rollingMachineAdd(map as int[int][IIngredient[]][IItemStack]) {
		for output, array in map {
			for input, array2 in array {
				for power, time in array2 {
					RollingMachine.addRecipe(output, power, time, time, input);
				}
			}
		}
	}

	function rollingMachineRemoveAll() {
		RollingMachine.clear();
	}
}
