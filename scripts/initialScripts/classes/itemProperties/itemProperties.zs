#priority 9000
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

zenClass itemProperties {
	zenConstructor() {}

	function setBurnTime(map as IIngredient[][int]) {
		for amountBurnItems, itemArray in map {
			var burntime = amountBurnItems * 200;
			for item in itemArray {
				furnace.setFuel(item, burntime);
			}
		}
	}

	function setHardness(map as float[IItemStack]) {
		for item, blockHardness in map {
			item.hardness = blockHardness;
		}
	}

	function setName(map as string[IItemStack]){
		for item, newItemName in map {
			item.displayName = newItemName;
		}
	}

	function setTooltip(map as IFormattedText[][IFormattedText[]][IItemStack]) {
		for item, toolTipArray in map {
			item.clearTooltip();
			for toolTipStandardArray, toolTipShiftArray in toolTipArray {
				for toolTipStandard in toolTipStandardArray {
					item.addTooltip(format.white(toolTipStandard));
				}
				for toolTipShift in toolTipShiftArray {
					item.addShiftTooltip(toolTipShift);
				}
			}
		}
	}

	function setHarvestLevel(map as IItemStack[][int][string]) {
		for toolName, levelArray in map {
			for harvestLevel, itemArray in levelArray {
				for item in itemArray {
					item.asBlock().definition.setHarvestLevel(toolName, harvestLevel);
				}
			}
		}
	}

	function setBlockUnbreakable(map as IItemStack[]) {
		for item in map {
			item.asBlock().definition.setUnbreakable();
		}
	}
}