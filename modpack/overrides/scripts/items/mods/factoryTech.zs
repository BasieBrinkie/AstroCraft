import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.formatting.IFormattedText;

static itemNames as string[IItemStack] = {
	<factorytech:circuit_intermediate:0>: "Etched Calculation Pattern",
	<factorytech:circuit_intermediate:1>: "Etched Spatial Pattern",
	<factorytech:circuit_intermediate:2>: "Etched Scanning Pattern",
	<factorytech:circuit_intermediate:3>: "Etched Wireless Pattern",

	<factorytech:machinepart:22>: "Heat Treated Wire",

	<factorytech:machinepart:111>: "Tritanium Scanning Circuit Board",
	<factorytech:machinepart:121>: "Tritanium Wireless Circuit Board",

	<factorytech:circuit_intermediate:0>: "Etched Calculation Pattern (Pattern 1)",
	<factorytech:circuit_intermediate:1>: "Etched Spatial Pattern (Pattern 2)",
	<factorytech:circuit_intermediate:2>: "Etched Scanning Pattern (Pattern 3)",
	<factorytech:circuit_intermediate:3>: "Etched Wireless Pattern (Pattern 4)",
	<factorytech:circuit_intermediate:8>: "Blank Circuit Pattern",

	<factorytech:machinepart:1>: "Poor Iron Saw Blade",
	<factorytech:machinepart:11>: "Poor Iron Gear",
	<factorytech:machinepart:31>: "Poor Iron Blade",
	<factorytech:machinepart:50>: "Poor Iron Shaft",
	<factorytech:machinepart:71>: "Poor Iron Drillbit",

	//Circuit Boards
	<factorytech:machinepart:90>: "Calculation Circuit Board (Pattern 1)",
	<factorytech:machinepart:100>: "Spatial Circuit Board (Pattern 2)",
	<factorytech:machinepart:111>: "Scanning Circuit Board (Pattern 3)",
	<factorytech:machinepart:121>: "Wirelessu Circuit Board (Pattern 4)",

	<factorytech:machinepart:4>: "Steel Saw Blade",
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