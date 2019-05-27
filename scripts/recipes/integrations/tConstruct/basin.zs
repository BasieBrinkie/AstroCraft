import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static basinAddConsume as int[ILiquidStack][IIngredient][IItemStack] = {

};

static basinAdd as int[ILiquidStack][IIngredient][IItemStack] = {
	<immersiveengineering:storage:4>: {
		null: {
			<liquid:nickel>: 1000
		}
	},
	<minecraft:iron_block:0>: {
		null: {
			<liquid:iron>: 1000
		}
	}
};

static basinRemove as IItemStack[] = [

];

function init() {
	tConstruct.basinRemove(basinRemove);
	tConstruct.basinAdd(basinAddConsume, true);
	tConstruct.basinAdd(basinAdd, false);
}