#priority 9000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.mods.ILoadedMods;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageOxygen1;

import scripts.stages.register.stageDisabledItems;
import scripts.stages.register.stageNonStaged;

zenClass stages {
	zenConstructor() {}

	function setStages(stagedItems as IIngredient[][string]) {
		for stageName, items in stagedItems {
			ZenStager.getStage(stageName).addIngredients(items);
		}
	}

	function disable(disabledItems as IIngredient[]) {
		ZenStager.getStage("stageDisabled").addIngredients(disabledItems);
	}

	function addLeftovers(enabled as bool){
		if(enabled){
			for mod in loadedMods {
				for item in mod.items {
					if(ZenStager.isStaged("ingredient", item)) {}
					else {
						stageNonStaged.addIngredient(item);
					}
				}
			}			//var allIngredients = ingredient.getItems(allItems);
		}
	}

	function build(){
		ZenStager.buildAll();
	}
}