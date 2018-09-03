 #priority -100

 import mods.zenstages.ZenStager;
/*
	-----------------------------------
	Load order of scripts
	-----------------------------------
*/
initRecipes();

function initRecipes() {
	//Recipes for each mod
	scripts.crafttweaker.01-Recipes.Mods.Galacticraftcore.init();
}