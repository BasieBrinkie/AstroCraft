#priority 8500
/* 	
	-------------------------------------------------------------------------
	This script will build all classes so it can be used inside every script.
	-------------------------------------------------------------------------
*/

/* 
	---------------------------------------------------------------
	Load classes from crafttweakerMods folder and make them global.
	---------------------------------------------------------------
*/
//	Initial inventory class
global spawnItems as scripts.initialScripts.classes.mods.initialInventory.spawnItems = scripts.initialScripts.classes.mods.initialInventory.spawnItems();

//	ZenStager class
global stager as scripts.initialScripts.classes.mods.zenStager.stages = scripts.initialScripts.classes.mods.zenStager.stages();

/*
	--------------------------------------
	Load classes for all Eventhandlers.
	--------------------------------------
*/

global blockDrop as scripts.initialScripts.classes.events.blockDrop.blockDrop = scripts.initialScripts.classes.events.blockDrop.blockDrop();
/*
	--------------------------------------
	Load classes for all default wrappers.
	--------------------------------------
*/

global oredictBuilder as scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder = scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder();
global unifier as scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier = scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier();
global recipeBuilder as scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder = scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder();
global nbt as scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt = scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt();