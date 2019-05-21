#priority 8500
#modloaded zenstages
/* 	
	-------------------------------------------------------------------------
	This script will build all classes so it can be used inside every script.
	-------------------------------------------------------------------------
*/

/*
	---------------------------------------
	Loads classes for all default wrappers.
	---------------------------------------
*/
global itemProperties as scripts.initialScripts.classes.itemProperties.itemProperties.itemProperties = scripts.initialScripts.classes.itemProperties.itemProperties.itemProperties();

global tooltipGen as scripts.initialScripts.classes.itemProperties.tooltipGen.tooltipGen = scripts.initialScripts.classes.itemProperties.tooltipGen.tooltipGen();

global nbt as scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt = scripts.initialScripts.classes.nbtBuilder.nbtBuilder.nbt();

global oredictBuilder as scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder = scripts.initialScripts.classes.oredictBuilder.oredictWrapper.oredictBuilder();

global unifier as scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier = scripts.initialScripts.classes.oredictUnifier.unifierWrapper.unifier();

global recipeBuilder as scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder = scripts.initialScripts.classes.recipeBuilder.recipeWrapper.recipeBuilder();

global stager as scripts.initialScripts.classes.stager.stager.stager = scripts.initialScripts.classes.stager.stager.stager();