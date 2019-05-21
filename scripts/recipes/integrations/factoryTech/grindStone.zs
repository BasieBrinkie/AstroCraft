import crafttweaker.item.IItemStack;

static grindstoneAdd as bool[IItemStack][IItemStack] = {
	<factorytech:machinepart:1>: {
		<factorytech:machinepart:11>: true
	},
	<factorytech:machinepart:31>: {
		<factorytech:machinepart:50>: true,
		<factorytech:machinepart:51>: true
	},
	<factorytech:machinepart:71>: {
		<minecraft:iron_ingot:0>: true
	},
	


	<factorytech:machinepart:150>: {
		<minecraft:glass:0>: false
	}

};

static grindstoneRemove as IItemStack[] = [
	<factorytech:intermediate:5>,
	<factorytech:intermediate:6>,
	<factorytech:machinepart:11>,
	<factorytech:machinepart:12>,
	<factorytech:machinepart:13>,
	<factorytech:machinepart:20>,
	<factorytech:machinepart:21>,
	<factorytech:machinepart:22>,
	<factorytech:machinepart:150>,
];

function init() {
	facTech.grindstoneRemove(grindstoneRemove);
	facTech.grindstoneAdd(grindstoneAdd);
}