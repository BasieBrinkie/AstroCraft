import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<excompressum:wooden_crucible>: "Wooden Crucible"
};

static unlocalizedNames as string[string] = {
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
};

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setTooltipName(itemTooltips);
}