import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static electricFurnaceAdd as bool[IIngredient][IItemStack] = {

};

static electricFurnaceRemove as IItemStack[] = [

];

function init() {
	facTech.electricFurnaceRemoveAll();
	facTech.electricFurnaceAdd(electricFurnaceAdd);
}