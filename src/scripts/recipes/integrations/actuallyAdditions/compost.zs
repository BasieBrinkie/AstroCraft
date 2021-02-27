import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static compostAdd as IItemStack[IItemStack][IItemStack][IItemStack] = {
	//Basic Resources
	<tconstruct:materials:15> * 2: {<tconstruct:metal:6>: { 
		<minecraft:wheat:0>: <minecraft:leaves:0>}},

	//Farmer One
	<actuallyadditions:item_canola_seed:0>: { <thebetweenlands:swamp_dirt:0>: {
		<minecraft:wheat_seeds:0>: <minecraft:leaves2:0>}},

};

static compostRemove as IItemStack[] = [
	<actuallyadditions:item_fertilizer:0>,
	<actuallyadditions:item_misc:21>
];

function init() {
	aa.compostRemove(compostRemove);
	aa.compostAdd(compostAdd);
}