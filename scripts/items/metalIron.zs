import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {


	/*
		-------------
		Iron Gears.
		-------------
	*/
};

static unlocalizedNames as string[string] = {
	"item.thermalfoundation.material.plateIron.name": "Iron Plate - Thickness: (2mm)"
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
	/*
		--------------
		Iron Ingots.
		--------------
	*/	
	<minecraft:iron_ingot:0>: {
		"Iron Ingot - Purity: (8%)": {[
			format.gray("A ingot of iron with a purity of 8%"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	<pneumaticcraft:ingot_iron_compressed:0>: {
		"Iron Block - Purity: (23%)": {[
			format.gray("A block of iron with a purity of 23%"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}		
	},
	<libvulpes:productingot:6>: {
		"Iron Block - Purity: (47.5%)": {[
			format.gray("A block of iron with a purity of 47.5%"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}		
	},
	<nuclearcraft:alloy:7>: {
		"Iron Block - Purity: (78%)": {[
			format.gray("A block of iron with a purity of 78%"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}		
	},
	<vampirism:blood_infused_iron_ingot:0>: {
		"Iron Block - Purity: (98.7%)": {[
			format.gray("A block of iron with a purity of 98.7%"),
			format.yellow("Tier 5")]: [
				format.white("You can use this item in recipes with a tier 5 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}		
	},
	/*
		--------------
		Iron Blocks.
		--------------
	*/	
	<minecraft:iron_block:0>: {
		"Iron Block - Purity: (8%)": {[
			format.gray("A block of iron with a purity of 8%"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}		
	},
	<pneumaticcraft:compressed_iron_block:0>: {
		"Iron Block - Purity: (23%)": {[
			format.gray("A block of iron with a purity of 23%"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	<libvulpes:metal0:6>: {
		"Iron Block - Purity: (47.5%)": {[
			format.gray("A block of iron with a purity of 47.5%"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	<immersiveengineering:sheetmetal:9>: {
		"Iron Block - Purity: (78%)": {[
			format.gray("A block of iron with a purity of 78%"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	<actuallyadditions:block_misc:9>: {
		"Iron Block - Purity: (98.7%)":	{[
			format.gray("A block of iron with a purity of 98.7%"),
			format.yellow("Tier 5")]: [
				format.white("You can use this item in recipes with a tier 5 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	/*
		--------------
		Iron Plates.
		--------------
	*/
	<libvulpes:productplate:1>: {
		"Iron Plate - Thickness: (25mm)": {[
			format.gray("A plate of iron with a thickness of 25mm"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	<tconstruct:large_plate:0>.withTag({Material: "iron"}): {
		"Iron Plate - Thickness: (18mm)": {[
			format.gray("A plate of iron with a thickness of 18mm"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")	
			]
		}
	},
	<techguns:itemshared:46>: {
		"Iron Plate - Thickness: (12mm)": {[	
			format.gray("A plate of iron with a thickness of 12mm"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	<immersiveengineering:metal:39>: {
		"Iron Plate - Thickness: (4mm)": {[
			format.gray("A plate of iron with a thickness of 4mm"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	<thermalfoundation:material:32>: {
		"Iron Plate - Thickness: (2mm)": {[
			format.gray("A plate of iron with a thickness of 2mm"),
			format.yellow("Tier 5")	]: [
				format.white("You can use this item in recipes with a tier 5 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")	
			]
		}
	}
};

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setTooltipName(itemTooltips);
}