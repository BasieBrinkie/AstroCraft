import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<charcoal_pit:bloomery_hatch:0>: [
		[
			[<ore:plankWood>, <ore:stone>, <ore:plankWood>],
			[<ore:stickWood>, <ore:stone>, <ore:stickWood>],
			[<ore:plankWood>, <ore:stone>, <ore:plankWood>]
		]
	],
	<charcoal_pit:fire_starter:0>: [
		[
			[null, null, <ore:stickWood>],
			[null, <ore:stickWood>, <ore:coal> | <ore:charcoal>],
			[<ore:stickWood>, <ore:stickWood>, <ore:stone>]
		]
	],
	<charcoal_pit:log_pile:0>: [
		[
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>], 
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>],
			[<ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>, <ore:logWood> | <advancedrocketry:charcoallog:0>]
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