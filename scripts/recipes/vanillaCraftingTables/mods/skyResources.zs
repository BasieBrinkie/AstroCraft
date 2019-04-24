import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	/*
	<skyresources:crucible:0>: [
		[
			[<minecraft:cobblestone:0>, null, <minecraft:cobblestone:0>], 
			[<minecraft:cobblestone:0>, null, <minecraft:cobblestone:0>],
			[<minecraft:cobblestone:0>,<minecraft:cobblestone:0>,<minecraft:cobblestone:0>]
		]
	],*/
	<skyresources:stonecuttingknife:0>: [
		[
			[<minecraft:stone:0>, <ore:stickTier1To2>, null], 
			[null, <minecraft:stone:0>, <ore:stickTier1To2>],
			[]
		],
		[
			[],
			[<minecraft:stone:0>, <ore:stickTier1To2>, null], 
			[null, <minecraft:stone:0>, <ore:stickTier1To2>]
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
	<skyresources:stonegrinder:0>: [
		[
			[<minecraft:stone:0>, null, null],
			[null, <ore:stickTier2>, null],
			[null, null, <ore:stickTier2>]
		]
	]
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
static furnaceRecipes as IIngredient[IItemStack] = {};


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