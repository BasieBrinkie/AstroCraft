import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static castingAddConsume as int[int][ILiquidStack][IIngredient][IItemStack] = {

};

static castingAdd as int[int][ILiquidStack][IIngredient][IItemStack] = {
	
};

static castingRemove as IItemStack[] = [

];

function init() {
	tConstruct.castingRemove(castingRemove);
	tConstruct.castingAdd(castingAddConsume, true);
	tConstruct.castingAdd(castingAdd, false);
}