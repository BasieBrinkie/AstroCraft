import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static basinAddConsume as int[int][ILiquidStack][IIngredient][IItemStack] = {
	<minecraft:iron_block:0>: {
		<minecraft:packed_ice:0>: {
			<liquid:iron>: {
				1296: 300
			}
		}
	},
	<immersiveengineering:storage:4>: {
		<minecraft:packed_ice:0>: {
			<liquid:nickel>: {
				1296: 400
			}
		}
	}
};

static basinAdd as int[int][ILiquidStack][IIngredient][IItemStack] = {

};

static basinRemove as IItemStack[] = [
	<minecraft:iron_block:0>
];

function init() {
	tConstruct.basinRemove(basinRemove);
	tConstruct.basinAdd(basinAddConsume, true);
	tConstruct.basinAdd(basinAdd, false);
}