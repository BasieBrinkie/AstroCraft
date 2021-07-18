import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<tconstruct:casting:0>: [
		[
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>]
		]
	],
	<tconstruct:casting:1>: [
		[
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:channel:0>: [
		[
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>],
			[<tconstruct:materials:0>, <tconstruct:materials:0>, <tconstruct:materials:0>]
		]
	],
	<tconstruct:faucet:0>: [
		[
			[<tconstruct:materials:0>, null, <tconstruct:materials:0>],
			[null, <tconstruct:materials:0>, null]
		]
	],
	<tconstruct:throwball:1>: [
		[
			[null, <immersiveengineering:material:17>, null],
			[<immersiveengineering:material:17>, <techguns:explosive_charge:1>, <immersiveengineering:material:17>],
			[null, <immersiveengineering:material:17>, null]
		]
	],
	<tconstruct:tooltables:0>: [
		[
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
			[<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>],
			[<ore:plankWood>, null, <ore:plankWood>]
		]
	],
	<tconstruct:wooden_hopper:0>: [
		[
			[<ore:plankWood>, null, <ore:plankWood>],
			[<ore:plankWood>, <ore:chest>, <ore:plankWood>],
			[null, <ore:plankWood>, null]
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
static furnaceRecipes as IIngredient[][IItemStack] = {
	<tconstruct:materials:0> * 2: [
		<tconstruct:soil:0>
	]
};


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