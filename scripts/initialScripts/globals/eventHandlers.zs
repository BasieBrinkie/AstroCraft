#priority 8500
/* 	
	-------------------------------------------------------------------------
	This script will build all classes so it can be used inside every script.
	-------------------------------------------------------------------------
*/

/*
	------------------------------------
	Loads classes for all Eventhandlers.
	------------------------------------
*/
global blockDrop as scripts.initialScripts.classes.events.blockDrop.blockDrop = scripts.initialScripts.classes.events.blockDrop.blockDrop();

global mobDrop as scripts.initialScripts.classes.events.eventMobDrops = scripts.initialScripts.classes.events.eventMobDrops();