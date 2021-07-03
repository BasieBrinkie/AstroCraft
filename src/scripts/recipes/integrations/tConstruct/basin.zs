import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static basinAddConsume as int[int][ILiquidStack][IIngredient][IItemStack] = {
	//Rocket Builder
	<immersiveengineering:storage:4>: {
		<contenttweaker:astro_ice:0>: {
			<liquid:nickel>: {
				1296: 400
			}
		}
	},
	//Asteroids Resources 1
	<minecraft:iron_block:0>: {
		<contenttweaker:astro_ice:0>: {
			<liquid:iron>: {
				1296: 300
			}
		}
	},
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