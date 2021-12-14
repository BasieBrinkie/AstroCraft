import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<magneticraft:crushing_table:0>: [
		[
			[<glacidus:frozen_antinatric_stone>,<glacidus:frozen_antinatric_stone>,<glacidus:frozen_antinatric_stone>],
			[null, <ore:plankWood>, null],
			[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
		]
	],
	<magneticraft:stone_hammer:0>: [
		[
			[<glacidus:frozen_antinatric_stone:0>, <glacidus:frozen_antinatric_stone:0>, null],
			[<glacidus:frozen_antinatric_stone:0>, <ore:stickTier1>, <glacidus:frozen_antinatric_stone:0>],
			[null, <ore:stickTier1>, null],
		],
		[
			[<glacidus:thawed_antinatric_stone:0>, <glacidus:thawed_antinatric_stone:0>, null],
			[<glacidus:thawed_antinatric_stone:0>, <ore:stickTier1>, <glacidus:thawed_antinatric_stone:0>],
			[null, <ore:stickTier1>, null]
		],
		[
			[<ore:stone>, <ore:stone>, null],
			[<ore:stone>, <ore:stickTier1>, <ore:stone>],
			[null, <ore:stickTier1>, null]
		],
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