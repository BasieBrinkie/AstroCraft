#priority 9500
#modloaded skyresources
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.formatting.IFormattedText;

zenClass skyRes {
	zenConstructor() {}

	function fusionAddRecipe(map as float[IItemStack[]][IItemStack]) {
		for outputItem, array in map {
			for itemArray, catalyst in array {
				mods.skyresources.fusion.addRecipe(outputItem, itemArray, catalyst);
			}
		}
	}

	function fusionRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.fusion.removeRecipe(item);
		}
	}

	function catalystAddRecipe(map as float[IItemStack[]]) {
		for itemArray, catalystAmount in map {
			for outputItem in itemArray {
				mods.skyresources.catalysts.add(outputItem, catalystAmount);
			}
		}
	}

	function catalystRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.catalysts.remove(item);
		}
	}

	function cauldronAddRecipe(map as float[IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, chance in array {
				mods.skyresources.cauldronclean.addRecipe(outputItem, inputItem, chance);
			}
		}
	}

	function cauldronRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.cauldronclean.removeRecipe(item);
		}
	}

	function combustionAddRecipe(map as int[IItemStack[]][IItemStack]) {
		for outputItem, array in map {
			for itemArray, temperature in array {
				mods.skyresources.combustion.addRecipe(outputItem, itemArray, temperature);
			}
		}
	}

	function combustionRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.combustion.removeRecipe(item);
		}
	}

	function condenserAddRecipe(map as int[ILiquidStack][IItemStack][IItemStack]) {
		for outputItem, array in map {
			for catalyst, array2 in array {
				for inputFluid, tickTime in array2 {
					mods.skyresources.condenser.addRecipe(outputItem, tickTime, catalyst, inputFluid);
				}
			}
		}
	}

	function condenserRemoveRecipe(map as IItemStack[]) {
		for output in map {
			mods.skyresources.condenser.removeRecipe(output);
		}
	}

	function crucibleAddRecipe(map as IItemStack[][ILiquidStack]) {
		for outputFluid, itemArray in map {
			for item in itemArray {
				mods.skyresources.crucible.addRecipe(outputFluid, item);
			}
		}
	}

	function crucibleRemoveRecipe(map as ILiquidStack[]) {
		for fluid in map {
			mods.skyresources.crucible.removeRecipe(fluid);
		}
	}

	function cuttingKnifeAddRecipe(map as IItemStack[IItemStack]) {
		for outputItem, inputItem in map {
			mods.skyresources.knife.addRecipe(outputItem, inputItem);
		}
	}

	function cuttingKnifeRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.knife.removeRecipe(item);
		}
	}

	function freezerAddRecipe(map as int[IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, tickTime in array {
			mods.skyresources.freezer.addRecipe(outputItem, inputItem, tickTime);
			}
		}
	}

	function freezerRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.freezer.removeRecipe(item);
		}
	}

	function heatSourceAdd(map as int[IItemStack]) {
		for item, heat in map {
			mods.skyresources.heatsources.add(item, heat);
		}
	}

	function heatSourcesRemove(map as IItemStack[]) {
		for item in map {
			mods.skyresources.heatsources.remove(item);
		}
	}

	function infusionAddRecipe(map as int[IItemStack][IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, array2 in array {
				for inputBlock, health in array2 {
					mods.skyresources.infusion.addRecipe(outputItem, inputItem, inputBlock, health);
				}
			}
		}
	}

	function infusionRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.infusion.removeRecipe(item);
		}
	}

	function rockGrinderAddRecipe(map as float[IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, chance in array {
			mods.skyresources.rockgrinder.addRecipe(outputItem, inputItem, chance);
			}
		}
	}

	function rockGrinderRemoveRecipe(map as IItemStack[]) {
		for item in map {
			mods.skyresources.rockgrinder.removeRecipe(item);
		}
	}

	function waterExtractorExtractAdd(map as int[IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, waterAmount in array {
				mods.skyresources.waterextractor.extract.addRecipe(waterAmount, outputItem, inputItem);
			}
		}
	}

	function waterExtractorInsertAdd(map as int[IItemStack][IItemStack]) {
		for outputItem, array in map {
			for inputItem, waterAmount in array {
				mods.skyresources.waterextractor.insert.addRecipe(outputItem, inputItem, waterAmount);
			}
		}
	}

	function waterExtractorExtractRemove(map as int[IIngredient][IItemStack]) {
		for outputItem, array in map {
			for inputIngredient, waterAmount in array {
				mods.skyresources.waterextractor.extract.removeRecipe(waterAmount, outputItem, inputIngredient);
			}
		}
	}

	function waterExtractorInsertRemove(map as IItemStack[]) {
		for item in map {
			mods.skyresources.waterextractor.insert.removeRecipe(item);
		}
	}

	function catalystYield(map as float[IItemStack[]], inputItem as IItemStack) as IFormattedText {
		for itemArray, catalystYield in map {
			for item in itemArray {
				if (item.definition.id == inputItem.definition.id) {
					return format.aqua("Catalyst Yield: " ~ (catalystYield * 100) ~ "%");
				}
			}
		}
	}
}