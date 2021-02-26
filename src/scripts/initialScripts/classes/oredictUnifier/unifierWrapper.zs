#priority 9000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

zenClass unifier {
	zenConstructor() {}
	
	function checkOredict(oredictName as IOreDictEntry, item as IItemStack) as bool {
		if(oredictName in item) {
			return true;
		}
	}

	function processItems(preferredMods as string[], oredictEntry as IOreDictEntry[]) {
		for oredictName in oredictEntry {	
			for modID in preferredMods {
				for item in oredictName.items {
					if (!(item.definition.owner == modID)) {
						oredictName.remove(item);
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