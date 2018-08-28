//import packages
import mods.initialinventory.InvHandler.addStartingItem as addSpawnItem;

//Full space suit with 4000mb oxygen in a low pressuretank automatically go in the correct armor slots
addSpawnItem(<advancedrocketry:spacehelmet>, 39);
addSpawnItem(<advancedrocketry:spacechestplate>.withTag(lowPressureTank_Oxygen(4000, 0)), 38);
addSpawnItem(<advancedrocketry:spaceleggings>, 37);
addSpawnItem(<advancedrocketry:spaceboots>, 36);

//Thermal protection, has to be manually equipped
addSpawnItem(<galacticraftplanets:thermal_padding>, 1);
addSpawnItem(<galacticraftplanets:thermal_padding:1>, 2);
addSpawnItem(<galacticraftplanets:thermal_padding:2>, 3);
addSpawnItem(<galacticraftplanets:thermal_padding:3>, 4);

//These items are you oxygen emergency kit
addSpawnItem(<advancedrocketry:oxygencharger>, 5);
addSpawnItem(<galacticraftcore:collector>, 6);
addSpawnItem(<galacticraftcore:fluid_pipe>, 7);