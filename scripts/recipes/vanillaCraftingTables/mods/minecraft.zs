import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:cobblestone:0>: [
		[
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>], 
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>],
			[<exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>, <exnihilocreatio:item_pebble:0>]
		]
	],
	<minecraft:stone_axe>: [
		[
			[<minecraft:stone:0>, <minecraft:stone:0>, null],
			[<minecraft:stone:0>, <evilcraft:dark_stick:0>, null],
			[null, <evilcraft:dark_stick:0>, null]

		]
	],
	<minecraft:wooden_pickaxe>: [
		[
			[<advancedrocketry:charcoallog:0>, <advancedrocketry:charcoallog:0>, <advancedrocketry:charcoallog:0>],
			[null, <evilcraft:dark_stick:0>, null],
			[null, <evilcraft:dark_stick:0>, null]
		]
	],
	<minecraft:furnace:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <ore:charcoal> | <ore:coal>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]

		]
	],
	<minecraft:coal:1>: [
		[
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, null, <actuallyadditions:item_misc:11>],
			[<actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>, <actuallyadditions:item_misc:11>]
		]
	],
	<minecraft:furnace:0>: [
		[
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:coal:1>, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>, <minecraft:cobblestone:0>, <minecraft:cobblestone:0>]
		]
	],
	<minecraft:stone_shovel>: [
		[
			[<minecraft:stick:0>],
			[<minecraft:stick:0>],
			[<minecraft:stone:0>]
		]
	],
	<minecraft:lever:0>: [
		[
			[<evilcraft:dark_stick:0>],
			[<minecraft:stone:0>],
			[]
		],
		[
			[],
			[<evilcraft:dark_stick:0>],
			[<minecraft:stone:0>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	-----------------
    Mirrored Recipes.
    -----------------
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*	
	------------------
    Shapeless Recipes.
    ------------------
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
	----------------
	Furnace Recipes.
	----------------
*/
static furnaceRecipes as IIngredient[][IItemStack] = {};


function init() {
	/* 	----------------
		Unnamed Recipes.
		----------------
	*/
	recipeBuilder.process(shapedRecipes, false);
    recipeBuilder.process(mirroredRecipes, true);
    recipeBuilder.processShapeless(shapelessRecipes);

	/*	--------------
		Named Recipes.
		--------------
	*/
	recipeBuilder.processNamed(namedShapedRecipes, false);
    recipeBuilder.processNamed(namedMirroredRecipes, true);
    recipeBuilder.processShapelessNamed(namedShapelessRecipes);

	/*	----------------
		Furnace Recipes.
		----------------
	*/
	recipeBuilder.processFurnace(furnaceRecipes);
}