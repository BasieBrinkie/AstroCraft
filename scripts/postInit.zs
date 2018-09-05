#priority -100

import mods.zenstages.ZenStager;

/*
	----------------------
	Load order of scripts.
	----------------------
*/
initClasses();
initRecipes();

/*
	-------------------------------------------------
	Functions to define where the init functions are.
	-------------------------------------------------
*/

function initClasses() {
	scripts.00_InitialScripts.Classes.classBuilder.init();
}

function initRecipes() {
	
	/*	-------------------------------------------------
		Recipes per mod
		-------------------------------------------------
	*/
	scripts.01_Recipes.Mods.Galacticraftcore.init();
}