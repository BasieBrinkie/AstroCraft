import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static compostAdd as IItemStack[IItemStack][IItemStack][IItemStack] = {
	//Basic Resources
	<tconstruct:materials:15>: {<tconstruct:metal:6>:
		{ <minecraft:wheat:0>: <minecraft:leaves:0> }}
};

static compostRemove as IItemStack[] = [
	<actuallyadditions:item_fertilizer:0>,
	<actuallyadditions:item_misc:21>
];

function init() {
	aa.compostRemove(compostRemove);
	aa.compostAdd(compostAdd);
}