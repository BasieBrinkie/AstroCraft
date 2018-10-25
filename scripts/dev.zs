#priority 100000

/*
	-------------------------------------------------------------------------
	Some dev settings, only change these if you are testing or doing packdev.
	-------------------------------------------------------------------------
*/

global packVersion as string = "0.0.1";

global dev as bool = true; //This setting disables the removal off recipes
global devStages as bool = false; //This setting add all non staged items to a stage, might up the loading time drastically
global devItemProperties as bool = false; //This setting disables the customized item properties