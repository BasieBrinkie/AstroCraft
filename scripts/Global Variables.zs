#priority 9999

import crafttweaker.data.IData;

//Global item variables for '00 - Inital Scripts', These variables can also be used in further stages but are first introduced in this stage;

//Variable for pressure tanks from Advanced Rocketry;
//Syntax: PressureTank_Oxygen(oxygen in mb);

global lowPressureTank_Oxygen as function(int)IData = function (oxygen as int) as IData {
	var oxygenTag as IData = {size: 6, outputItems: [{Slot: 0 as byte, ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "advancedrocketry:pressuretank", Count: 1 as byte, tag: {Fluid: {FluidName: "oxygen", Amount: oxygen}}, Damage: 0 as short }]};	
	return  oxygenTag;
};

