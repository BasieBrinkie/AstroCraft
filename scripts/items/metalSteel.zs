import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	/*
		--------------
		Steel Ingots.
		--------------
	*/

	/*
		--------------
		Steel Blocks.
		--------------
	*/
	<bigreactors:blockmetals:5>: "Steel Block - Carbon: (0.05%)",
	<tp:steel_block:0>: "Steel Block - Carbon: (0.3%)",
	<mekanism:basicblock:5>: "Steel Block - Carbon: (0.7%)",
	<immersiveengineering:storage:8>: "Steel Block - Carbon: (1.6%)",
	<thermalfoundation:storage_alloy:0>: "Steel Block - Carbon: (3.8%)",
	
	/*
		--------------
		Steel Plates.
		--------------
	*/
	<libvulpes:productplate:4>: "Steel Plate - Thickness: 25mm",
	<tconstruct:large_plate:0>.withTag({Material: "Steel"}): "Steel Plate - Thinkness: 18mm",
	<techguns:itemshared:47>: "Steel Plate - Thinkness: 12mm",
	<immersiveengineering:metal:30>: "Steel Plate - Thinkness: 4mm",
	<thermalfoundation:material:320>: "Steel Plate - Thinkness: 2mm"

	/*
		-------------
		Steel Gears.
		-------------
	*/
};



static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<bigreactors:blockmetals:5>: {
		["A block of Steel with a purity of 36%"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")
			]		
	},
	<tp:steel_block:0>: {
		["A block of Steel with a purity of 43%"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")
			]
	},
	<mekanism:basicblock:5>: {
		["A block of Steel with a purity of 56%"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")
			]
	},
	<immersiveengineering:storage:8>: {
		["A block of Steel with a purity of 82%"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")
			]
	},
	<thermalfoundation:storage_alloy:0>: {
		["A block of Steel with a purity of 99.8%"]: [
			format.white("You can use this item in recipes with a tier 5 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 5")
			]
	},

	/*
		--------------
		Steel Plates.
		--------------
	*/
	<libvulpes:productplate:6>: {
		["A plate of Iron with a Thinkness of 25mm"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")		
		]
	},
	<tconstruct:large_plate:0>.withTag({Material: "steel"}): {
		["A plate of Iron with a Thinkness of 18mm"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")		
		]
	},
	<techguns:itemshared:50>: {
		["A plate of Iron with a Thinkness of 12mm"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")		
		]
	},

	<immersiveengineering:metal:38>: {
		["A plate of Iron with a Thinkness of 4mm"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")		
		]
	},

	<thermalfoundation:material:352>: {
		["A plate of Iron with a Thinkness of 2mm"]: [
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