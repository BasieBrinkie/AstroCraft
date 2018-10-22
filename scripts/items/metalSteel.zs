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
	
	/*
		--------------
		Steel Plates.
		--------------
	*/
	<libvulpes:productplate:4>: "Steel Plate - Thickness: 25mm",
	<tconstruct:large_plate:0>.withTag({Material: "Steel"}): "Steel Plate - Thickness: 18mm",
	<techguns:itemshared:47>: "Steel Plate - Thickness: 12mm",
	<immersiveengineering:metal:30>: "Steel Plate - Thickness: 4mm"

	/*
		-------------
		Steel Gears.
		-------------
	*/
};

static unlocalizedNames as string[string] = {
	"tile.thermalfoundation.storage.steel.name": "Steel Block - Carbon: (3.8%)",

	"item.thermalfoundation.material.plateSteel.name": "Steel Plate - Thickness: 2mm"
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<bigreactors:blockmetals:5>: {
		["A block of Steel mixture with a carbon level of 0.05%"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")
			]		
	},
	<tp:steel_block:0>: {
		["A block of Steel mixture with a carbon level of 0.3%"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")
			]
	},
	<mekanism:basicblock:5>: {
		["A block of Steel wmixture with a carbon level of 0.7%"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")
			]
	},
	<immersiveengineering:storage:8>: {
		["A block of Steel mixture with a carbon level of 1.6%"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")
			]
	},
	<thermalfoundation:storage_alloy:0>: {
		["A block of Steel mixture with a carbon level of 3.8%"]: [
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
		["A plate of Iron with a Thickness of 25mm"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")		
		]
	},
	<tconstruct:large_plate:0>.withTag({Material: "steel"}): {
		["A plate of Iron with a Thickness of 18mm"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")		
		]
	},
	<techguns:itemshared:50>: {
		["A plate of Iron with a Thickness of 12mm"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")		
		]
	},

	<immersiveengineering:metal:38>: {
		["A plate of Iron with a Thickness of 4mm"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")		
		]
	},

	<thermalfoundation:material:352>: {
		["A plate of Iron with a Thickness of 2mm"]: [
			format.white("You can use this item in recipes with a tier 5 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 5")		
		]
	}
};

function init() {
	itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setName(itemNames);
	itemProperties.setTooltipString(itemTooltips);
}