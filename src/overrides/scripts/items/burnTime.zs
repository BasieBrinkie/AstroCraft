import crafttweaker.item.IIngredient;

/* 
	-------------------------------------------------------------------------------------------------------
	Here you set how many items a ingredient can burn.

	[int] - How many items can it burn.
	IIngredient[] - all items that burn with its defined int.
	NOTE: don't specify the int in burn ticks but in amount of items, that require 200 burn ticks, to burn!!!
	-------------------------------------------------------------------------------------------------------
*/

static setBurnTime as IIngredient[][int] = {
	0: 	[
		<actuallyadditions:block_compost:0>,
		<actuallyadditions:block_fermenting_barrel:0>,
		<excompressum:uncompressed_coal:0>,
		<exnihilocreatio:block_barrel0:0>,
		<exnihilocreatio:block_sieve:0>,
		<skyresources:fusiontable:0>,
	],
	1: [
		<glacidus:underground_stick:0>,
	],
	3: [
		<glacidus:dead_lumicia:0>,
	]
};

function init() {
	itemProperties.setBurnTime(setBurnTime);
}