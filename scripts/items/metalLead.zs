import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	/*
		--------------
		Lead Ingots.
		--------------
	*/

	/*
		--------------
		Lead Blocks.
		--------------
	*/
	<nuclearcraft:ingot_block:2>: "Lead Block - Purity: (8%)",
	<immersiveengineering:storage:2>: "Lead Block - Purity: (47.5%)",
	
	/*
		--------------
		Lead Plates.
		--------------
	*/
	<tconstruct:large_plate>.withTag({Material: "lead"}): "Lead Plate - Thickness: 18mm",
	<immersiveengineering:metal:32>: "Lead Plate - Thickness: 4mm"

	/*
		-------------
		Lead Gears.
		-------------
	*/
};

static unlocalizedNames as string[string] = {
	"tile.thermalfoundation.storage.lead.name": "Lead Block - Purity: (98.5%)",

	"item.thermalfoundation.material.plateLead.name": "Lead Plate - Thickness: 2mm"
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<nuclearcraft:ingot_block:2>: {
		["A block of Lead with a purity of 8%"]: [
			format.white("You can use this item in recipes with a tier 1 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 1")
			]		
	},
	<immersiveengineering:storage:2>: {
		["A block of Lead with a purity of 47.5%"]: [
			format.white("You can use this item in recipes with a tier 3 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 3")
			]
	},
	<thermalfoundation:storage:3>: {
		["A block of Lead with a purity of 98.5%"]: [
			format.white("You can use this item in recipes with a tier 5 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 5")
			]
	},

	/*
		--------------
		Lead Plates.
		--------------
	*/
	<tconstruct:large_plate:0>.withTag({Material: "lead"}): {
		["A plate of Lead with a Thickness of 18mm"]: [
			format.white("You can use this item in recipes with a tier 2 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 2")		
		]
	},
	<immersiveengineering:metal:32>: {
		["A plate of Lead with a Thickness of 4mm"]: [
			format.white("You can use this item in recipes with a tier 4 ingredient"),
			format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
			format.yellow("Tier 4")		
		]
	},

	<thermalfoundation:material:323>: {
		["A plate of Lead with a Thickness of 2mm"]: [
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