import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static bloomeryAdd as IItemStack[][int][IItemStack] = {
	//Asteroids Advanced Resources
	<minecraft:iron_ingot:0>: {
		1: [
			<exnihilocreatio:item_ore_iron:1>,
		],
		3: [
			<exnihilocreatio:item_ore_iron:0>,
		]
	},
};

function init() {
	charPit.bloomeryRemoveAll();
	charPit.bloomeryAdd(bloomeryAdd);
}