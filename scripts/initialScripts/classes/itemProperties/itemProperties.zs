#priority 9000
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.game.IGame;
import crafttweaker.formatting.IFormattedText;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

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

	function setName(map as string[IItemStack]) {
		for item, newItemName in map {
			item.displayName = newItemName;
		}
	}

	function setUnlocalizedName(map as string[string]) {
		for unlocalizedName, newItemName in map {
			game.setLocalization(unlocalizedName, newItemName);
		}
	}

 	function setTooltipName(map as IFormattedText[][IFormattedText[]][string][IItemStack]) {
		for item, toolTipArray in map {
			item.clearTooltip();
			for itemName, toolTipArray2 in toolTipArray {
				item.addTooltip(format.white(itemName));
				for toolTipStandardArray, toolTipShiftArray in toolTipArray2 {
					for toolTipStandard in toolTipStandardArray {
						item.addTooltip(toolTipStandard);
					}
					for toolTipShift in toolTipShiftArray {
						item.addShiftTooltip(toolTipShift);
					}
				}
			}
			item.addTooltip(format.darkGray(item.definition.id));
			
			if (ZenStager.isStaged("ingredient", item)) {
				item.addTooltip(format.blue("Stage: ") + format.white(ZenStager.getIngredientStage(item).stage));
			}
		}
	}

	function setTooltipFormat(map as IFormattedText[][IFormattedText[]][IItemStack]) {
		for item, toolTipArray in map {
			item.clearTooltip();
			item.addTooltip(format.white(item.displayName));
			
			for toolTipStandardArray, toolTipShiftArray in toolTipArray {
				for toolTipStandard in toolTipStandardArray {
					item.addTooltip(toolTipStandard);
				}
				for toolTipShift in toolTipShiftArray {
					item.addShiftTooltip(toolTipShift);
				}
			}
			item.addTooltip(format.darkGray(item.definition.id));
			
			if (ZenStager.isStaged("ingredient", item)) {
				item.addTooltip(format.blue("Stage: ") + format.white(ZenStager.getIngredientStage(item).stage));
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