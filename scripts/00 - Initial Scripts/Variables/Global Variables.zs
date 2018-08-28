//Global item variables for '00 - Inital Scripts', These variables can also be used in further stages but are first introduced in this stage;

//Variable for pressure tanks from Advanced Rocketry, 
//Syntax: PressureTank_Oxygen(oxygen in mb, tier 0,1,2,3 where 0 is lowest tier);

global PressureTank_Oxygen as function(int, int)IData = function (oxygen as int, tier as int) as IData {
	var oxygenTag = {size: 6, outputItems: [{Slot: 0 as byte, ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "advancedrocketry:pressuretank", Count: 1 as byte, tag: {Fluid: {FluidName: "oxygen", Amount: oxygen}}, Damage: tier as short }]};	
	return  oxygenTag;
};

