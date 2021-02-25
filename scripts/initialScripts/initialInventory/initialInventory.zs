#priority 5000
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

static addSpawnItems as int[IItemStack] = {
	//Slot numbers: https://i.imgur.com/pJBKExE.jpg
	//int -1 places the items in the first best slot.
	//Full space suit with 16000mb oxygen in a low pressuretank automatically go in the correct armor slots;
	<advancedrocketry:spacehelmet>: 39,
	<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(16000, 0)): 38,
	<advancedrocketry:spaceleggings>: 37,
	<advancedrocketry:spaceboots>: 36,
	//Radiation Items
	<nuclearcraft:geiger_counter>: -1,
	<nuclearcraft:radiation_badge>: -1,
};

function init() {
	spawnItems.add(addSpawnItems);
}