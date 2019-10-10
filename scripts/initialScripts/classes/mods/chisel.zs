#priority 9500
#modloaded chisel
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

zenClass chisel {
	zenConstructor() {}

	function chiselAdd(map as IOreDictEntry[][]) {
		for i, oredictEntryArray in map {
			for oredictEntry in oredictEntryArray {
				for item in oredictEntry.items {
					mods.chisel.Carving.addVariation(oredictEntry.name, item);
				}
			}
		}
	}

	function chiselAddTiered(map as IOreDictEntry[][IOreDictEntry]) {
		for oredictEntryTier, oredictEntryArray in map {
			for oredictEntryProduct in oredictEntryArray {
				for item in oredictEntryTier.items {
					mods.chisel.Carving.addVariation(oredictEntryProduct.name, item);
				}
			}
		}
	}

}