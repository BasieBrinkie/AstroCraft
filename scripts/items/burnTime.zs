import crafttweaker.item.IIngredient;

/* 
	-------------------------------------------------------------------------------------------------------
	Here you set how many items a ingredient can burn.

	[int] - How many items can it burn.
	IIngredient[] - all items that burn with its defined int.
	NOTE: don't specify the int in burn ticks but in amount of items that require 200 burn ticks to burn!!!
	-------------------------------------------------------------------------------------------------------
*/

static setBurnTime as IIngredient[][int] = {
	0: 	[
		<excompressum:uncompressed_coal:0>
		]
};

function init() {
	itemProperties.setBurnTime(setBurnTime);
}