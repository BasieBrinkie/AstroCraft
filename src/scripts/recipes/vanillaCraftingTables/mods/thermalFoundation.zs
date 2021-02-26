import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<thermalfoundation:tool.axe_steel:0>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>],
			[<ore:ingotSteel>, <ore:allStick>],
			[null, <ore:allStick>]
		]
	],
	<thermalfoundation:tool.hoe_steel:0>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>],
			[null, <ore:allStick>],
			[null, <ore:allStick>]
		]
	],	
	<thermalfoundation:tool.pickaxe_steel:0>: [
		[
			[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
			[null, <ore:allStick>, null],
			[null, <ore:allStick>, null]
		]
	],
	<thermalfoundation:tool.shovel_steel:0>: [
		[
			[<ore:ingotSteel>],
			[<ore:allStick>],
			[<ore:allStick>]
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