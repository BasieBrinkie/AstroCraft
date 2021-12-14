#priority 9000
#modloaded zenstages
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

zenClass stager {
	zenConstructor() {}

	/*
		--------------------
		ZenStages functions.
		--------------------
	*/
	function setStage(map as IIngredient[][string]) {
		for stageName, itemArray in map {
			ZenStager.getStage(stageName).addIngredients(itemArray);
		}
	}

	function setLiquidStage(map as ILiquidStack[][string]) {
		for stageName, liquidArray in map {
			ZenStager.getStage(stageName).addIngredients(liquidArray);
			
			for liquid in liquidArray {
				if(liquid.name == "water" | liquid.name == "lava") {}
				else {
					ZenStager.getStage(stageName).addIngredient(<forge:bucketfilled>.withTag({FluidName: liquid.name, Amount: 1000}));
				}
			} 
		}
	}

	function setStageOredict(map as IOreDictEntry[][string]) {
		for stageName, oredictArray in map {
			for oredictEntry in oredictArray {
				for item in oredictEntry.items {
					ZenStager.getStage(stageName).addIngredient(item);
				}
			}
		}
	}

	function disable(map as IIngredient[]) {
		ZenStager.getStage("disabled_items").addIngredients(map);
	}

	function addLeftovers() {
		print("----------------------- Stages: Non Staged Items -----------------------");
		for modName in loadedMods {
			for item in modName.items {
				if(!ZenStager.isStaged("ingredient", item)) {
					stageNonStaged.addIngredient(item);
				}
			}
		}
		ZenStager.buildAll();
	}

	function build() {
		ZenStager.buildAll();
		if(devNonStagedItems | !dev) {
			addLeftovers();
		}
	}

}