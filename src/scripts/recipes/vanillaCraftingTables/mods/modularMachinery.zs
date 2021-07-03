import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<modularmachinery:blockcontroller:0>: [
		[
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>],
			[<ore:plateIron>, <factorytech:machinepart:150>, <ore:plateIron>],
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>]
		]
	],
    <modularmachinery:blockenergyinputhatch:0>: [
		[
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>],
			[<ore:plateIron>, <minecraft:redstone:0>, <ore:plateIron>],
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>]
		]
	],
    <modularmachinery:blockoutputbus:0>: [
        [
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>],
			[<ore:plateIron>, <factorytech:crate:0>, <ore:plateIron>],
			[<ore:plateIron>, <ore:blockSteel>, <ore:plateIron>]
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