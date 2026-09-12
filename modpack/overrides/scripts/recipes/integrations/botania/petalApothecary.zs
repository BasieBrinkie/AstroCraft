import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//IIngredient input, IItemStack output, int time
static apothecaryAdd as IIngredient[][IItemStack] = {
	//Glacidus Spawn
    <minecraft:stone>: {[<glacidus:thawed_antinatric_stone:0>]}
};

//IIngredient output
static apothecaryRemove as IIngredient[] = [
];

function init() {
	bot.apothecaryRemove(apothecaryRemove);
	bot.apothecaryAdd(apothecaryAdd);
}