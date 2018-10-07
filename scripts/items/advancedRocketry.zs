import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static itemNames as string[IItemStack] = {
	<advancedrocketry:oxygencharger:0>: "Oxygen Pad"
};

static itemTooltips as IFormattedText[][string[]][IItemStack] = {
	<advancedrocketry:oxygencharger:0>: {
		["Charges your spacesuit up with oxygen"]: [
			"If you want to fill up your suit with oxygen you need to pipe in liquid oxygen",
			format.yellow("EARLY GAME TIP: Put small oxygen crystals in the top slot which will liquify the oxygen inside the crystals")
			]		
	}
}
function init() {
	itemProperties.setName(itemNames);
}