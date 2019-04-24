import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<advancedrocketry:platepress:0>: [
		[
			[<minecraft:planks:0>, <minecraft:planks:0>, <minecraft:planks:0>], 
			[<minecraft:stone:0>, <ore:nuggetCopperTier1> | <ore:ingotCopperTier1to5>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
		]
	],
	<advancedrocketry:oxygencharger:0>: [
		[
			[null, <skyresources:alchemyitemcomponent:1>, null],
			[<minecraft:stone:0>, <libvulpes:productplate:4>, <minecraft:stone:0>],
			[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
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