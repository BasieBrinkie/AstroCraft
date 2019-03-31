#priority 9000
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
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

	function setBlockUnbreakable(map as IItemStack[]) {
		for item in map {
			item.asBlock().definition.setUnbreakable();
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
				if (!isNull(itemName)) {
					item.displayName = itemName;
					item.addTooltip(format.white(itemName));
				}
		
				for toolTipStandardArray, toolTipShiftArray in toolTipArray2 {
					for toolTipStandard in toolTipStandardArray {
						item.addTooltip(toolTipStandard);
					}
					
					if (!isNull(toolTipShiftArray[0])) {
						item.addTooltip(format.white("Hold: ") + format.blue(format.italic("LShift ")) + format.white("for more information"));

						for toolTipShift in toolTipShiftArray {
							item.addShiftTooltip(toolTipShift);
						}
					}
				
					
				}
			}
		
			if (dev) {
				item.addTooltip(format.darkGray(item.definition.id));
			}
		}
	}

	function setTooltip(map as IFormattedText[][IFormattedText[]][IItemStack]) {
		for item, toolTipArray in map {
			item.clearTooltip();
			
			for toolTipStandardArray, toolTipShiftArray in toolTipArray {
				for toolTipStandard in toolTipStandardArray {
					item.addTooltip(toolTipStandard);
				}
				
				if (!isNull(toolTipShiftArray[0])) {
					item.addTooltip(format.white("Hold: ") + format.blue(format.italic("LShift ")) + format.white("for more information"));

					for toolTipShift in toolTipShiftArray {
						item.addShiftTooltip(toolTipShift);
					}
				}
			}
			
			if (dev) {
				item.addTooltip(format.darkGray(item.definition.id));
			}
		}
	}

	function setTooltipOreDict(map as IFormattedText[][IFormattedText[]][IOreDictEntry]) {
		for oredictEntry, toolTipArray in map {
			for item in oredictEntry.items {
				item.clearTooltip();
				
				for toolTipStandardArray, toolTipShiftArray in toolTipArray {
					for toolTipStandard in toolTipStandardArray {
						item.addTooltip(toolTipStandard);
					}
				
					if (!isNull(toolTipShiftArray)) {
						item.addTooltip(format.white("Hold: ") + format.blue(format.italic("LShift ")) + format.white("for more information"));
					}
				
					for toolTipShift in toolTipShiftArray {
						item.addShiftTooltip(toolTipShift);
					}
				}
			
				if (dev) {
					item.addTooltip(format.darkGray(item.definition.id));
				}
			}
		}
	}

}