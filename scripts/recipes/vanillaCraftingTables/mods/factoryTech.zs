import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<factorytech:grindstone:0>: [
		[
			[<ore:stone>, null, null], 
			[<ore:plankWood>, <ore:factoryTechShaft>, <ore:stone>],
			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]
	],
	<factorytech:machinepart:10>: [
		[
			[null, <minecraft:cobblestone:0>, null],
			[<minecraft:cobblestone:0>, <ore:stone>, <minecraft:cobblestone:0>],
			[null, <minecraft:cobblestone:0>, null]
		]
	],
	<factorytech:machinepart:60>: [
		[
			[<ore:nuggetIron>, <ore:nuggetIron>, null],
			[<ore:clumpCopper>, <ore:nuggetIron>, <ore:factoryTechShaft>],
			[<ore:nuggetIron>, <ore:nuggetIron>, null]
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