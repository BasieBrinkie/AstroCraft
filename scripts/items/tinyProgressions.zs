import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static burnTime as IIngredient[][int] = {
	0: [<tp:tiny_charcoal>]
};

function init() {
	itemProperties.setBurnTime(burnTime);
}