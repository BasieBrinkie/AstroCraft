import crafttweaker.item.IItemStack;

static chopSawAdd as bool[IItemStack][IItemStack] = {
	<minecraft:planks:0> * 4: {
		<factorytech:machinepart:50>: true,
		<factorytech:machinepart:51>: true
	},

};

static chopSawRemove as IItemStack[] = [
];

function init() {
	facTech.chopSawRemove(chopSawRemove);
	facTech.chopSawAdd(chopSawAdd);
}