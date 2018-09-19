#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

static addSpawnItems as int[IItemStack] = {
	//Full space suit with 4000mb oxygen in a low pressuretank automatically go in the correct armor slots;
	<advancedrocketry:spacehelmet>: 39,
	<advancedrocketry:spacechestplate>.withTag(nbt.pressureTank_Oxygen(4000, 0)): 38,
	<advancedrocketry:spaceleggings>: 37,
	<advancedrocketry:spaceboots>: 36,
};

function init() {
	spawnItems.add(addSpawnItems);
}