#priority 9000
#modloaded zenstages mobstages
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.mods.IMod;

import mods.MobStages;
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

	/*
		--------------------
		MobStages functions.
		--------------------
	*/
	function mobSetStage(map as string[][string]) {
		for stage, mobArray in map {
			for mob in mobArray {
				MobStages.addStage(stage, mob);
			}
		}
	}
	
	function mobSetStageDim(map as string[][string][int]) {
		for dimension, stageArray in map {
			for stage, mobArray in stageArray {
				for mob in mobArray {
					MobStages.addStage(stage, mob, dimension);
				}
			}
		}
	}

	function mobReplace(map as string[][string]) {
		for replacementMob, stagedMobsArray in map {
			for stagedMob in stagedMobsArray {
				MobStages.addReplacement(stagedMob, replacementMob);
			}
		} 
	}

	function mobReplaceDim(map as string[][string][int]) {
		for dimension, stageArray in map {
			for replacementMob, stagedMobsArray in stageArray {
				for stagedMob in stagedMobsArray {
					MobStages.addReplacement(stagedMob, replacementMob);
				}
			} 
		}
	}

	function mobRange(map as string[][int]) {
		for range, mobArray in map {
			for mob in mobArray {
				MobStages.addRange(mob, range);
			}
		}
	}

	function mobSpawnerAllowed(map as string[]) {
		for mob in map {
			MobStages.toggleSpawner(mob, true);
		}
	}

	function mobSpawnerAllowedDim(map as string[][int]) {
		for dimension, mobArray in map {
			for mob in mobArray {
				MobStages.toggleSpawner(mob, true, dimension);
			}
		}
	}
}