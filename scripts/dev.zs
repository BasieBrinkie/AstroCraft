#priority 100000

/*
	-------------------------------------------------------------------------
	Some dev settings, only change these if you are testing or doing packdev.
	-------------------------------------------------------------------------
*/

global packVersion as string = "0.0.1";

global dev as bool = false; //This setting sets dev mode, without this option you can't enable any option underneath this one if false [default: false]


global devDisableItemProperties as bool = false;//This setting disables the customized item properties if TRUE
global devDisableIntegrations as bool = false;	//This setting disables all custom integrations from crafttweaker supported mods if TRUE
global devDisableAddRecipes as bool = false; 	//This setting will prevent new recipes from being added if TRUE
global devDisableRemoveRecipes as bool = true; 	//This setting will disable the removal of recipes if TRUE
global devDisableStages as bool = false; 		//This setting disables items being staged if TRUE
global devNonStagedItems as bool = false;		//This setting will add all non staged items to a stage if TRUE, might increase the loading time drastically