import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<minecraft:iron_axe:0>: "Steel Axe",
	<minecraft:iron_hoe:0>: "Steel Hoe",
	<minecraft:iron_pickaxe:0>: "Steel Pickaxe",
	<minecraft:iron_shovel:0>: "Steel Shovel",
	<minecraft:stick:0>: "Weak Stick"
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