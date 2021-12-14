import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

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

static addRecipe as IItemStack[][IItemStack] = {
	//planet_glacidus_spawn
	<glacidus:dead_lumicia:0>: [
		<glacidus:underground_stick:0> * 2,
		<botania:manaresource:3>
	],
    <minecraft:cobblestone:0>: [
        <glacidus:frozen_antinatric_stone:0>,
		<glacidus:thawed_antinatric_stone:0>,
    ],
};

static addOredictRecipe as IOreDictEntry[][IItemStack] = {
};

static removeRecipe as IItemStack[] = [
	<minecraft:skull:0>,
	<minecraft:skull:2>,
	<minecraft:skull:4>,

];


function init() {
    mg.crushingTableAdd(addRecipe);
    mg.crushingTableAddOredict(addOredictRecipe);
    mg.crushingTableRemove(removeRecipe);
}