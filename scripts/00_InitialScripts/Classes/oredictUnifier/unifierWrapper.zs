import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

zenClass unifier {
	zenConstructor() {}
	
	function checkOredict(oredict as IOredict, item as IItemStack) {
		if(!(oredict in item)) {
			return true;
		}
	}

	function processItems(preferredMods as string[], oredictEntry as IOreDictEntry[]) {
		for oredictName in oredictEntry {	
			for modID in preferredMods {
				for item in oredictName.items {
					if (item.definition.owner == modID) {
						oredictName.remove(oredictName);
						oredictName.add(item);
					}
					else {
						var firstItem = oredictName.firstItem;
						oredictName.remove(oredictName);
						oredictName.add(firstItem);
					}				
				}
			}
		}
	}
/*
	function ProcessFluids(preferredMods as string[], oredictEntry as IOreDictEntry[]) {
		for modName in preferredMods {
			for oredictName in oredictEntry {
				for fluid in oredictName.items {
					if (fluid.defenition.owner == modName) {

					}
				}
			}
		}
	}
	*/
}