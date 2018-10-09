import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	/*
		--------------
		Copper Ingots.
		--------------
	*/

	/*
		--------------
		Copper Blocks.
		--------------
	*/
	<nuclearcraft:ingot_block:0>: "Copper Block - Purity: (8%)",
	<fp:erz_blocke:2>: "Copper Block - Purity: (23%)",
	<mekanism:basicblock:12>: "Copper Block - Purity: (47.5%)",
	<libvulpes:metal0:4>: "Copper Block - Purity: (78%)",
	<thermalfoundation:storage:0>: "Copper Block - Purity: (98.5%)",
	
	/*
		--------------
		Copper Plates.
		--------------
	*/
	<libvulpes:productplate:4>: "Copper Plate - Thickness: 25mm",
	<tconstruct:large_plate:0>.withTag({Material: "copper"}): "Copper Plate - Thinkness: 18mm",
	<techguns:itemshared:47>: "Copper Plate - Thinkness: 12mm",
	<immersiveengineering:metal:30>: "Copper Plate - Thinkness: 4mm",
	<thermalfoundation:material:320>: "Copper Plate - Thinkness: 2mm"

	/*
		-------------
		Copper Gears.
		-------------
	*/
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<nuclearcraft:ingot_block:0>: {
		["A block of copper with a purity of 8%"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")
			]		
	},
	<fp:erz_blocke:2>: {
		["A block of copper with a purity of 23%"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")
			]
	},
	<mekanism:basicblock:12>: {
		["A block of copper with a purity of 47.5%"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")
			]
	},
	<libvulpes:metal0:4>: {
		["A block of copper with a purity of 78%"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")
			]
	},
	<thermalfoundation:storage:0>: {
		["A block of copper with a purity of 98.5%"]: [
			format.white("You can use this item in recipes with a tier 5 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 5")
			]
	},

	/*
		--------------
		Copper Plates.
		--------------
	*/
	<libvulpes:productplate:4>: {
		["A plate of copper with a Thinkness of 25mm"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")		
		]
	},
	<tconstruct:large_plate:0>.withTag({Material: "copper"}): {
		["A plate of copper with a Thinkness of 18mm"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")		
		]
	},
	<techguns:itemshared:47>: {
		["A plate of copper with a Thinkness of 12mm"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")		
		]
	},

	<immersiveengineering:metal:30>: {
		["A plate of copper with a Thinkness of 4mm"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")		
		]
	},

	<thermalfoundation:material:320>: {
		["A plate of copper with a Thinkness of 2mm"]: [
			format.white("You can use this item in recipes with a tier 5 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 5")		
		]
	}
};

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setTooltipString(itemTooltips);
}