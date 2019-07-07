import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static bloomeryAdd as IItemStack[][IItemStack] = {
	<minecraft:iron_ingot:0>: [
		<exnihilocreatio:item_ore_iron:1> * 4
	]
};

function init() {
	charPit.bloomeryRemoveAll();
	charPit.bloomeryAdd(bloomeryAdd);
}