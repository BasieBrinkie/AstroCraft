import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static bloomeryAdd as IIngredient[][][IIngredient] = {
	
};

function init() {
	charPit.bloomeryRemoveAll();
	charPit.bloomeryAdd(bloomeryAdd);
}