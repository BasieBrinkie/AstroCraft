import crafttweaker.item.IItemStack;

static metalCutterAdd as bool[IItemStack][IItemStack] = {
	<mysticalagriculture:crafting:22>: {
		<libvulpes:productingot:9>: true
	}
};

static metalCutterRemove as IItemStack[] = [
	<factorytech:intermediate:5>,
	<factorytech:intermediate:6>,
	<factorytech:machinepart:20>,
	<factorytech:machinepart:11>,
	<factorytech:machinepart:12>,
	<factorytech:machinepart:13>,
	<factorytech:machinepart:21>,
	<factorytech:machinepart:22>
];

function init() {
	facTech.metalCutterRemove(metalCutterRemove);
	facTech.metalCutterAdd(metalCutterAdd);
}