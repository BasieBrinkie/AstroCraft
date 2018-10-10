import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static burnTime as IIngredient[][int] = {
	0: [<tp:tiny_charcoal>]
};

static itemNames as string[IItemStack] = {
};

function init() {
	itemProperties.setBurnTime(burnTime);
	itemProperties.setName(itemNames);
}