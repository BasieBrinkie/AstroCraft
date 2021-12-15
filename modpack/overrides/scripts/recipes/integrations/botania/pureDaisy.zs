import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//IIngredient input, IItemStack output, int time
static pureDaisyAdd as int[IIngredient][IItemStack] = {
	//Glacidus Spawn
    <botania:livingrock:0>: {
	    <glacidus:thawed_antinatric_stone:0>: 1600,
        <glacidus:frozen_antinatric_stone:0>: 3600
    }
};

//IIngredient output
static pureDaisyRemove as IIngredient[] = [
];

function init() {
	bot.pureDaisyRemove(pureDaisyRemove);
	bot.pureDaisyAdd(pureDaisyAdd);
}