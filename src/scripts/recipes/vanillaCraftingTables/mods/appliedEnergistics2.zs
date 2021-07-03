import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<appliedenergistics2:crank:0>: [
		[
			[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
			[null, null, <ore:stickWood>],
			[null, null, <ore:stickWood>]
		]
	],
	<appliedenergistics2:grindstone:0>: [
		[
			[<ore:stone>, <ore:factoryTechShaft>, <ore:stone>],
			[<ore:stone>, <ore:factoryTechGear>, <ore:stone>],
			[<ore:stone>, <ore:stone>, <ore:stone>]
		]
	],
	<appliedenergistics2:sky_compass:0>: [
		[
			[null, <ore:plateSteel>, null],
			[<ore:plateSteel>, <factorytech:machinepart:111>, <ore:plateSteel>],
			[null, <ore:plateSteel>, null]
		]
	],
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