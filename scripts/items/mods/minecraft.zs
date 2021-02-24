import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<minecraft:stick:0>: "Weak Stick"
};

static unlocalizedNames as string[string] = {
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
	<minecraft:crafting_table:0>: {
		"Crafting Table": {[
			format.gray("The crafting table is created by right-clicking a charcoal log")
			]: [null]
		}		
	}
};

static harvestLevel as IItemStack[][int][string] = {
	"pickaxe": {
		2: [
			<minecraft:obsidian:0>
		]
	}
};

static harvestLevels as IItemStack[][int][string] = {
	
}

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setTooltipName(itemTooltips);
	itemProperties.setHarvestLevel(harvestLevel);

	mods.jei.JEI.addDescription(<minecraft:crafting_table:0>, ["The crafting table is created by right-clicking a charcoal log"]);
}