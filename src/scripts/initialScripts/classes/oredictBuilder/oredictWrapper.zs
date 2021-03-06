#priority 9000
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.ILoadedMods;

zenClass oredictBuilder {
	zenConstructor() {}

	/* 	
		----------------------------------------------
		Process Arrays of Oredicts with defined Items.
		----------------------------------------------
	*/

	function process(map as IItemStack[][IOreDictEntry]) {
		for oredictName, itemArray in map {
			for item in itemArray {
				oredictName.add(item);
			}
		}
	}

	function processOredict(map as IOreDictEntry[][IOreDictEntry]) {
		for oredictName, oredictArray in map {
			for oredictToAdd in oredictArray {
				oredictName.addAll(oredictToAdd);
			}
		}
	}

	/* 	
		---------------------------------------------------------------------------
		create Arrays of Oredicts with defined Items.
		NOTE: If the oredict already exists it will be deleted and new items added.
		---------------------------------------------------------------------------
	*/
	function create(map as IItemStack[][IOreDictEntry]) {
		for oredictName, itemArray in map {
			if (oreDict in oredictName.name) {
				for item in oredictName.items {
					oredictName.remove(item); 
				}
			}
			for item in itemArray {
				oredictName.add(item);
			}
		}
	}

	function createOredict(map as IOreDictEntry[][IOreDictEntry]) {
		for oredictName, oredictArray in map {
			if (oreDict in oredictName.name) {
				for item in oredictName.items {
					oredictName.remove(item); 
				}
			}
			for oredictToAdd in oredictArray {
				oredictName.addAll(oredictToAdd);
			}
		}
	}

	/* 	
		--------------------------------------------------
		Process Arrays of Oredicts with Items for removal.
		--------------------------------------------------
	*/

	function remove(map as IItemStack[][IOreDictEntry]) {
		for oredictName, itemArray in map {
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
		for oredictReplaced, oredictMaster in map {	
			oredictMaster.mirror(oredictReplaced);
		}
	}
}