import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<nuclearcraft:ingot_block:0>: "Copper Block - Purity (8%)",
	<fp:erz_blocke:2>: "Copper Block - Purity (23%)",
	<mekanism:basicblock:12>: "Copper Block - Purity (47.5%)",
	<libvulpes:metal0:4>: "Copper Block - Purity (78%)",
	<thermalfoundation:storage:0>: "Copper Block - Purity (98.5%)"
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<nuclearcraft:ingot_block:0>: {
		["A block of copper with a purity of 8%"]: [
			"You can use this item in recipes with a tier 1 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 1")
			]		
	},
	<fp:erz_blocke:2>: {
		["A block of copper with a purity of 23%"]: [
			"You can use this item in recipes with a tier 2 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 2")
			]
	},
	<mekanism:basicblock:12>: {
		["A block of copper with a purity of 47.5%"]: [
			"You can use this item in recipes with a tier 3 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 3")
			]
	},
	<libvulpes:metal0:4>: {
		["A block of copper with a purity of 78%"]: [
			"You can use this item in recipes with a tier 4 ingredient",
			"Higher tier ingredients can also be used in recipes with a lower ingredient requirement",
			format.yellow("Tier 4")
			]
	},
	<thermalfoundation:storage:0>: {
		["A block of copper with a purity of 98.5%"]: [
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