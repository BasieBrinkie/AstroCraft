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
		-------------
		Lead Gears.
		-------------
	*/
};

static unlocalizedNames as string[string] = {
	"tile.thermalfoundation.storage.lead.name": "Lead Block - Purity: (98.7%)",

	"item.thermalfoundation.material.plateLead.name": "Lead Plate - Thickness: 2mm"
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
	/*
		--------------
		Lead Blocks.
		--------------
	*/
	<nuclearcraft:ingot_block:2>: {
		"Lead Block - Purity: (8%)": {[
			format.gray("A block of lead with a purity of 8%")]: [
				format.white("You can use this item in recipes with a tier 1 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 1")
			]}
	},
	<immersiveengineering:storage:2>: {
		"Lead Block - Purity: (47.5%)": {[
			format.gray("A block of lead with a purity of 47.5%")]: [
				format.white("You can use this item in recipes with a tier 3 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 3")
			]}
	},
	<thermalfoundation:storage:3>: {
		"Lead Block - Purity: (98.7%)": {[
			format.gray("A block of lead with a purity of 98.7%")]: [
				format.white("You can use this item in recipes with a tier 5 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 5")
			]}
	},

	/*
		--------------
		Lead Plates.
		--------------
	*/
	<tconstruct:large_plate:0>.withTag({Material: "lead"}): {
		"Lead Plate - Thickness: (18mm)": {[
			format.gray("A plate of lead with a thickness of 18mm")]: [
				format.white("You can use this item in recipes with a tier 2 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 2")		
			]}
	},
	<immersiveengineering:metal:32>: {
		"Lead Plate - Thickness: (4mm)": {[
			format.gray("A plate of lead with a thickness of 4mm")]: [
				format.white("You can use this item in recipes with a tier 4 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 4")		
			]}
	},

	<thermalfoundation:material:323>: {
		"Lead Plate - Thickness: (2mm)": {[
			format.gray("A plate of lead with a thickness of 2mm")]: [
				format.white("You can use this item in recipes with a tier 5 ingredient"),
				format.white("Higher tier ingredients can also be used in recipes with a lower ingredient requirement"),
				format.yellow("Tier 5")		
			]}
	}
};

function init() {
	//itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setName(itemNames);
	itemProperties.setTooltipName(itemTooltips);
}