import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static itemNames as string[IItemStack] = {
	<evilcraft:dark_stick:0>: "Weak Stick"
};

function init() {
	itemProperties.setName(itemNames);
}