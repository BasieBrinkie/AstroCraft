#priority 9500
#modloaded jei
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.jei.JEI;

zenclass jei {
	zenConstructor() {}

	function hideItem(map as IItemStack[]) {
		for item in map {
			JEI.hide(item);
		}
	}

	function hideItem(map as ILiquidStack[]) {
		for fluid in map {
			JEI.hide(fluid);
		}
	}

	function removeItem(map as IItemStack[]) {
		for item in map {
			JEI.removeAndHide(item, false);
		}
	}

	function addNbtItem(map as IItemStack[]) {
		for item in map {
			JEI.addItem(item);
		} 
	}

	function addDescription(map as string[][IItemStack[]]) {
		for itemArray, JeiDescriptionArray in map {
			JEI.addDescription(itemArray, JeiDescriptionArray);
		}
	}
}