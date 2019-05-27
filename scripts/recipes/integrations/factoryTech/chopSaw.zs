import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static chopSawAdd as bool[IIngredient][IItemStack] = {
	<minecraft:planks:0> * 4: {
		<ore:logWood>: true,
		<advancedrocketry:charcoallog:0>: true
	},
	<mekanism:sawdust:0> * 2: {
		<ore:plankWood>: true
	}
};

static chopSawRemove as IItemStack[] = [
	<minecraft:log:0>
];

function init() {
	facTech.chopSawRemove(chopSawRemove);
	facTech.chopSawAdd(chopSawAdd);
}