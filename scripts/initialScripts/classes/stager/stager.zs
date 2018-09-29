#priority 9000
#modloaded zenstages MobStages
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.ILoadedMods;

import mods.MobStages;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

import scripts.stages.register.stageNonStaged;

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

	function disable(map as IIngredient[]) {
		ZenStager.getStage("disabled_items").addIngredients(map);
	}

	function addLeftovers(map as bool){
		if(map){
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
	
	function build() {
		ZenStager.buildAll();
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
					MobStages.addStage(stage, mob);
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

	function mobRangeDim(map as string[][int][int]) {
		for dimension, rangeArray in map {
			for range, mobArray in rangeArray {
				for mob in mobArray {
					MobStages.addRange(mob, range);
				}
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