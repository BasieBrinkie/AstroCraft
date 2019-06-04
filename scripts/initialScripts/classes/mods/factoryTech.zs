#priority 9500
#modloaded factorytech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

zenClass facTech {
	
	zenConstructor() {}

	function agitatorAdd(map as IItemStack[ILiquidStack][ILiquidStack][ILiquidStack][IItemStack]) {
		for output, array in map {
			for outputFluid, array2 in array {
				for inputFluid, array3 in array2 {
					for inputFluid2, input in array3 {
						mods.factorytech.Agitator.addRecipe(inputFluid, inputFluid2, input, outputFluid, output);
					}
				}
			}
		}
	}

	function agitatorRemove(map as ILiquidStack[IItemStack]) {
		for output, outputFluid in map {
			mods.factorytech.Agitator.removeRecipe(output, outputFluid);
		}
	}

	function centrifugeAdd(map as bool[IIngredient][IItemStack[]]) {
		for outputarray, array in map {
			for input, stonePart in array {
				mods.factorytech.Centrifuge.addRecipe(input, outputarray[0], outputarray[1], outputarray[2], stonePart);
			}
		}
	}

	function centrifugeRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Centrifuge.removeRecipe(output);
		}
	}
	
	function chopSawAdd(map as bool[IIngredient][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.ChopSaw.addRecipe(output, input, stonePart);
			}
		}
	}

	function chopSawRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.ChopSaw.removeRecipe(output);
		}
	}

	function compressionChamberAdd(map as ILiquidStack[IItemStack][IItemStack]) {
		for output, array in map {
			for input, inputFluid in array {
				mods.factorytech.CompressionChamber.addRecipe(output, input, inputFluid);
			}
		}
	}

	function compressionChamberRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.CompressionChamber.removeRecipe(output);
		}
	}

	function crucibleAdd(map as IItemStack[ILiquidStack]) {
		for outputFluid, input in map {
			mods.factorytech.Crucible.addRecipe(outputFluid, input, true);
		}
	}

	function crucibleRemove(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.factorytech.Crucible.removeRecipe(outputFluid);
		}
	}

	function drillGrinderAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.DrillGrinder.addRecipe(output, input, stonePart);
			}
		}
	}

	function drillGrinderRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.DrillGrinder.removeRecipe(output);
		}
	}

	function electricFurnaceAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.ElectricFurnace.addRecipe(output, input, stonePart);
			}
		}
	}

	function electricFurnaceRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.ElectricFurnace.removeRecipe(output);
		}
	}

	function electroplaterAdd(map as IItemStack[IItemStack]) {
		for output, input in map {
			mods.factorytech.Electroplater.addRecipe(output, input);
		}
	}

	function electroplaterRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Electroplater.removeRecipe(output);
		}
	}

	function grindstoneAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.Grindstone.addRecipe(output, input, stonePart);
			}
		}
	}

	function grindstoneRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Grindstone.removeRecipe(output);
		}
	}
	
	function magneticCentrifugeAdd(map as bool[IItemStack][IItemStack[]]) {
		for outputarray, array in map {
			for input, stonePart in array {
				mods.factorytech.MagCent.addRecipe(input, outputarray[0], outputarray[1], outputarray[2], stonePart);
			}
		}
	}

	function magneticCentrifugeRemove(map as IItemStack[IItemStack[]]) {
		for outputarray, input in map {
			mods.factorytech.MagCent.removeRecipe(input, outputarray[0], outputarray[1], outputarray[2]);
		}
	}

	function magnetizerAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.Magnetizer.addRecipe(output, input, stonePart);
			}
		}
	}

	function magnetizerRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Magnetizer.removeRecipe(output);
		}
	}

	function metalCutterAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.MetalCutter.addRecipe(output, input, stonePart);
			}
		}
	}

	function metalCutterRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.MetalCutter.removeRecipe(output);
		}
	}

	function mobDisassemblerAdd(map as IItemStack[string]) {
		for mobName, output in map {
			mods.factorytech.Disassembler.addRecipe(mobName, output);
		}
	}

	function mobDisassemblerRemove(map as IItemStack[string]) {
		for mobName, output in map {
			mods.factorytech.Disassembler.removeRecipe(mobName, output);
		}
	}

	function refrigeratorAdd(map as ILiquidStack[IItemStack]) {
		for output, inputFluid in map {
			mods.factorytech.Refrigerator.addRecipe(output, inputFluid, true);
		}
	}

	function refrigeratorRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Refrigerator.removeRecipe(output);
		}
	}	

	function riverGrateAdd(map as float[IItemStack]) {
		for output, chance in map {
			mods.factorytech.rivergrate.addRecipe(output, chance);
		}
	}
	
	function riverGrateRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.rivergrate.removeRecipe(output);
		}
	}

	function tempererOvenAdd(map as int[IItemStack][IItemStack]) {
		for output, array in map {
			for input, ticks in array {
				mods.factorytech.Temperer.addRecipe(output, input, ticks);
			}
		}
	}

	function tempererOvenRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Temperer.removeRecipe(output);
		}
	}
}