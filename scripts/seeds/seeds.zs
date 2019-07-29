import crafttweaker.item.WeightedItemStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static removeSeedDrops as IItemStack[] = [
];

static newSeedList as WeightedItemStack[] = [
	<minecraft:dye:15> % 44
];

function init() {
	for removeSeed in removeSeedDrops {
		vanilla.seeds.removeSeed(removeSeed);
	}
	for newSeed in newSeedList {
		vanilla.seeds.addSeed(newSeed);
	}
}