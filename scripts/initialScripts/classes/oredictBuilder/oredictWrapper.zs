#priority 9000
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.liquid.ILiquidStack;

zenClass oredictBuilder {
	zenConstructor() {}

	/* 	
		----------------------------------------------
		Process Arrays of Oredicts with defined Items.
		----------------------------------------------
	*/

	function process(map as IOreDictEntry[IItemStack[]]) {
		for itemArray, oredictName in map {
			for item in itemArray {
				oredictName.add(item);
			}
		}
	}

	/* 	
		--------------------------------------------------
		Process Arrays of Oredicts with Items for removal.
		--------------------------------------------------
	*/

	function remove(map as IOreDictEntry[IItemStack[]]) {
		for itemArray, oredictName in map {
			for item in itemArray {
				oredictName.remove(item);
			}
		}
	}

	/* 	
		---------------------------------------------------------
		Process Arrays of Oredicts for removal of items by modID.
		---------------------------------------------------------
	*/

	function removeModID(map as IOreDictEntry[][string]) {
		for modID, oredictArray in map {
			for oredictName in oredictArray {
			var item = loadedMods[modID].items;
				if (item in oredictName) {
					oredictName.remove(item);
				}
			}
		}
	}
	
	/* 	
		----------------------------------------------------------
		Process Arrays of Oredicts to mirror with another oredict.
		----------------------------------------------------------
	*/	

	function mirror(map as IOreDictEntry[IOreDictEntry]) {
		for oredict, oredictName in map {
				oredictName.mirror(oredict);
		}
	}
}