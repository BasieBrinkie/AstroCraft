#priority 9500
#modloaded factorytech
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

zenClass facTech {
	
	zenConstructor() {}

	function agitatorAdd(map as IIngredient[ILiquidStack][ILiquidStack][ILiquidStack[IItemStack]]) {
		for outputArray, array in map {
			for output, outputFluid in outputArray {
				for inputFluid, array2 in array {
					for inputFluid2, inputIngredient in array2 {
						for input in inputIngredient.itemArray {
							mods.factorytech.Agitator.addRecipe(inputFluid, inputFluid2, input, outputFluid, output);
						}
					}
				}
			}
		}
	}

	function agitatorRemoveAll() {
		mods.factorytech.Agitator.removeAll();
	}

	function agitatorRemove(map as ILiquidStack[IItemStack]) {
		for output, outputFluid in map {
			mods.factorytech.Agitator.removeRecipe(output, outputFluid);
		}
	}

	function agitatorRemove(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.factorytech.Agitator.removeRecipe(null, outputFluid);
		}
	}

	function agitatorRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Agitator.removeRecipe(output);
		}
	}

	function centrifugeAdd(map as bool[IIngredient][IItemStack[]]) {
		for outputArray, array in map {
			for input, stonePart in array {
				mods.factorytech.Centrifuge.addRecipe(input, outputArray[0], outputArray[1], outputArray[2], stonePart);
			}
		}
	}

	function centrifugeRemoveAll() {
		mods.factorytech.Centrifuge.removeAll();
	}

	function centrifugeRemove(map as IItemStack[][]) {
		for i, output in map {
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

	function chopSawRemoveAll() {
		mods.factorytech.ChopSaw.removeAll();
	}

	function chopSawRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.ChopSaw.removeRecipe(output);
		}
	}

	function compressionChamberAdd(map as ILiquidStack[IIngredient][IItemStack]) {
		for output, array in map {
			for input, inputFluid in array {
				mods.factorytech.CompressionChamber.addRecipe(output, input, inputFluid);
			}
		}
	}

	function compressionChamberRemoveAll() {
		mods.factorytech.CompressionChamber.removeAll();
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

	function crucibleRemoveAll() {
		mods.factorytech.Crucible.removeAll();
	}

	function crucibleRemove(map as ILiquidStack[]) {
		for outputFluid in map {
			mods.factorytech.Crucible.removeRecipe(outputFluid);
		}
	}

	function drillAdd(map as bool[IIngredient][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.DrillGrinder.addRecipe(output, input, stonePart);
			}
		}
	}

	function drillRemoveAll() {
		mods.factorytech.DrillGrinder.removeAll();
	}

	function drillRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.DrillGrinder.removeRecipe(output);
		}
	}

	function electricFurnaceAdd(map as bool[IIngredient][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.ElectricFurnace.addRecipe(output, input, stonePart);
			}
		}
	}

	function electricFurnaceRemoveAll() {
		mods.factorytech.ElectricFurnace.removeAll();
	}

	function electricFurnaceRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.ElectricFurnace.removeRecipe(output);
		}
	}

	function electroplaterAdd(map as IItemStack[][IItemStack]) {
		for output, array in map {
			for input in array {
				mods.factorytech.Electroplater.addRecipe(output, input);
			}
		}
	}

	function electroplaterRemoveAll() {
		mods.factorytech.Electroplater.removeAll();
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

	function grindstoneRemoveAll() {
		mods.factorytech.Grindstone.removeAll();
	}

	function grindstoneRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Grindstone.removeRecipe(output);
		}
	}
	
	function magneticCentrifugeAdd(map as bool[IIngredient][IItemStack[]]) {
		for outputArray, array in map {
			for input, stonePart in array {
				mods.factorytech.MagCent.addRecipe(input, outputArray[0], outputArray[1], outputArray[2], stonePart);
			}
		}
	}

	function magneticCentrifugeRemoveAll() {
		mods.factorytech.MagCent.removeAll();
	}

	function magneticCentrifugeRemove(map as IItemStack[][]) {
		for i, outputArray in map {
			mods.factorytech.MagCent.removeRecipe(outputArray);
		}
	}

	function magnetizerAdd(map as bool[IItemStack][IItemStack]) {
		for output, array in map {
			for input, stonePart in array {
				mods.factorytech.Magnetizer.addRecipe(output, input, stonePart);
			}
		}
	}

	function magnetizerRemoveAll() {
		mods.factorytech.Magnetizer.removeAll();
	}

	function magnetizerRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Magnetizer.removeRecipe(output);
		}
	}

	function metalCutterAdd(map as IIngredient[][IItemStack]) {
		for output, array in map {
			for i, input in array {
				mods.factorytech.MetalCutter.addRecipe(output, input, true);
			}
		}
	}

	function metalCutterRemoveAll() {
		mods.factorytech.MetalCutter.removeAll();
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

	function refrigeratorAdd(map as ILiquidStack[][IItemStack]) {
		for output, array in map {
			for inputFluid in array {
				mods.factorytech.Refrigerator.addRecipe(output, inputFluid, true);
			}
		}
	}

	function refrigeratorRemoveAll() {
		mods.factorytech.Refrigerator.removeAll();
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
	
	function riverGrateRemoveAll() {
		mods.factorytech.rivergrate.removeAll();
	}

	function riverGrateRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.rivergrate.removeRecipe(output);
		}
	}

	function tempererAdd(map as int[IItemStack][IItemStack]) {
		for output, array in map {
			for input, seconds in array {
				var ticks as int = seconds * 20;
					mods.factorytech.Temperer.addRecipe(output, input, ticks);
			}			
		}
	}

	function tempererRemoveAll() {
		mods.factorytech.Temperer.removeAll();
	}

	function tempererRemove(map as IItemStack[]) {
		for output in map {
			mods.factorytech.Temperer.removeRecipe(output);
		}
	}
}