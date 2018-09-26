#priority 9000
import scripts.initialScripts.classes.mods.zenstages.zenStagerWrapper;
import scripts.initialScripts.classes.mods.mobstages.mobStagerWrapper;

zenClass stager {
	zenConstructor() {}

	/*
		--------------------
		ZenStages functions.
		--------------------
	*/
	function setStage(map as IIngredient[][string]) {
		zenStagerWrapper.setStage(map);
	}

	function stageExist(map as string) as bool {
		return zenStagerWrapper.stageExist(map);
	}

	function disable(map as IIngredient[]) {
		zenStagerWrapper.disable(map);
	}

	function addLeftovers(map as bool){
		zenStagerWrapper.addLeftovers(map);
	}

	function build() {
		zenStagerWrapper.build();
	}

	/*
		--------------------
		MobStages functions.
		--------------------
	*/
	function mobSetStage(map as string[][string]) {
		mobStagerWrapper.mobSetStage(map);
	}

	function mobSetStageDim(map as string[][string][int]) {
		mobStagerWrapper.mobSetStageDim(map);
	}

	function mobReplace(map as string[][string]) {
		mobStagerWrapper.mobReplace(map);
	}
	
	function mobReplaceDim(map as string[][string][int]) {
		mobStagerWrapper.mobReplaceDim(map);
	}

	function mobRange(map as string[][int]) {
		mobStagerWrapper.mobRange(map);
	}

	function mobRangeDim(map as string[][int][int]) {
		mobStagerWrapper.mobRangeDim(map);
	}

	function mobSpawnerAllowed(map as string[]) {
		mobStagerWrapper.mobSpawnerAllowed(map);
	}

	function mobSpawnerAllowedDim(map as string[][int]) {
		mobStagerWrapper.mobSpawnerAllowedDim(map);
	}
}