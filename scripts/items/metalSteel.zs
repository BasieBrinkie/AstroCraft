import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {

	/*
		-------------
		Steel Gears.
		-------------
	*/
};

static unlocalizedNames as string[string] = {
	"tile.thermalfoundation.storage.steel.name": "Steel Block - Carbon: (3.8%)",

	"item.thermalfoundation.material.plateSteel.name": "Steel Plate - Thickness: (2mm)"
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
	/*
		--------------
		Steel Ingots.
		--------------
	*/

	<nuclearcraft:alloy:5>: {
		"Steel Ingot - Carbon: (0.05%)": {[
			format.gray("A ingot of Steel with a carbon level of 0.05%"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}
	},
	<mekanism:ingot:4>: {
		"Steel Ingot - Carbon: (0.3%)": {[
			format.gray("A ingot of Steel with a carbon level of 0.3%"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}
	},
	<techguns:itemshared:83>: {
		"Steel Ingot - Carbon: (1.6%)": {[
			format.gray("A ingot of Steel with a carbon level of 1.6%"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}
	},
	<immersiveengineering:metal:8>: {
		"Steel Ingot - Carbon: (3.8%)": {[
			format.gray("A ingot of Steel with a carbon level of 3.8%"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},
	
	/*
		--------------
		Steel Blocks.
		--------------
	*/	
	<bigreactors:blockmetals:5>: {
		"Steel Block - Carbon: (0.05%)": {[
			format.gray("A block of Steel with a carbon level of 0.05%"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}	
	},
	<mekanism:basicblock:5>: {
		"Steel Block - Carbon: (0.3%)":	{[
			format.gray("A block of Steel with a carbon level of 0.3%"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}
	},
	<immersiveengineering:storage:8>: {
		"Steel Block - Carbon: (1.6%)": {[
			format.gray("A block of Steel with a carbon level of 1.6%"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")				
			]
		}
	},
	<thermalfoundation:storage_alloy:0>: {
		"Steel Block - Carbon: (3.8%)":	{[
			format.gray("A block of Steel with a carbon level of 3.8%"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	/*
		--------------
		Steel Plates.
		--------------
	*/
	<libvulpes:productplate:6>: {
		"Steel Plate - Thickness: (25mm)": {[
			format.gray("A plate of steel with a thickness of 25mm"),
			format.yellow("Tier 1")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")	
			]}
	},
	<tconstruct:large_plate:0>.withTag({Material: "steel"}): {
		"Steel Plate - Thickness: (18mm)": {[
			format.gray("A plate of steel with a thickness of 18mm"),
			format.yellow("Tier 2")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	<immersiveengineering:metal:38>: {
		"Steel Plate - Thickness: (4mm)": {[
			format.gray("A plate of steel with a thickness of 4mm"),
			format.yellow("Tier 3")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement")
			]
		}
	},

	<thermalfoundation:material:352>: {
		"Steel Plate - Thickness: (2mm)": {[
			format.gray("A plate of steel with a thickness of 2mm"),
			format.yellow("Tier 4")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
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