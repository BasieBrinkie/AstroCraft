import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<factorytech:machinepart:1>: "Poor Iron Saw Blade",
	<factorytech:machinepart:11>: "Poor Iron Gear",
	<factorytech:machinepart:31>: "Poor Iron Blade",
	<factorytech:machinepart:50>: "Poor Iron Shaft",
	<factorytech:machinepart:71>: "Poor Iron Drillbit"
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