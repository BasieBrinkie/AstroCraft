#priority -1

import mods.zenstages.ZenStager;

/*
	----------------------
	Load order of scripts.
	----------------------
*/
initSpawnItems();
initOredict();
initRecipes();

ZenStager.buildAll();
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
	scripts.recipes.mods.galacticraftCore.init();
}