import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static itemNames as string[IItemStack] = {
	<evilcraft:dark_stick:0>: "Weak Stick"
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