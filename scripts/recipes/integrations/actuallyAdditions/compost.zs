import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static compostAdd as IItemStack[IItemStack] = {
	<tconstruct:materials:15>: <minecraft:wheat:0>
};

static compostRemove as IItemStack[] = [
];

function init() {
	aa.compostRemove(compostRemove);
	aa.compostAdd(compostAdd);
}