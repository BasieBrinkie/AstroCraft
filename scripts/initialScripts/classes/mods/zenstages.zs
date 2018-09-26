#priority 9500
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.mods.ILoadedMods;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageNonStaged;

zenClass zenStagerWrapper {
	zenConstructor() {}

	function setStage(stagedItems as IIngredient[][string]) {
		for stageName, items in stagedItems {
			ZenStager.getStage(stageName).addIngredients(items);
		}
	}

	function stageExist(stageName as string) as bool {
		if (!isNull(ZenStager.getStage(stageName))) {
			return true;
		}
	}

	function disable(disabledItems as IIngredient[]) {
		ZenStager.getStage("disabled_items").addIngredients(disabledItems);
	}

	function addLeftovers(enabled as bool){
		if(enabled){
			for modName in loadedMods {
				for item in modName.items {
					if(ZenStager.isStaged("ingredient", item)) {}
					else {
						stageNonStaged.addIngredient(item);
					}
				}
			}
		}
	}

	function build(){
		ZenStager.buildAll();
	}
}