import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static compressionChamberAdd as ILiquidStack[IIngredient][IItemStack] = {
	//Professions Stage 1
	<mekanism:ingot:4>: {
		<immersiveengineering:material:17>: <liquid:iron> * 144
	},
	<thermalfoundation:material:802>: {
		<minecraft:coal:0>: null
	},

	//Oxygen Extractor
	// <jurassicraft:plant_cells:0>: {
	// 	<minecraft:leaves:0>: <liquid:nickel> * 1296
	// },
};

static compressionChamberRemove as IItemStack[] = [
	<factorytech:core_unfinished:0>,
	<factorytech:core_unfinished:99>,
	<factorytech:machinepart:62>,
	<factorytech:machinepart:140>,
	<factorytech:machinepart:141>,
	<factorytech:tank:1>,
	<factorytech:tank:2>,
	<factorytech:tank:3>,
	<factorytech:tank:4>,
	<factorytech:tank:5>,
	<factorytech:tank:6>,
	<factorytech:tank:7>,
];

function init() {
	//facTech.compressionChamberRemove(compressionChamberRemove);
	facTech.compressionChamberRemoveAll();
	facTech.compressionChamberAdd(compressionChamberAdd);
}