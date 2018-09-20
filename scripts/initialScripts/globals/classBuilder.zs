#priority 8500
/* 	
	-------------------------------------------------------------------------
	This script will build all classes so it can be used inside every script.
	-------------------------------------------------------------------------
*/

/*
	--------------------------------------
	Load classes for all default wrappers.
	--------------------------------------
*/

global oredictBuilder as scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder = scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder();
global unifier as scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier = scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier();
global recipeBuilder as scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder = scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder();
global nbt as scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt = scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt();