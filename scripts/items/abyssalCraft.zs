import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static itemNames as string[IItemStack] = {
	<abyssalcraft:crystalfragment:4>: "Small Oxygen Crystal",
	<abyssalcraft:crystalshard:4>: "Oxygen Crystal",
	<abyssalcraft:crystalfragment:17>: "Small Copper Chunk",
	<abyssalcraft:crystalshard:17>: "Copper Chunk"
};

function init() {
	itemProperties.setName(itemNames);
}