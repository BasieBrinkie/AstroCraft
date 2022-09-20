import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	----------------------------------------------------------------------------------------------
	You can change the recipes of the factorytech centrifuge using the factorytech wrapper
	possible actions: 
	- add new recipes.
	- remove existing recipes.

	Add method:
	First [IItemStack] is output item.
	IItemStack[] is input items.
	----------------------------------------------------------------------------------------------
*/	

static addRecipe as IIngredient[][IItemStack] = {
	//planet_glacidus_spawn
	<botania:manaresource:3>: [
		<glacidus:dead_lumicia:0>,
	],
    <minecraft:cobblestone:0>: [
        <glacidus:frozen_antinatric_stone:0>,
		<glacidus:thawed_antinatric_stone:0>,
    ],
	<thermalfoundation:material:816>: [
		<glacidus:aurantiacus_flower:0>,
		<glacidus:crysial_flower:0>,
		<glacidus:solegia_flower:0>,
	]
};


static removeRecipe as IItemStack[] = [
	<minecraft:skull:0>,
	<minecraft:skull:2>,
	<minecraft:skull:4>,
];


function init() {
    mg.crushingTableAdd(addRecipe);
    mg.crushingTableRemove(removeRecipe);
}