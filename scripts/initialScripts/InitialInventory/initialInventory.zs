import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

static addSpawnItems as int[IItemStack] = {
	//Full space suit with 4000mb oxygen in a low pressuretank automatically go in the correct armor slots;
	<advancedrocketry:spacehelmet>: 39,
	<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(4000, 0)): 38,
	<advancedrocketry:spaceleggings>: 37,
	<advancedrocketry:spaceboots>: 36,

	//Thermal protection, has to be manually equipped;
	<galacticraftplanets:thermal_padding>: 1,
	<galacticraftplanets:thermal_padding:1>: 2,
	<galacticraftplanets:thermal_padding:2>: 3,
	<galacticraftplanets:thermal_padding:3>: 4,

	//These items are your emergency oxygen kit;
	<advancedrocketry:oxygencharger>: 5,
	<galacticraftcore:collector>: 6,
	<galacticraftcore:fluid_pipe>: 7,
};

function init() {
	spawnItems.add(addSpawnItems);
}