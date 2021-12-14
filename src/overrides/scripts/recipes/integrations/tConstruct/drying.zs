import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static dryingAdd as int[IIngredient][IItemStack] = {
	
};

static dryingRemove as IItemStack[] = [

];

function init() {
	tConstruct.dryingRemove(dryingRemove);
	tConstruct.dryingAdd(dryingAdd);
}