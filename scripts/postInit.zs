#priority -1

/*
	-------------------------
	Execute order of scripts.
	-------------------------
*/
initSpawnItems();
initOredict();
initRecipes();
//initStages();
initDrops();
//initBuildStages();

/*
	-------------------------------------------------
	Functions to define where the init functions are.
	-------------------------------------------------
*/
function initSpawnItems() {
	scripts.initialScripts.initialInventory.initialInventory.init();
}

function initOredict() {
	scripts.oredict.mods.betterQuesting.init();
}

function initRecipes() {	
	/*	
		----------------
		Recipes per mod.
		----------------
	*/
	scripts.recipes.mods.advancedRocketry.init();
}

function initStages() {
	scripts.stages.mods.advancedRocketry.init();
	scripts.stages.mods.betterQuesting.init();

	scripts.stages.mods.minecraft.init();
}

function initDrops() {
	scripts.drops.mods.advancedRocketry.init();
}

function initBuildStages() {
	stager.build();
}