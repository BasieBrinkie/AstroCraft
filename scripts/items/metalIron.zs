import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	/*
		--------------
		Iron Ingots.
		--------------
	*/

	/*
		--------------
		Iron Blocks.
		--------------
	*/
	<minecraft:iron_block:0>: "Iron Block - Purity: (8%)",
	<pneumaticcraft:compressed_iron_block:0>: "Iron Block - Purity: (23%)",
	<libvulpes:metal0:6>: "Iron Block - Purity: (47.5%)",
	<immersiveengineering:sheetmetal:9>: "Iron Block - Purity: (78%)",
	<actuallyadditions:block_misc:9>: "Iron Block - Purity: (98.5%)",
	
	/*
		--------------
		Iron Plates.
		--------------
	*/
	<libvulpes:productplate:1>: "Iron Plate - Thickness: 25mm",
	<tconstruct:large_plate:0>.withTag({Material: "iron"}): "Iron Plate - Thinkness: 18mm",
	<techguns:itemshared:46>: "Iron Plate - Thinkness: 12mm",
	<immersiveengineering:metal:39>: "Iron Plate - Thinkness: 4mm",
	<thermalfoundation:material:32>: "Iron Plate - Thinkness: 2mm"

	/*
		-------------
		Iron Gears.
		-------------
	*/
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<minecraft:iron_block:0>: {
		["A block of Iron with a purity of 8%"]: [
			"You can use this item in recipes with a tier 1 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 1")
			]		
	},
	<pneumaticcraft:compressed_iron_block:0>: {
		["A block of Iron with a purity of 23%"]: [
			"You can use this item in recipes with a tier 2 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 2")
			]
	},
	<libvulpes:metal0:6>: {
		["A block of Iron with a purity of 47.5%"]: [
			"You can use this item in recipes with a tier 3 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 3")
			]
	},
	<immersiveengineering:sheetmetal:9>: {
		["A block of Iron with a purity of 78%"]: [
			"You can use this item in recipes with a tier 4 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 4")
			]
	},
	<actuallyadditions:block_misc:9>: {
		["A block of Iron with a purity of 98.5%"]: [
			"You can use this item in recipes with a tier 5 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 5")
			]
	},

	/*
		--------------
		Iron Plates.
		--------------
	*/
	<libvulpes:productplate:1>: {
		["A plate of Iron with a Thinkness of 25mm"]: [
			"You can use this item in recipes with a tier 1 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 1")		
		]
	},
	<tconstruct:large_plate:0>.withTag({Material: "iron"}): {
		["A plate of Iron with a Thinkness of 18mm"]: [
			"You can use this item in recipes with a tier 2 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 2")		
		]
	},
	<techguns:itemshared:46>: {
		["A plate of Iron with a Thinkness of 12mm"]: [
			"You can use this item in recipes with a tier 3 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 3")		
		]
	},

	<immersiveengineering:metal:39>: {
		["A plate of Iron with a Thinkness of 4mm"]: [
			"You can use this item in recipes with a tier 4 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 4")		
		]
	},

	<thermalfoundation:material:32>: {
		["A plate of Iron with a Thinkness of 2mm"]: [
			"You can use this item in recipes with a tier 5 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 5")		
		]
	}
};

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setTooltip(itemTooltips);
}