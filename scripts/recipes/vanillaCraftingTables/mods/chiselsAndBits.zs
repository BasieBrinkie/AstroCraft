import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*	
	---------------
    Shaped Recipes.
    ---------------
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<chiselsandbits:bit_bag:0>: [
		[
			[<ore:wool>, <ore:wool>, <ore:wool>],
			[<ore:wool>, null, <ore:wool>],
			[<ore:wool>, <ore:wool>, <ore:wool>]
		]
	],
	<chiselsandbits:bitsaw_diamond:0>: [
		[
			[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
			[<ore:stickWood>, <ore:ingotIron>, <ore:ingotIron>]
		]
	],
	<chiselsandbits:chisel_stone:0>: [
		[
			[null, <ore:cobblestone>],
			[<ore:stickWood>, null]
		]
	],
	<chiselsandbits:chisel_iron:0>: [
		[
			[null, <ore:ingotIron>],
			[<ore:stickWood>, null]
		]
	],
	<chiselsandbits:positiveprint:0>: [
		[
			[<ore:paper>, <ore:paper>],
			[<ore:paper>, <ore:paper>]
		]
	],
	<chiselsandbits:wrench_wood:0>: [
		[
			[null, <ore:plankWood>, null],
			[<ore:plankWood>, <ore:stickWood>, null],
			[null, null, <ore:stickWood>]
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
	<chiselsandbits:negativeprint:0>: [
			[<chiselsandbits:positiveprint:0>, <actuallyadditions:item_crystal_shard:0>]
	],
	<chiselsandbits:mirrorprint:0>: [
		[<chiselsandbits:positiveprint:0>, <libvulpes:productplate:1>]	
	]
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