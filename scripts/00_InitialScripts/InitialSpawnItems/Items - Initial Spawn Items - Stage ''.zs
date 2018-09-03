//import packages;
import mods.initialinventory.InvHandler.addStartingItem as addSpawnItem;

var SpawnItems as I
//Full space suit with 4000mb oxygen in a low pressuretank automatically go in the correct armor slots;
addSpawnItem(<advancedrocketry:spacehelmet>, 39);
addSpawnItem(<advancedrocketry:spacechestplate>.withTag(pressureTank_Oxygen(4000)), 38);
addSpawnItem(<advancedrocketry:spaceleggings>, 37);
addSpawnItem(<advancedrocketry:spaceboots>, 36);

//Thermal protection, has to be manually equipped;
addSpawnItem(<galacticraftplanets:thermal_padding>, 1);
addSpawnItem(<galacticraftplanets:thermal_padding:1>, 2);
addSpawnItem(<galacticraftplanets:thermal_padding:2>, 3);
addSpawnItem(<galacticraftplanets:thermal_padding:3>, 4);

//These items are your emergency oxygen kit;
addSpawnItem(<advancedrocketry:oxygencharger>, 5);
addSpawnItem(<galacticraftcore:collector>, 6);
addSpawnItem(<galacticraftcore:fluid_pipe>, 7);

function pressureTank_Oxygen(int, int)IData  {
	var oxygenTag as IData = {size: 6, outputItems: [{Slot: 0 as byte, ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "advancedrocketry:pressuretank", Count: 1 as byte, tag: {Fluid: {FluidName: "oxygen", Amount: oxygen}}, Damage: 0 as short }]};	
	return  oxygenTag;
};