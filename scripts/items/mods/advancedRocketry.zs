import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
};

static unlocalizedNames as string[string] = {
};

static itemTooltips as IFormattedText[][IFormattedText[]][string][IItemStack] = {
	<advancedrocketry:oxygencharger:0>: {
		"Oxygen Pad": {[
			format.gray("Charges your spacesuit up with oxygen")]: [
				format.white("If you want to fill up your suit with oxygen you need to pipe in liquid oxygen and stand on top of the pad"),
				format.yellow("Early Game Tip: Put Small Oxygen Crystals in the top slot. That will liquify the oxygen inside the crystals and fill up the internal buffer of the oxygen pad")
			]
		}		
	}
};

function init() {
	itemProperties.setName(itemNames);
	itemProperties.setUnlocalizedName(unlocalizedNames);
	itemProperties.setTooltipName(itemTooltips);
}