import crafttweaker.item.IItemStack;

static grinderAdd as int[IItemStack][IItemStack] = {
	<factorytech:ore_dust:9>: {
		<exnihilocreatio:item_ore_nickel:0>: 8
	}
};

static grinderRemove as IItemStack[] = [
];

function init() {
	ae2.grinderRemove(grinderRemove);
	ae2.grinderAdd(grinderAdd);
}